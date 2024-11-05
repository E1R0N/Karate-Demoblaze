# Proyecto API Rest con Karate, Cucumber y Gradle
Este proyecto contiene pruebas automatizadas para servicios REST utilizando Karate Framework y Cucumber, facilitando la ejecución de pruebas y la generación de informes.

## Prerequisitos
Para configurar y ejecutar el proyecto en tu máquina local, asegúrate de tener instaladas las siguientes dependencias:

- **Sistema Operativo:** Windows 10 o Windows 11
- **IDE:** IntelliJ IDEA versión 2023.1
- **JDK:** versión 1.8 (debe estar configurado en la variable de entorno JAVA_HOME)
- **Gradle:** versión 7.6.1 (se puede utilizar el wrapper proporcionado)

## Tecnologías Utilizadas
- **Karate Framework:** Versión 1.2.0, utilizado para la ejecución de pruebas API REST.
- **Cucumber:** Versión 7.13.0, permite la escritura de casos de prueba en formato BDD utilizando Gherkin.
- **JUnit 5:** Versión 5.9.3, para la ejecución de pruebas unitarias y de integración.
- **Apache Commons:** Utilizado para diversas utilidades en la manipulación de archivos (IO) y operaciones matemáticas (Math3).
- **Google Guava:** Versión 28.2-jre, biblioteca de utilidades para Java.
- **Noggit:** Versión 0.8, una biblioteca para la manipulación de JSON en Java.

## Características Principales
- **Automatización de pruebas REST:** Con Karate Framework, es fácil escribir y ejecutar pruebas para servicios API REST.
- **Integración con Cucumber:** Las pruebas están escritas en formato BDD con Gherkin, lo que hace que sean fácilmente legibles y mantenibles.
- **Modularidad:** Separación clara entre las configuraciones de test, runners, y las definiciones de las pruebas.
- **Escalabilidad:** El proyecto está preparado para escalar a medida que se agreguen más casos de prueba.
- **Informes Automáticos:** Karate genera informes detallados después de cada ejecución de prueba.

## Cómo Ejecutar el Proyecto
Para descargar las dependencias y compilar el proyecto, sigue los siguientes pasos:

### 1. Clonar el repositorio:

```bash
git clone https://github.com/E1R0N/Karate-Demoblaze.git
cd Karate-Demoblaze
```
### 2. Ejecutar el archivo build.gradle:
El archivo build.gradle contiene la configuración de las dependencias y tareas necesarias para ejecutar las pruebas.

Para descargar todas las dependencias y compilar el proyecto, ejecuta el siguiente comando desde la raíz del proyecto:

```bash
./gradlew build
```
Este comando descargará todas las dependencias, verificará la integridad del proyecto y generará los artefactos necesarios.

### 3. Ejecutar las pruebas con Gradle:
Una vez que el proyecto esté compilado y listo, puedes ejecutar todas las pruebas automatizadas con el siguiente comando:

```bash
./gradlew clean test
```
El comando clean elimina los archivos generados previamente y el comando test ejecuta todas las pruebas de Karate integradas con Cucumber.

### 4. Ver los reportes de pruebas:
Después de ejecutar las pruebas, puedes visualizar los reportes detallados generados por Karate en la siguiente ruta:

```bash
target/cucumber-html-reports
```

## Información Adicional
- **Drivers y configuración adicional:** Si tu proyecto interactúa con algún servicio que requiera configuraciones de red o dependencias externas, asegúrate de tener los drivers adecuados y configurar las propiedades necesarias en karate-config.js.

- **Estructura del proyecto:** El proyecto está modularizado para facilitar la creación y mantenimiento de nuevas pruebas. Se recomienda seguir esta estructura a medida que el proyecto crezca.
