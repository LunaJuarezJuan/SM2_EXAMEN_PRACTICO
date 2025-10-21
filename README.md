SM2_EXAMEN_PRACTICO
📘 Curso: Solucioines Moviles II

Móviles II

👤 Alumno:

[Juan Brendon Luna Juarez]

📅 Fecha:

21 de octubre de 2025

🌐 Repositorio GitHub:

https://github.com/LunaJuarezJuan/SM2_EXAMEN_PRACTICO

Descripción del Proyecto

Aplicación móvil desarrollada en Flutter (MVVM) que implementa un sistema de control de acceso mediante NFC y ahora incluye la funcionalidad de historial de inicios de sesión para usuarios autenticados.

Historia de Usuario Implementada

Como usuario autenticado, quiero ver un historial de mis inicios de sesión, para saber cuándo y desde qué dispositivo accedí a mi cuenta.

Criterios de Aceptación

Se registra el usuario, la fecha, hora e IP al iniciar sesión.

En la vista “Historial de inicios de sesión”, el usuario puede visualizar sus accesos previos.

Los registros están ordenados del más reciente al más antiguo.

Funcionalidades Clave

Registro automático del inicio de sesión con fecha/hora/IP.

Visualización del historial de accesos en una lista ordenada.

Integración con backend Node.js y base de datos MongoDB.

Persistencia en la nube (Render.com).

Arquitectura MVVM con Provider.

Evidencias del APP

Login con registro de IP

Pantalla de historial de inicios

Orden descendente de accesos# 📱 Acees Group - Sistema de Control de Acceso NFC

Sistema completo de control de acceso con tecnología NFC desarrollado en Flutter con arquitectura MVVM.

## 🏗️ Arquitectura del Proyecto

```
📁 Acees_Group/
├── 📱 lib/                     # App Flutter (Frontend)
├── 🌐 backend/                 # API REST (Node.js + Express)
├── ⚙️ railway.toml            # Configuración Railway
├── 🚀 start-backend.sh        # Script de desarrollo
└── 📚 RAILWAY_DEPLOY.md       # Guía de despliegue
```



