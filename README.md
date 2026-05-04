# 📱 Barcode Scanner App (Flutter)

Aplicativo desenvolvido em Flutter para leitura de **QR Code** e **códigos de barras**, utilizando a câmera do dispositivo.

---

## 🚀 Funcionalidades

* 📷 Leitura de QR Code
* 📦 Leitura de código de barras
* ⚡ Detecção rápida em tempo real
* 🔁 Evita leituras duplicadas
* 🧩 Widget reutilizável para qualquer projeto

---

## 🛠️ Tecnologias utilizadas

* Flutter
* Dart
* mobile_scanner

---

## 📦 Dependências

Adicione no `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  mobile_scanner: ^3.5.5
```

---

## 📁 Estrutura do projeto

```
lib/
 ├── scanner/
 │    └── barcode_scanner_widget.dart
 └── main.dart
```

---

## ▶️ Como executar o projeto

### 1. Clone o repositório

```bash
git clone <url-do-repositorio>
```

---

### 2. Acesse a pasta do projeto

```bash
cd barcode_scanner_app
```

---

### 3. Instale as dependências

```bash
flutter pub get
```

---

### 4. Execute o projeto

```bash
flutter run
```

---

## 📱 Permissões necessárias

### Android

No arquivo:

```
android/app/src/main/AndroidManifest.xml
```

Adicione:

```xml
<uses-permission android:name="android.permission.CAMERA"/>
```

---

## 🧠 Como usar o scanner

O scanner foi desenvolvido como um **widget reutilizável**:

```dart
BarcodeScannerWidget(
  onDetect: (code) {
    print('Código detectado: $code');
  },
)
```

---

## 🔧 Possíveis melhorias

* 🔦 Adicionar botão de flash
* 🔄 Alternar câmera (frontal/traseira)
* 💾 Salvar códigos localmente
* ☁️ Integração com backend/API
* 📜 Histórico de leituras

---

## ⚠️ Observações importantes

* Evite usar **acentos no caminho do projeto**
* Execute os comandos sempre na pasta que contém o `pubspec.yaml`

---

## 📄 Licença

Este projeto é livre para uso e modificação.

---

## 🙌 Autor

CORRÊA, A.J.C.

Desenvolvido com Flutter 🚀
