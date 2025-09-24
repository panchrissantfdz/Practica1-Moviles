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

<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/26ca3030-a290-403b-934e-f84a97ccb0c5" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/2e567908-9751-4e65-98d5-24b684a27705" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/25c42206-778a-49b4-a983-8ea7b2cc41dd" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/4af4249b-29e2-47af-abb1-0d9c8e6e2bce" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/c2debdbe-4b95-4f21-a516-5266ebd90958" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/0ac0625f-ec35-4c5b-8644-78f9fff33090" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/0f1dd6a5-0c78-4770-8879-b072f5b3d0a4" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/6dcd9c6e-7af7-4653-9e42-f27c57615214" />
<img width="1206" height="2622" alt="Image" src="https://github.com/user-attachments/assets/3221e9d4-a27a-480a-8e38-a97b50f5e1e9" />

*Nota: Reemplaza los enlaces de las imágenes con las URLs reales de tus capturas de pantalla.*

---

## 🚀 Cómo Ejecutar el Proyecto

1.  Clona el repositorio en tu máquina local.
2.  Abre el proyecto en **Visual Studio Code**
3.  Ejecuta `flutter pub get` en la terminal para obtener las dependencias.
4.  Ejecuta la aplicación con `flutter run`.

---
