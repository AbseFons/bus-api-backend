# Bus API - Reto Técnico FullStack 🚌

API REST desarrollada con Java 17 y Spring Boot 3 diseñada para la gestión eficiente de buses, marcas y su persistencia.

---------------------------------------------------------
1. FUNCIONALIDADES
---------------------------------------------------------
* Listado de buses: Consulta paginada para optimizar el rendimiento.
* Detalle de bus: Obtención de información específica por ID.
* Seguridad: Implementación de Spring Security con autenticación básica.
* Persistencia: Gestión de datos relacionales en PostgreSQL (Buses <-> Marcas).
* Containerización: Entorno de base de datos listo para usar con Docker.

---------------------------------------------------------
2. TECNOLOGÍAS UTILIZADAS
---------------------------------------------------------
* Java 17
* Spring Boot 3
* Spring Data JPA
* Spring Security
* PostgreSQL
* Docker

---------------------------------------------------------
3. ESTRUCTURA DEL PROYECTO
---------------------------------------------------------
* controller: Definición de endpoints REST.
* service: Implementación de la lógica de negocio.
* repository: Interfaces de acceso a datos (JPA).
* entity: Modelos de dominio y mapeo de tablas.
* dto: Objetos de transferencia de datos.
* config: Configuraciones globales (Seguridad, CORS).

---------------------------------------------------------
4. REQUISITOS PREVIOS
---------------------------------------------------------
* Java 17 o superior.
* Maven.
* Docker y Docker Compose.

---------------------------------------------------------
5. CONFIGURACIÓN Y EJECUCIÓN
---------------------------------------------------------

Levantar PostgreSQL con Docker:
Ejecutar en la raíz del proyecto:
'$ docker compose up -d'

Datos de la Base de Datos:
- Host: localhost
- Puerto: 5432
- Base de datos: busdb
- Usuario: postgres
- Contraseña: postgres

Ejecutar la Aplicación:
(Linux/macOS): ./mvnw spring-boot:run
(Windows):     mvnw.cmd spring-boot:run

La API estará disponible en: http://localhost:8080

---------------------------------------------------------
6. ENDPOINTS
---------------------------------------------------------
* GET /bus?page=0&size=5 -> Obtener lista paginada.
* GET /bus/{id}          -> Obtener bus por ID.

SEGURIDAD (Basic Auth):
- Usuario: admin
- Contraseña: 123456

---------------------------------------------------------
7. AUTOR
---------------------------------------------------------
Abner Fonseca
Desarrollador FullStack