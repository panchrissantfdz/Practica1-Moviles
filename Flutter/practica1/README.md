# 📱 Flutter UI Elements App

Este proyecto es una aplicación móvil desarrollada en Flutter que sirve como una demostración de los principales elementos de la interfaz de usuario (UI) en el ecosistema de Android, utilizando las equivalencias de widgets de Flutter. El objetivo es mostrar cómo se estructuran y se manejan las transiciones entre diferentes "pantallas" (similares a Activities) y componentes reutilizables (similares a Fragments) en una única `Activity` principal.

---

## 🚀 Funcionalidades

La aplicación cuenta con una navegación simple a través de una barra de navegación inferior (`BottomNavigationBar`) que permite al usuario explorar cinco "fragmentos" diferentes, cada uno enfocado en un tipo específico de widget de UI:

1.  **TextFields (EditText):** Muestra ejemplos de campos de texto y una demostración interactiva de cómo capturar la entrada del usuario.
2.  **Buttons (Button, ImageButton):** Presenta varios tipos de botones (elevado, de texto, con ícono) y su uso para ejecutar acciones.
3.  **Selection Elements (CheckBox, RadioButton, Switch):** Demuestra cómo usar elementos de selección para opciones múltiples, únicas o de estado binario.
4.  **Lists (RecyclerView o ListView):** Explica y muestra la implementación de un `ListView.builder` para renderizar listas de elementos de manera eficiente.
5.  **Information Elements (TextView, ImageView, ProgressBar):** Ejemplifica el uso de widgets para mostrar información estática e indicar el progreso de una tarea.

---

## 🖼️ Capturas de Pantalla

Aquí puedes insertar capturas de pantalla de la aplicación en funcionamiento para cada una de las secciones. Asegúrate de que sean claras y muestren tanto la interfaz estática como la interactiva.


*Pantalla de TextFields*


*Pantalla de Botones*


*Pantalla de Elementos de Selección*


*Pantalla de Listas*


*Pantalla de Elementos de Información*

---

## 🛠️ Cómo Ejecutar el Proyecto

Sigue estos pasos para clonar el repositorio y ejecutar la aplicación en tu máquina local.

### Requisitos Previos

-   Flutter SDK instalado (versión 3.x.x o superior).
-   Un editor de código como **VS Code** o **Android Studio** con el plugin de Flutter.
-   Un emulador o dispositivo físico Android o iOS conectado.

### Pasos

1.  **Clona el repositorio:**
    ```bash
    git clone [URL_DEL_REPOSITORIO]
    ```

2.  **Navega al directorio del proyecto:**
    ```bash
    cd ui_elements_app
    ```

3.  **Obtén las dependencias:**
    ```bash
    flutter pub get
    ```

4.  **Ejecuta la aplicación:**
    ```bash
    flutter run
    ```

---

## 🧠 Dificultades y Hallazgos

### Dificultades Encontradas

* **Diferencias Conceptuales:** La principal dificultad fue adaptar la mentalidad de "Activities y Fragments" a la estructura de widgets de Flutter. En lugar de usar un `FragmentManager`, la navegación se maneja con el estado del `StatefulWidget` principal (`HomePage`) y el cambio de widgets en el cuerpo del `Scaffold`.
* **Gestión de Estado:** Asegurar que los "fragments" (`StatefulWidget`s) mantuvieran su estado (ej., el texto en los `TextFields` o el progreso en la `ProgressBar`) al cambiar de pestaña requirió que los widgets fueran instancias únicas almacenadas en una lista (`_fragments`).

### Hallazgos Clave

* **Los Widgets son la Clave:** En Flutter, todo es un widget. Esta simplicidad es poderosa y permite crear interfaces de usuario complejas y modulares de manera más sencilla. La equivalencia de un **Activity** es un `Widget` de pantalla completa, y la de un **Fragment** es un `Widget` más pequeño que se incrusta en otro.
* **La Navegación es el Manejo de Estado:** La transición entre "fragments" no se hace con una pila de navegación tradicional, sino simplemente cambiando el widget que se muestra en el `body` del `Scaffold`, controlado por el índice de la barra de navegación. Esto resulta en una experiencia de usuario fluida sin la sobrecarga de la gestión de múltiples actividades.
* **Modularidad de Código:** Al separar cada sección de UI en un archivo de fragmento independiente, el código se vuelve mucho más limpio y fácil de mantener. Esto es una práctica recomendada en Flutter.

---