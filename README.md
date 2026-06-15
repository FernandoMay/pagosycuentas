# Pagos y Cuentas

Aplicación de gestión de cuentas por pagar y administración de gastos empresariales. Prototipo UI para flujo de pagos a proveedores en contexto mexicano.

## Stack

| Capa | Tecnología |
|------|-----------|
| Framework | Flutter 3.x / Dart 3.x |
| Diseño | Material 3 + Cupertino (híbrido) |
| CI/CD | GitHub Actions (analyze + test + build APK) |
| PWA | Service worker + manifest |

## Funcionalidades

- Lista de cuentas por pagar con datos de proveedor (hardcoded)
- Tabla expandible por proveedor: concepto, monto, pago parcial
- Cuentas de origen (BANORTE, BBVA) con saldos disponibles
- Selección de pago con cheque
- Botones Cancelar / Pagar con estilos personalizados
- Barra de navegación Cupertino con paleta azul/gris personalizada
- Constantes de color y estilos de texto centralizados

## Estructura

```
lib/
├── main.dart           # Entry point + tema Material 3
├── cuentas.dart        # Pantalla principal + botones
├── pagos.dart          # Widgets Pagos + TablaT (detalle)
└── constants.dart      # Colores y TextStyles
```

## Inicio rápido

```bash
flutter pub get
flutter run
```

## Pruebas

```bash
flutter test
flutter analyze
```

## Notas

- Prototipo UI estático — sin backend, sin estado, sin navegación real
- Datos hardcoded de ejemplo mexicano (AUTOTRANSPORTES MISIONEROS, etc.)
- Sin dependencias de terceros (solo Flutter SDK + cupertino_icons)
- Compatible con PWA
