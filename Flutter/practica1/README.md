# 📱 UI Elements Demo App

Este proyecto es una aplicación **Flutter** que sirve como un catálogo interactivo para demostrar el uso de varios componentes de la interfaz de usuario (UI) en Flutter, utilizando el concepto de **Widgets**. La aplicación está diseñada para ser una herramienta educativa que muestra ejemplos visuales y funcionales de los elementos más comunes.

## 🌟 Características

* **1 Pantalla principal:** `main.dart` gestiona la navegación entre las diferentes pantallas de demostración.
* **5 Widgets de pantalla:** Cada uno dedicado a una categoría de elementos de UI.
* **Navegación:** Una `BottomNavigationBar` intuitiva para cambiar fácilmente entre las diferentes secciones.
* **Ejemplos interactivos:** Cada widget incluye una demostración práctica donde el usuario puede interactuar con los elementos.

---

## 🏗️ Estructura del Proyecto

El proyecto está organizado en una estructura clara dentro de la carpeta `lib`.

### Carpeta `lib`

* **`main.dart`**: El punto de entrada de la aplicación. Configura la estructura principal y la navegación.
* **`fragments/`**: Carpeta que contiene los archivos para cada pantalla de demostración.

---

## 🧩 Widgets de Pantalla Detallados

A continuación, se detalla cada widget de pantalla y los archivos que lo componen, con una breve descripción de su propósito.

### 1. Text Fields (TextFormField)
* **Descripción**: Muestra diferentes tipos de campos de texto (`TextFormField`) para la entrada de datos, como texto simple, contraseñas, correos electrónicos y números. Incluye una demostración donde el usuario puede ingresar texto y ver un `SnackBar` con el resultado.
* **Archivo**:
    * `fragments/text_fields_fragment.dart`

### 2. Botones (ElevatedButton, IconButton)
* **Descripción**: Explica y demuestra los tipos de botones más comunes en Flutter. Muestra un `ElevatedButton` con texto y un `IconButton` con un ícono. Al hacer clic en cualquiera de ellos, aparece un mensaje `SnackBar`.
* **Archivo**:
    * `fragments/buttons_fragment.dart`

### 3. Elementos de Selección (Checkbox, Radio, Switch)
* **Descripción**: Demuestra los widgets de UI utilizados para selecciones. Incluye un `Checkbox` para opciones múltiples, un grupo de `Radio` para selección única y un `Switch` para un estado binario (on/off).
* **Archivo**:
    * `fragments/selection_elements_fragment.dart`

### 4. Listas (ListView.builder)
* **Descripción**: Muestra cómo utilizar un `ListView.builder` para crear listas eficientes y desplazables. Se incluye una lista de datos de ejemplo para poblar el `ListView`.
* **Archivo**:
    * `fragments/lists_fragment.dart`

### 5. Elementos de Información (Text, Image, ProgressIndicator)
* **Descripción**: Presenta widgets de UI utilizados para mostrar información al usuario. Incluye un `Text` para texto, un `Image` para imágenes estáticas y un `LinearProgressIndicator` con una demostración interactiva que simula una carga.
* **Archivo**:
    * `fragments/information_elements_fragment.dart`

---

## 🎨 Visuales de la Aplicación

Aquí puedes agregar capturas de pantalla de tu aplicación para que otros puedan ver cómo se ve en acción.

![Captura de pantalla de la pantalla Text Fields](https://i.imgur.com/your_textfields_screenshot.png)
![Captura de pantalla de la pantalla Buttons](https://i.imgur.com/your_buttons_screenshot.png)
![Captura de pantalla de la pantalla Selection](https://i.imgur.com/your_selection_screenshot.png)

*Nota: Reemplaza los enlaces de las imágenes con las URLs reales de tus capturas de pantalla.*

---

## 🚀 Cómo Ejecutar el Proyecto

1.  Clona el repositorio en tu máquina local.
2.  Abre el proyecto en **Visual Studio Code**
3.  Ejecuta `flutter pub get` en la terminal para obtener las dependencias.
4.  Ejecuta la aplicación con `flutter run`.

---
