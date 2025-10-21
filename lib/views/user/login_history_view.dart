import 'package:flutter/material.dart';
import '../../services/api_service.dart';
import '../../models/login_history_model.dart';

class LoginHistoryView extends StatefulWidget {
  final String userId;
  const LoginHistoryView({required this.userId});

  @override
  _LoginHistoryViewState createState() => _LoginHistoryViewState();
}

class _LoginHistoryViewState extends State<LoginHistoryView> {
  final ApiService _api = ApiService();
  List<LoginHistoryModel> _history = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    setState(() => _loading = true);
    try {
      final data = await _api.getLoginHistory(widget.userId);
      setState(() => _history = data);
    } catch (e) {
      debugPrint('Error cargando historial: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error cargando historial')));
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Historial de inicios de sesión')),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadHistory,
              child: _history.isEmpty
                  ? ListView(
                      children: [
                        SizedBox(height: 80),
                        Center(child: Text('No hay registros de inicio de sesión')),
                      ],
                    )
                  : ListView.builder(
                      itemCount: _history.length,
                      itemBuilder: (context, index) {
                        final item = _history[index];
                        return ListTile(
                          leading: Icon(Icons.login),
                          title: Text(item.email),
                          subtitle: Text('${item.ipAddress} • ${item.userAgent}'),
                          trailing: Text(
                            '${item.timestamp.toLocal()}',
                            style: TextStyle(fontSize: 12),
                          ),
                        );
                      },
                    ),
            ),
    );
  }
}
