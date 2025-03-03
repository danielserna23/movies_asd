# movies_asd

Descripción breve de la aplicación y su propósito.

## Arquitectura

Esta aplicación utiliza la arquitectura **Clean Architecture** para lograr una mejor separación de responsabilidades, facilitar las pruebas y mejorar la mantenibilidad.

## Características Principales

* **Películas en Tendencia:** Explora una lista actualizada de las películas más populares del momento.
* **Búsqueda de Películas:** Encuentra rápidamente cualquier película utilizando la barra de búsqueda.
* **Detalles de Películas:** Obtén información detallada sobre cada película, incluyendo sinopsis, reparto, puntuaciones y más.
* **Favoritos:** Guarda tus películas favoritas en una lista personalizada para acceder a ellas fácilmente en cualquier momento.
* **Compartir Películas:** comparte información de las películas con tus contactos.
* **Tema Claro/Oscuro:** Personaliza la apariencia de la aplicación con temas claros u oscuros.


### Decisiones Técnicas y Justificación

* **Clean Architecture**: Se eligió esta arquitectura para desacoplar las capas de la aplicación, lo que permite que los cambios en la interfaz de usuario o en la capa de datos tengan un impacto mínimo en la lógica de negocio.
* **Capas**: La aplicación está dividida en las siguientes capas:
    * **Domain**: Contiene las entidades, casos de uso e interfaces de repositorios. Es independiente de cualquier framework o librería externa.
    * **Data**: Contiene la implementación de los repositorios y la lógica de acceso a datos (API, base de datos local, etc.).
    * **Presentation**: Contiene la interfaz de usuario y la lógica de presentación (providers).
* **.env**: Se utiliza un archivo `.env` para almacenar la clave de API. Esto permite mantener la información confidencial fuera del código fuente.
* **Hive**: Se utiliza Hive como base de datos local para almacenar datos de forma eficiente.
* **json_serializable**: Se utiliza `json_serializable` para generar código de serialización y deserialización de JSON, lo que simplifica la interacción con la API.
* **API de The Movie DB**: La aplicación utiliza la API de The Movie DB (URL: [https://developer.themoviedb.org/docs/getting-started](https://developer.themoviedb.org/docs/getting-started)) para obtener información sobre películas.


### Justificación de las Librerías

* **hive_ce_generator**: Para generar el código necesario para usar Hive de forma eficiente y segura.
* **json_serializable**: Para generar código de serialización y deserialización de JSON, lo que simplifica la interacción con la API.
* **build_runner**: Para ejecutar los generadores de código de Hive y `json_serializable`.
* **flutter_staggered_grid_view:** Permite crear grillas dinámicas y visualmente atractivas para mostrar las películas, mejorando la experiencia de usuario.
* **freezed:** Facilita la creación de clases de datos inmutables, reduciendo el código boilerplate y mejorando la seguridad del tipo.
* **intl:** Permite formatear fechas y números de manera consistente, adaptándose a las preferencias de idioma del usuario.
* **go_router:** Simplifica la gestión de la navegación en la aplicación, permitiendo una navegación declarativa y basada en rutas.
* **share_plus:** Permite a los usuarios compartir fácilmente información sobre las películas con sus contactos.
* **shared_preferences:** Permite almacenar las preferencias del usuario, como el tema claro u oscuro, para personalizar la experiencia de la aplicación.
* **flutter_bloc:** Para la gestión del estado de la aplicación
* **http:** Para realizar peticiones HTTP
* **flutter_dotenv:** Para cargar variables de entorno desde el archivo `.env`
* **animate_do:** Para realizar animaciones en imágenes y textos

## Instrucciones de Configuración

1.  **Clonar el repositorio:**

    ```bash
    git clone <URL_del_repositorio>
    cd <nombre_de_la_aplicacion>
    ```

2.  **El archivo `.env`:**

    * Copiar el archivo `.env,template` y renombrarlo a `.env`
    * Agrega la clave de API y otras variables de entorno necesarias:

        ```
        THE_MOVIEDB_KEY=tu_clave_de_api
        ```

3.  **Obtener las dependencias:**

    ```bash
    flutter pub get
    ```

4.  **Generar el código de Hive y json_serializable:**

    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

## Instrucciones de Ejecución

1.  **Conectar un dispositivo o emulador:**

    * Asegúrate de tener un dispositivo físico conectado o un emulador configurado.

2.  **Ejecutar la aplicación:**

    ```bash
    flutter run
    ```

## Estructura de Carpetas

lib/
├── app/
│   ├── config/
│   │   ├── routes/
│   │   ├── theme/
│   │   └── utils/
│   ├── data/
│   │   ├── api_source/
│   │   ├── repositories/
│   │   └── services/
│   ├── domain/
│   │   ├── failures/
│   │   ├── models/
│   │   ├── repositories/
│   │   ├── result/
│   │   └── use_cases/
│   └── presentation/
│       ├── providers/
│       ├── responsive/
│       ├── screens/
│       └── widgets/
└── main.dart