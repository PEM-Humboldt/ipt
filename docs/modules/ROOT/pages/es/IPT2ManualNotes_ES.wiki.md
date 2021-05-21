# Manual del Usuario del IPT

**Versión del IPT: 2.3**

# Tabla de contenidos
+ [[Introducción|IPT2ManualNotes_ES.wiki#introducción]]
  + [[Acerca del IPT de GBIF|IPT2ManualNotes_ES.wiki#acerca-del-ipt-de-gbif]]
  + [[¿Cómo usar este manual?|IPT2ManualNotes_ES.wiki#cómo-usar-este-manual]]
+ [[Guía de Instalación|IPT2ManualNotes_ES.wiki#guía-de-instalación]]
  + [[Requerimientos|IPT2ManualNotes_ES.wiki#requerimientos]]
    + [[Conexión a Internet|IPT2ManualNotes_ES.wiki#conexión-a-internet]]
    + [[URL fija|IPT2ManualNotes_ES.wiki#url-fija]]
    + [[Memoria|IPT2ManualNotes_ES.wiki#memoria]]
    + [[Espacio en disco|IPT2ManualNotes_ES.wiki#espacio-en-disco]]
    + [[Java|IPT2ManualNotes_ES.wiki#java]]
    + [[Contenedor de servlet|IPT2ManualNotes_ES.wiki#contenedor-de-servlet]]
  + [[Instalación del IPT|IPT2ManualNotes_ES.wiki#instalación-del-ipt]]
    + [[Preparar el Servidor|IPT2ManualNotes_ES.wiki#preparar-el-servidor]]
    + [[Descargar el IPT|IPT2ManualNotes_ES.wiki#descargar-el-ipt]]
    + [[Desplegar el IPT en el contenedor de servlet|IPT2ManualNotes_ES.wiki#desplegar-el-ipt-en-el-contenedor-de-servlet]]
    + [[Ejecutar la aplicación del IPT|IPT2ManualNotes_ES.wiki#ejecutar-la-aplicación-del-ipt]]
  + [[Configuración inicial del IPT|IPT2ManualNotes_ES.wiki#configuración-inicial-del-ipt]]
    + [[Configuración del IPT I|IPT2ManualNotes_ES.wiki#configuración-del-ipt-i]]
    + [[Configuración del IPT II|IPT2ManualNotes_ES.wiki#configuración-del-ipt-ii]]
  + [[Reiniciar el IPT|IPT2ManualNotes_ES.wiki#reiniciar]]
+ [[Guía de referencia rápida|IPT2ManualNotes_ES.wiki#guía-de-referencia-rápida]]
  + [[Antes de iniciar|IPT2ManualNotes_ES.wiki#antes-de-iniciar]]
  + [[Características comunes|IPT2ManualNotes_ES.wiki#características-comunes]]
    + [[Controles de la interfaz del usuario|IPT2ManualNotes_ES.wiki#controles-de-la-interfaz-del-usuario]]
      + [[Carga de archivos|IPT2ManualNotes_ES.wiki#carga-de-archivos]]
    + [[Controles que aparecen en todas las páginas|IPT2ManualNotes_ES.wiki#controles-que-aparecen-en-todas-las-páginas]]
      + [[Encabezado|IPT2ManualNotes_ES.wiki#encabezado]]
      + [[Pie de página|IPT2ManualNotes_ES.wiki#pie-de-página]]
  + [[Menú Inicio (visible para todos los usuarios)|IPT2ManualNotes_ES.wiki#menú-inicio-visible-para-todos-los-usuarios]]
    + [[Tabla de recursos Públicos|IPT2ManualNotes_ES.wiki#tabla-de-recursos-públicos]]
    + [[RSS feed|IPT2ManualNotes_ES.wiki#rss-feed]]
    + [[Inventario de Recursos registrados|IPT2ManualNotes_ES.wiki#inventario-de-recursos-registrados]]
    + [[Página principal del Recurso|IPT2ManualNotes_ES.wiki#página-principal-del-recurso]]
      + [[Página de historial de versiones|IPT2ManualNotes_ES.wiki#página-de-historial-de-versiones]]
  + [[Menú Gestión de Recursos (visible para usuarios con el rol Administrador)|IPT2ManualNotes_ES.wiki#menú-gestión-de-recursos-visible-para-usuarios-con-el-rol-administrador]]
    + [[Tabla de Recursos que puede administrar|IPT2ManualNotes_ES.wiki#tabla-gestión-de-recursos]]
    + [[Creación un Nuevo Recurso|IPT2ManualNotes_ES.wiki#creación-de-un-nuevo-recurso]]
      + [[Cargar un Archivo Darwin Core|IPT2ManualNotes_ES.wiki#cargar-un-archivo-darwin-core]]
      + [[Cargar una carpeta comprimida con un recurso IPT configurado|IPT2ManualNotes_ES.wiki#cargar-una-carpeta-comprimida con-un-recurso-ipt-configurado]]
      + [[Cargar un archivo de Metadatos|IPT2ManualNotes_ES.wiki#cargar-un-archivo-de-metadatos]]
    + [[Editar un Recurso existente|IPT2ManualNotes_ES.wiki#edición-de-un-recurso-existente]]
    + [[Vista General del Recurso|IPT2ManualNotes_ES.wiki#vista general del recurso]]
      + [[Conjunto de datos|IPT2ManualNotes_ES.wiki#conjunto-de-datos]]
        + [[Conjunto de datos desde un Archivo|IPT2ManualNotes_ES.wiki#archivo-como-fuente-de-datos]]
        + [[Conjunto de datos desde una Base de datos|IPT2ManualNotes_ES.wiki#base-de-datos-como-fuente-de-datos]]
      + [[Mapeo Darwin Core|IPT2ManualNotes_ES.wiki#mapeo-darwin-core]]
        + [[Página de vista general del Conjunto de datos|IPT2ManualNotes_ES.wiki#página-de-selección-del-conjunto-de-datos]]
        + [[Página de vista general del Mapeo del Conjunto de datos|IPT2ManualNotes_ES.wiki#página-de-vista-general-del-mapeo-del-conjunto-de-datos]]
        + [[Página de Traducción del Valor|IPT2ManualNotes_ES.wiki#página de-traducción-del-valor]]
        + [[Página de Vocabulario Controlado|IPT2ManualNotes_ES.wiki#página-de-conceptos-del-vocabulario]]
      + [[Metadatos|IPT2ManualNotes_ES.wiki#metadatos]]
        + [[Metadatos Básicos|IPT2ManualNotes_ES.wiki#metadatos-básicos]]
        + [[Cobertura Geográfica|IPT2ManualNotes_ES.wiki#cobertura-geográfica]]
        + [[Cobertura Taxonómica|IPT2ManualNotes_ES.wiki#cobertura-taxonómica]]
        + [[Cobertura Temporal|IPT2ManualNotes_ES.wiki#cobertura-temporal]]
        + [[Palabras Clave|IPT2ManualNotes_ES.wiki#palabras-clave]]
        + [[Partes Asociadas|IPT2ManualNotes_ES.wiki#partes-asociadas]]
        + [[Datos del Proyecto|IPT2ManualNotes_ES.wiki#datos-del-proyecto]]
        + [[Métodos de Muestreo|IPT2ManualNotes_ES.wiki#métodos-de-muestreo]]
        + [[Referencias|IPT2ManualNotes_ES.wiki#referencias]]
        + [[Datos de la Colección|IPT2ManualNotes_ES.wiki#datos-de-la-colección]]
        + [[Enlaces Externos|IPT2ManualNotes_ES.wiki#enlaces-externos]]
        + [[Metadatos Adicionales|IPT2ManualNotes_ES.wiki#metadatos-adicionales]]
      + [[Versiones del Archivo Darwin Core|IPT2ManualNotes_ES.wiki#versiones-publicadas]]
      + [[Visibilidad|IPT2ManualNotes_ES.wiki#visibilidad]]
      + [[Migración de un Recurso|IPT2ManualNotes_ES.wiki#migración-de-un-recurso]]
      + [[Administradores de Recursos|IPT2ManualNotes_ES.wiki#administradores-de-recursos]]
      + [[Eliminar un Recurso|IPT2ManualNotes_ES.wiki#eliminar-un-recurso]]
  + [[Menú Administración (visible únicamente para usuarios con el rol Administrador)|IPT2ManualNotes_ES.wiki#menú-administración-visible-únicamente-para-usuarios-con-el-rol-administrador]]
    + [[Configuración de las opciones del IPT|IPT2ManualNotes_ES.wiki#configuración-de-las-opciones-del-ipt]]
    + [[Publicar todos los Recursos|IPT2ManualNotes_ES.wiki#publicar-todos-los-recursos]]
    + [[Configurar Cuentas de Usuario|IPT2ManualNotes_ES.wiki#configurar-cuentas-de-usuario]]
      + [[Crear un Nuevo Usuario|IPT2ManualNotes_ES.wiki#crear-un-nuevo-usuario]]
      + [[Modificar un Usuario existente|IPT2ManualNotes_ES.wiki#modificar-un-usuario-existente]]
      + [[Eliminar un Usuario|IPT2ManualNotes_ES.wiki#eliminar-un-usuario]]
  + [[Configurar opciones del Registro GBIF|IPT2ManualNotes_ES.wiki#configurar-opciones-para-el-registro-gbif]]
  + [[Editar el Registro GBIF|IPT2ManualNotes_ES.wiki#editar-el-registro-gbif]]
  + [[Configurar Organizaciones|IPT2ManualNotes_ES.wiki#configurar-organizaciones]]
    + [[Editar una Organización|IPT2ManualNotes_ES.wiki#editar-una-organización]]
    + [[Agregar una Organización|IPT2ManualNotes_ES.wiki#adicionar-una-organización]]
  + [[Configurar Estándares y Extensiones|IPT2ManualNotes_ES.wiki#configurar-estándares-y-extensiones]]
    + [[Sincronizar Extensiones y Vocabularios|IPT2ManualNotes_ES.wiki#sincronizar-extensiones-y-vocabularios]]
    + [[Ver detalles de una Extensión|IPT2ManualNotes_ES.wiki#ver-detalles-de-una-extensión]]
    + [[Instalar una Extensión|IPT2ManualNotes_ES.wiki#instalar-una-extensión]]
    + [[Eliminar una Extensión|IPT2ManualNotes_ES.wiki#eliminar-una-extensión]]
    + [[Actualizar una Extensión|IPT2ManualNotes_ES.wiki#actualizar-una-extensión]]
  + [[Ver actividad del Sistema del IPT|IPT2ManualNotes_ES.wiki#ver-actividad-del-sistema-del-ipt]]
  + [[Menú Acerca de (visible para todos los usuarios)|IPT2ManualNotes_ES.wiki#menú-acerca-de visible para todos los usuarios]]
+ [[Acerca del IPT|IPT2ManualNotes_ES.wiki#acerca-del-ipt]]
  + [[¿Cómo citar este manual?|IPT2ManualNotes_ES.wiki#cómo-citar-este-manual]]
  + [[Derechos de Autor|IPT2ManualNotes_ES.wiki#derechos-de-autor]]
  + [[Licencia|IPT2ManualNotes_ES.wiki#licencia]]
+ [[Recursos|IPT2ManualNotes_ES.wiki#recursos]]
  + [[Documentación de un Archivo Darwin Core|IPT2ManualNotes_ES.wiki#documentación-de-un-archivo-darwin-core]]
  + [[Mesa de Ayuda GBIF|IPT2ManualNotes_ES.wiki#mesa-de-ayuda-gbif]]
  + [[Registro GBIF|IPT2ManualNotes_ES.wiki#registro-gbif]]
  + [[Sitio del Código IPT|IPT2ManualNotes_ES.wiki#sitio-del-código-ipt]]
  + [[Documentación para Desarrolladores del IPT|IPT2ManualNotes_ES.wiki#documentación-para-desarrolladores-del-ipt]]
  + [[Grupo de expertos del IPT en el sitio web de la Comunidad GBIF|IPT2ManualNotes_ES.wiki#grupo-de-expertos-del-ipt-en-el sitio-web-de-la-comunidad-gbif]]
  + [[Seguimiento a problemas del IPT|IPT2ManualNotes_ES.wiki#seguimiento-a-problemas-del-ipt]]
  + [[Lista de correos del IPT|IPT2ManualNotes_ES.wiki#lista-de-correos-del-ipt]]
  + [[Preparación del servidor del IPT|IPT2ManualNotes_ES.wiki#preparación-del-servidor-del-ipt]]
  + [[Bases de Datos soportadas por el IPT|IPT2ManualNotes_ES.wiki#bases-de-datos-del-ipt-soportadas]]
  + [[Instalación de Prueba del IPT|IPT2ManualNotes_ES.wiki#instalación-de-prueba-del-ipt]]
+ [[Referencias|IPT2ManualNotes_ES.wiki#referencias]]
+ [[Glosario|IPT2ManualNotes_ES.wiki#glosario]]

---

# Introducción
## Acerca del IPT de GBIF

El Integrated Publishing Toolkit (IPT) de GBIF es una aplicación web de código abierto, disponible de forma gratuita, que facilita compartir cuatro tipos de información sobre biodiversidad: 

1. Datos primarios sobre registros biológicos
2. Listas de chequeo taxonómico
3. Datos de Eventos de muestreo
4. Metadatos de conjuntos de datos

Una instancia del IPT, así como los datos y metadatos registrados a través del mismo, están conectados al Sistema Global de Descubrimiento de Recursos sobre Biodiversidad (GBRDS, conocido también como el Registro GBIF), indexados por consulta a través de la red y el portal GBIF, y disponibles para uso público. Puede encontrar más información sobre el IPT de GBIF en http://www.gbif.org/informatics/infrastructure/publishing/.

Fundada y financiada por los gobiernos en el año 2001, la Infraestructura Mundial de Información en Biodiversidad (GBIF) es la iniciativa multilateral más grande del mundo, creada para facilitar el acceso libre a datos sobre biodiversidad a través de Internet. Entre los diversos [Aliados de GBIF](http://www.gbif.org/participation/participant-list) se incluyen principalmente países y organizaciones internacionales. GBIF también ha constituido alianzas formales con importantes organismos que son producto de tratados internacionales. La misión de GBIF consiste en promover y facilitar el acceso libre y gratuito a datos sobre biodiversidad en todo el mundo, a través de Internet, para apoyar a la ciencia, la conservación y el desarrollo sostenible. Puede obtener más información acerca de GBIF en http://www.gbif.org/.

Múltiples factores han servido como motivación para que GBIF lidere el desarrollo del IPT:
  * Las limitaciones de aplicaciones y protocolos anteriores (DiGIR, TAPIR, ABCD) para publicar y transferir fácilmente conjuntos de datos de gran tamaño;
  * La necesidad de reducir la carga en los servidores de los publicadores y de GBIF durante el proceso de indexación. Esto se debe a que el proceso de indexación desde DiGIR, TAPIR, o BioCASE se convierte en una carga pesada debido a las interacciones requerimiento-respuesta HTTP repetidas;
  * La necesidad de agilizar el proceso de indexación de los conjuntos de datos sobre biodiversidad;
  * La necesidad de ofrecer beneficios y servicios adicionales a los publicadores de datos para incentivar la publicación;
  * La carencia de herramientas apropiadas para la publicación de determinado tipo de datos sobre biodiversidad, tales como nombres, listas de chequeo y metadatos.

## ¿Cómo usar este manual?
Este manual consta de tres componentes principales: una introducción con información de contexto, una serie de tutoriales y una completa guía de referencia, incluyendo la sección "Guía de Instalación" y unas secciones que describen detalladamente los diferentes elementos de la herramienta.

Se invita a todos los usuarios a revisar esta sección introductoria y a que posteriormente, dependiendo del papel que cumplan en la instalación del IPT, se dirijan a las secciones específicas. El IPT (y este manual) distingue tres tipos de usuarios:

  * **Administradores**: A cargo de la instalación y configuración del IPT. Estos usuarios podrán hacer cambios a cualquier instancia del IPT. Los administradores deberán remitirse a las secciones "Guía de Instalación" y "Menú Administración" de la "Guía de Referencia Rápida".
  * **Administradores de recursos**: Tienen la posibilidad de crear, editar, eliminar y manejar los recursos (conjuntos de datos y metadatos). Dependiendo de los ajustes, estos usuarios pueden tener o no, derechos de registro para publicar recursos a través de la red de GBIF. Los administradores de recursos deberán consultar los diferentes tutoriales, dependiendo del tipo de datos que deban administrar (metadatos, registros biológicos, tipos especiales de datos a través de extensiones, etc..). El "Menú Gestión de Recursos" en la "Guía de Referencia Rápida" también será útil para los administradores de recursos.
  * **Usuarios básicos**: Sólo podrán navegar a través de los recursos publicados en una instalación del IPT. En futuras versiones del IPT, estos usuarios adquirirán derechos adicionales. Para los usuarios básicos, el IPT funcionará como una aplicación web sencilla, de manera que no se incluirá una explicación más detallada en este manual.

---

# Guía de Instalación
Esta "Guía de Instalación" está dirigida a aquellos interesados quienes por primera vez, instalarán y ejecutarán una instancia IPT. Si desea ver una instalación funcional del IPT, puede utilizar el ejemplo de prueba para el público de la última versión general en http://ipt.gbif.org/. De ser así, deberán consultar la [[Guía de referencia rápida|IPT2ManualNotes_ES.wiki#guía-de-referencia-rápida]] para obtener detalles sobre cómo utilizar las pantallas que visualizarán. Los desarrolladores que deseen trabajar con la última revisión del código fuente deberán consultar la sección [Cómo contribuir (en inglés)](http://code.google.com/p/gbif-providertoolkit/wiki/HowToContribute) del sitio de la wiki del IPT de GBIF en Google Code. 

## Requerimientos
### Conexión a Internet
El IPT está diseñado bajo el supuesto que el servidor desde el cual se ejecuta, cuenta con una conexión constante a Internet. Aunque muchas de las funciones del IPT trabajan incluso cuando no hay conexión, algunos aspectos del IPT (registro en GBIF, instalación de una extensión, vocabularios controlados, y bases de datos externas para datos de origen), requieren comunicación con recursos externos de Internet. Desde la perspectiva de la administración del IPT, la velocidad de la conexión a Internet sólo afecta a este tipo de comunicaciones. El acceso a la aplicación web del IPT y sus servicios por fuera de una intranet local, también requiere conectividad constante, y una conexión lenta puede tener efectos adversos sobre estos aspectos, sobre todo cuando se transfieran conjuntos de datos de gran tamaño.
### URL fija
A pesar de que puede ser utilizado simplemente como una herramienta para generar archivos Darwin Core (ver http://rs.tdwg.org/dwc/terms/guides/text/), el IPT fue diseñado para ser una aplicación y un servicio web de descubrimiento y acceso. Para apoyar esta funcionalidad, el servidor en el que está instalado el IPT debe facilitar el acceso a las aplicaciones y servicios a través de una URL estable.
### Memoria
El servidor que aloja la instalación del IPT debe tener como mínimo, 256 MB de memoria RAM disponibles para la aplicación.
### Espacio en disco
El espacio requerido por la aplicación del IPT es menor a 20 MB. El contenido del directorio de datos del IPT después de la instalación, requiere menos de 1 MB de almacenamiento en disco, generados por el IPT. No obstante, el contenido del directorio de datos crecerá a medida que se creen recursos, y requerirá un espacio equivalente al tamaño de los archivos o tablas que contienen los conjuntos de datos importados. Una estimación razonable para el tamaño de un conjunto de datos relativamente nutrido, es de un kilobyte por registro. El uso normal del IPT anexa información a los archivos de registro, que crecerán con el tiempo, pero que generalmente requieren un mínimo espacio en disco.
### Java
El servidor que aloja el IPT debe tener una versión de Java 6 o más reciente, instalada y en funcionamiento antes de la instalación del IPT.
### Contenedor de servlet
La aplicación IPT viene empaquetada con Jetty y por lo tanto no requiere un contenedor de servlets adicional. No obstante, el IPT puede ser desplegado en otro contenedor de servlets (por ejemplo Tomcat) que ya esté en uso. Información acerca de cómo utilizar diferentes contenedores de servlets con el IPT, se puede encontrar [aquí (en inglés)]( http://code.google.com/p/gbif-providertoolkit/wiki/IPTServerPreparation.).

## Instalación del IPT
### Preparar el Servidor
Antes de instalar el IPT, asegúrese de que el servidor previsto para el alojamiento cumpla con las especificaciones mínimas que se describen en las secciones del capítulo de "Requerimientos".
### Descargar el IPT
La última versión del software del IPT está disponible para su descarga como un archivo con el nombre ipt.war en la [página del IPT (en inglés)]( http://code.google.com/p/gbif-providertoolkit/downloads/list). Se deberá descargar este archivo en el servidor en el que se ejecutará el IPT. Los desarrolladores o quienes deseen utilizar la última revisión del código fuente, deberán consultar la sección “Desarrolladores” del sitio de la wiki del IPT de GBIF en Google Code [Cómo Contribuir (en inglés)] (http://code.google.com/p/gbif-providertoolkit/wiki/HowToContribute).
### Desplegar el IPT en el contenedor de servlet
Siga el proceso habitual para desplegar una aplicación web en un contenedor de servlets. Una página wiki con mayor información acerca de instalaciones específicas está disponible [aquí (página en inglés)](http://code.google.com/p/gbif-providertoolkit/wiki/IPTServerPreparation).
### Ejecutar la aplicación del IPT
Un despliegue exitoso del IPT en el contenedor de servlets, hará que el IPT esté disponible a través de un buscador web en una URL determinada por la URL base del servlet, seguida de /ipt (por ejemplo, http://localhost:8080/ipt). Si la instalación fue exitosa, la página de inicio de la configuración del IPT aparecerá en un buscador utilizando la URL del IPT.
## Configuración inicial del IPT
### Configuración del IPT I
La primera vez que el IPT sea ejecutado, se presentarán unos pasos simples para preparar el IPT para su uso. La página de instalación del IPT (ver imagen de la pantalla a continuación) es la primera de dos páginas de instalación y requiere una ubicación en la que se puedan almacenar los datos para la instalación del IPT. El formato de la ubicación introducida en la página debe cumplir con el estándar para una ruta absoluta a un directorio en el sistema operativo en el que está instalado el IPT, este formato no soporta rutas relativas. Por ejemplo, utilice una ruta como "c:\datadir" para entornos Windows o "/usr /datadir" para entornos Unix y MacOSX. El IPT debe tener permiso de escritura en la ubicación seleccionada. Si lo tiene, la ruta se puede introducir en el cuadro de texto y luego hacer clic en el botón "Guardar", con lo cual se creará el directorio en caso de que este no exista. Es posible crear primero el directorio de datos con los permisos de escritura adecuados, y a continuación introducir la ruta absoluta al directorio en el cuadro de texto y hacer clic en el botón "Guardar".

Nota 1: no seleccione un directorio de datos que sea vulnerable a cambios o eliminaciones accidentales. No utilice /tmp, por ejemplo, en sistemas en los que se elimine el contenido de esta carpeta en un reinicio del sistema. Se deberá realizar una copia de seguridad del directorio de datos con regularidad, de acuerdo con un plan apropiado de recuperación ante desastres. La pérdida de los contenidos del directorio de datos tendrá como resultado la pérdida de recursos, del usuario y de otra información de configuración y personalizaciones a la instalación IPT.

Nota 2: si usted tiene un directorio de datos de un IPT de la misma versión, previamente ejecutado, y desea utilizar esa configuración anterior (incluyendo a usuarios y recursos), puede introducir la ruta absoluta del mismo directorio de datos en este primer paso de la configuración del IPT (véase también la sección "Reiniciar" de esta "Guía de Instalación"). En este caso, al hacer clic en "Guardar" se pasará por alto la página titulada "Instalación del IPT (II)" y se presentará la página de Administración del IPT (véase la imagen de la pantalla en el “Menú Administración" de la "Guía de Referencia Rápida").

Nota 3: haga clic en el nombre del idioma que está en la esquina superior derecha para verificar si el idioma de su preferencia está disponible para usar el IPT.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTSetup1.png' />

### Configuración del IPT II
Si el paso inicial de asignación de directorio de datos se realizó correctamente, el IPT presentará una segunda página de instalación (véase imagen de la pantalla a continuación) en la que deberá ser ingresada la información del administrador predeterminado en el IPT, junto con la información acerca del modo en el que debe ser ejecutado y cómo acceder al IPT a través de Internet. A continuación están las explicaciones de los elementos encontrados en la segunda página de instalación:
  * Administrador predeterminado - El Administrador predeterminado tendrá un nombre de usuario definido y la autoridad para realizar cambios en todos los aspectos de la instalación del IPT. Puede crear cuentas de usuario adicionales, incluyendo otros administradores que tengan la misma autoridad para hacer cambios. Aunque los administradores pueden ser añadidos y eliminados, el IPT siempre debe tener al menos un responsable asignado.

    * **Correo electrónico** - La dirección de correo electrónico completa y activa del administrador predeterminado en la instalación del IPT.
    * **Nombre** - El nombre del administrador predeterminado.
    * **Apellido** - El apellido del administrador predeterminado.
    * **Contraseña** - Una contraseña para el administrador predeterminado. **Nota**: - La contraseña debe ser segura y estar a salvo de perderse, ya que no es recuperable desde la aplicación del IPT.
    * **Verificar contraseña** - Una copia exacta de la contraseña tal como se ingresó en el cuadro de texto Contraseña, para confirmar que se haya ingresado correctamente.
  * Modo del IPT - El modo del IPT determina si los recursos alojados serán o no indexados por GBIF, con el fin de facilitar el acceso público. GBIF recomienda a los administradores del IPT, usar en un principio el modo Prueba para entender el proceso de registro, y luego reinstalarlo en modo Producción para efectuar publicaciones formales. Advertencia: para una instalación dada, esta selección es definitiva y no puede ser cambiada posteriormente. Para cambiar del modo Prueba al modo Producción o viceversa, tendrá que reinstalar su IPT y repetir las configuraciones hechas (véase la sección "Reiniciar" de la Guía de Instalación).

    * **Modo del IPT** - Elija entre el modo Prueba y el modo Producción. El Modo Prueba (Test) es para evaluar el IPT o para ejecutarlo en un escenario de entrenamiento. Los registros se realizarán en un Registro de prueba y los recursos no serán indexados. Por otro lado, el Modo Producción (Production) es para publicar recursos formalmente; donde los recursos son registrados en el Registro GBIF y serán indexados.
    * **URL Base para este IPT** - La URL que dirige a la raíz de instalación de este IPT. La dirección URL es detectada automáticamente en la medida de lo posible, pero debe ser cambiada en los sistemas de producción para ser accesible a través de Internet, de manera que el IPT pueda funcionar plenamente. Configurando la URL base del IPT para utilizar el localhost, por ejemplo, no permitirá que la instancia del IPT sea registrada en GBIF, no permitirá que el IPT esté asociado con una organización y que los recursos sean de acceso público.
    * **Dirección del Proxy** - Si el servidor en el que ha sido instalado el IPT es dirigido a través de un servidor proxy o un host virtual. Ingrese la dirección del host y el número de puerto mediante los cuales se puede acceder al IPT vía Internet, usando una URL en el formato protocolo:host:puerto, por ejemplo, http://proxy.gbif.org:8080.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTSetup2.png' />

Cuando toda la información en la página esté completa y correcta, haga clic en el botón "Guardar" para completar el proceso de instalación del IPT. Si se presenta algún problema, aparecerá un mensaje de error en la parte superior de la página con recomendaciones acerca de cómo resolverlo. Siempre y cuando el problema haya sido resuelto, al reiniciar el servidor web este mensaje de error desaparecerá. Si la configuración fue exitosa, aparecerá una página de confirmación de la configuración.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTSetupFinished.png' />

Haga clic en el botón "Continuar" para abrir la página de Administración del IPT (véase a continuación la imagen de la pantalla), en la que se pueden realizar configuraciones adicionales. Por favor revise la explicación de todas las funciones de Administración antes de continuar. Detalles sobre las opciones presentadas en esta pantalla se muestran en la sección “Menú Administración" de la Guía de Referencia Rápida. Antes de añadir fuentes de datos al IPT, el administrador debe, como mínimo, verificar la configuración del IPT, definir las opciones de registro en GBIF, y asociar el IPT con una organización. El botón “Organizaciones” estará desactivado predeterminadamente hasta que se hayan establecido las opciones de registro en GBIF.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminBeforeRegistration.png' />

Una vez se hayan completado los pasos de esta "Guía de Instalación", el IPT estará listo para agregar recursos (conjuntos de datos y metadatos). Es recomendable revisar los tutoriales para entender cómo se llevan a cabo las tareas comunes del IPT. Para una explicación detallada de cualquier otro aspecto del IPT, consulte la "Guía de Referencia Rápida" de este manual de usuario.

## Reiniciar
Es relativamente fácil reiniciar el IPT y comenzar nuevamente con la primera página de configuración siguiendo estos pasos:
  * Cerrar la sesión de los usuarios que hayan ingresado al IPT y tengan la sesión activa.
  * Eliminar el archivo llamado datadir.location de la carpeta en la que fue creado por el IPT (normalmente WEB-INF en el directorio base de instalación del IPT - no en el directorio de datos del IPT que fue conformado en el paso inicial de la configuración).
  * La persona que tenga la información y conocimiento de administrador predeterminado de la instalación del IPT, debe abrir el IPT en un navegador web. Esto le mostrará nuevamente la página "Configuración Inicial del IPT" (véase la sección "Instalación del IPT" de esta "Guía de Instalación").
  * Si el usuario ingresa por la misma ruta absoluta al directorio de datos como lo hizo anteriormente, la configuración anterior será completamente restaurada, suponiendo que las actualizaciones de las versiones del IPT han sido compatibles entre el momento en que el directorio de datos se utilizó por última vez y cuando se utiliza para volver a iniciar el IPT.
  * Si se prefiere que la ubicación del directorio de datos sea la misma, pero sin que presente la configuración anterior del IPT, se deberá trasladar el contenido de ese directorio de datos a una ubicación diferente o eliminarlo completamente antes de hacer clic en "Guardar" en la página "Configuración Inicial del IPT".
  * Si se utiliza un nuevo directorio de datos, entonces la configuración procederá tal y como se describe en la sección "Instalación del IPT" de esta "Guía de Instalación".

# Guía de Referencia Rápida
## Antes de iniciar
Esta "Guía de Referencia Rápida" explica en detalle las características de un IPT que ha sido instalado, ejecutado por primera vez y verificado en su funcionamiento de acuerdo con la "Guía de Instalación". Los detalles de esta guía se presentan en cuatro secciones que corresponden a los cuatro menús disponibles en la interfaz del IPT. Algunas pestañas sólo pueden verse cuando un usuario, con los permisos adecuados, se ha identificado en el sistema.

## Características comunes
### Controles de la interfaz del usuario
La mayoría de los controles de la interfaz del usuario tienen los modos “habilitado” e “inhabilitado”. Si el control está habilitado, realizará una acción cuando se haga clic (un botón, por ejemplo), o permitirá que se realicen cambios a los valores que se vinculen al control (un texto o recuadro de selección o chequeo, por ejemplo). En este último caso, los cambios se guardarán, si es posible, cuando la forma en que aparecen sea guardada, lo que generalmente se realiza en una determinada página haciendo clic en el botón "Guardar". Los controles inhabilitados muestran el valor de la información asociada, pero no permiten que la información sea guardada bajo las condiciones vigentes en el momento en que aparecen. El objetivo de la mayoría de los controles de interfaz de usuario, se indica mediante una etiqueta asociada que aparece sobre y/o a la izquierda del control. En algunas ocasiones, información adicional también está disponible mediante un ícono de información asociada.</li></ul></li></ul>

**Menús** - En el IPT, una barra de menú aparece en casi todas las páginas, bajo el logotipo de GBIF. En la barra de menú se encuentran los menús que orientan al usuario en cuanto a temas fundamentales. Los ítems del menú aparecerán sólo en las páginas con permisos de visualización según el rol del usuario. El menú activo es de color notorio, mientras que los menús inactivos son de color gris. Haga clic en un menú para abrir y activar la página para esa temática.

Barra de menú antes de iniciar sesión o después de que un usuario sin una función especial inicia sesión, con el "Menú Inicio" activo:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTMenuBarHomeAbout.PNG' />

Menú después de que inicie sesión, un usuario con función de Administrador con o sin derechos para registrar recursos, con el "Menú Gestión de Recursos" activo:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTMenuBarHomeManageAbout.PNG' />

Menú después de que inicie sesión, un usuario con función de Administrador, con el "Menú Administración" activo:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTMenuBarHomeManageAdminAbout.png' />

**Cuadros de texto** - Permiten establecer un valor como visto, como verdadero (cuando es marcada) o falso (cuando no ha sido marcada).

Ejemplo de cuadros de verificación y de etiqueta para indicar que el IPT puede publicar los recursos:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-CheckboxExample.png' />

**Cuadros de verificación** - Permiten establecer un valor como visto, como verdadero (cuando es marcada) o falso (cuando no ha sido marcada).

Ejemplo de cuadros de verificación y de etiqueta para indicar que el IPT puede publicar los recursos:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-CheckboxExample.png' />

**Cuadros de selección** - Permiten visualizar o seleccionar un valor de una lista de valores predefinidos. Un cuadro de selección puede contener un texto explicativo acerca de la escogencia de un valor seleccionable. En este caso, la selección iniciará con la palabra "Seleccione" (por ejemplo, "Seleccione un país, territorio o isla"). Haga clic en el cuadro de selección para desplegar la lista de posibles valores. Haga clic en una de las opciones para fijar ese valor.

Ejemplo de cuadro de selección y de etiqueta para el rol del usuario, con la opción Administrador seleccionada:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-SelectBoxExample.png' />

**Enlaces** - Abre una página diferente a la que contiene el enlace. Los enlaces pueden abrir la nueva página en la misma ventana del navegador (o pestaña) o en una ventana separada (o pestaña).

Ejemplo de enlace a la página de información de la cuenta del usuario conectado:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-LinkExample.png' />

**Ícono de Información** - Muestra un mensaje que explica la intención del control junto al que aparece. Haga clic en el ícono situado junto a cualquier elemento para ver un mensaje de ayuda acerca de ese control. Haga clic de nuevo para que el mensaje desaparezca. Algunos mensajes de información incluyen un enlace, que de ser seleccionado, ingresará el valor apropiado para la selección.

Ejemplo de ícono de información para la codificación de caracteres, después de seleccionar el enlace de UTF-8:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Information-CharacterEncoding.png' />

**Ícono de Documentación** - Este ícono indica que hay una página de información detallada acerca del tema asociado con ese ícono. Haga clic en el ícono para abrir la página en una nueva ventana del navegador.

**Icono de Papelera** - Este ícono se asocia con otros controles en la página. Al hacer clic en el ícono se eliminarán los datos asociados.

**Ícono de Calendario** Este ícono se asocia con un elemento de texto destinado a contener una fecha. Al hacer clic en el ícono, se abrirá un pequeño calendario con controles que permiten al usuario desplazarse hacia adelante y hacia atrás a partir del mes y año seleccionado. Seleccione los cuadros para elegir otro mes, año y día de la semana según el calendario estándar de la Nueva Era. La selección de un día concreto transformará la fecha al formato correcto en el cuadro de texto asociado.

Ejemplo del calendario asociado a un cuadro de texto llamado "Fecha Final" en el que 19 de julio 2013 es la fecha actual, pero aún no ha sido seleccionada:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-TextBoxWithCalendarOpen.png' />

**Tabla ordenable** - Una tabla que permite ordenar las filas según los valores de una columna seleccionada en orden ascendente o descendente. Los encabezados de las columnas son las etiquetas de las columnas que aparecen como enlaces. Haga clic en un encabezado de columna para ordenar la tabla con los valores de esa columna. Haga clic nuevamente en el encabezado de la misma columna para ordenar la tabla en la dirección opuesta.

Ejemplo de tabla ordenable en orden ascendente según la columna etiquetada "Nombre". 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-TableSortedAscending.png' />

Ejemplo de tabla ordenable en orden descendente según la columna etiquetada "Tipo".

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-TableSortedDescending.png' />

#### Carga de archivos
La carga de archivos al IPT se puede hacer por medio de dos acciones: [[creando un nuevo recurso|IPT2ManualNotes_ES.wiki#Creación de un Nuevo Recurso]], o cuando se [[agregan nuevos archivos de conjuntos de datos|IPT2ManualNotes_ES.wiki#Conjunto de datos desde un Archivo]].

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-UploadCreateResource.png' />

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-UploadSourceData.png' />

El IPT tiene un límite de 100MB para la carga de archivos. Sin embargo no se tienen límites de tamaño para los Archivos Darwin Core que se deseen exportar o publicar a través del IPT. Para la carga en el IPT de conjuntos de datos de un tamaño mayor a los 100MB, se recomiendan las siguientes alternativas:
* Comprimir el archivo (con zip o gzip)
* Cargar los datos a una de las [[bases de datos soportadas por el IPT (página en inglés)|IPT2DatabaseConnection.wiki]]
* Dividir el archivo en varias partes

### Controles que aparecen en todas las páginas
Esta sección describe diversas características que son  accesibles en el encabezado y el pie de página de la mayoría de las páginas del IPT.


#### Encabezado
La sección "Encabezado" del IPT aparece en la esquina superior derecha de la mayoría de las páginas y permite un control básico del IPT, incluyendo el quién lo usa y en qué idioma. A continuación, se presentan dos imágenes de la pantalla que muestran los dos posibles estados en los que puede se puede encontrar el encabezado – sesión iniciada, y no iniciada.

Encabezado, no ha iniciado sesión, idioma español seleccionado para la interfaz de usuario:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTHeaderNotLoggedIn.png' />

Encabezado, sesión iniciada, idioma español seleccionado para la interfaz de usuario:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTHeaderLoggedIn.png' />

* **Iniciar sesión** - Un usuario que se ha creado en esta instancia del IPT, puede iniciar sesión ingresando la dirección de correo electrónico y contraseña en la esquina superior derecha de la página, y haciendo clic en el vínculo "Iniciar sesión". Nuevos usuarios podrán ser creados únicamente por un usuario existente que tiene el rol Administrador. El proceso de creación de los nuevos usuarios se explica en el encabezado "Configurar Cuentas de Usuario" en la sección "Menú Administración". El proceso de iniciar el IPT asignará el rol Administrador al primer usuario.
* **Cerrar sesión** - Si alguien inicia sesión en el IPT, la dirección de correo electrónico de la persona que se registra se mostrará en la esquina superior derecha de la página, junto con el enlace "Cerrar sesión".
* **Cuenta** - Para visualizar este enlace y la página a la que conduce, debe iniciar sesión en el IPT. La página muestra los detalles de la información de la cuenta para la persona que inicia sesión en el IPT y permite que estos sean cambiados. Los detalles de los elementos de esta página se podrán encontrar en el encabezado "Configurar Cuentas de Usuario" en la sección "Menú Administración".
* **Selección del idioma** - En la esquina superior derecha de la página está el nombre del idioma en el que se visualiza actualmente el IPT. El IPT se visualizará predeterminadamente en idioma inglés. El idioma de la interfaz del usuario se puede cambiar haciendo clic en el idioma deseado, si está disponible. GBIF busca activamente que el IPT sea traducido a otros idiomas. Para obtener más información, consulte la sección [Cómo contribuir (página en ingés)](http://code.google.com/p/gbif-providertoolkit/wiki/HowToContribute) del sitio de la wiki del IPT de GBIF en Google Code.


#### Pie de Página
La sección "Pie de Página" del IPT aparece en la parte inferior de la mayoría de las páginas y contiene información acerca de la versión del IPT y de enlaces a recursos importantes.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTFooter.png' />

* **Versión** - A la izquierda de "Pie de Página" en la parte inferior de la página se encuentra la versión del IPT que se está ejecutando en el momento. La información de la versión se puede utilizar para determinar qué características están incluidas en el IPT y los errores existentes. Esta es la información de la versión que se solicita al momento de generar los informes de error.
* **Acerca del proyecto IPT** - Este enlace lleva al [sitio web en Google Code de IPT (en inglés)](http://code.google.com/p/gbif-providertoolkit/), donde puede obtener información adicional sobre el IPT, incluyendo la última versión de este manual, temas pendientes, código fuente, y documentación relacionada.
* **Manual de Usuario** - Este enlace abrirá la versión más reciente publicada en línea del Manual de Usuario del IPT.
* [**Reportar un error**](https://github.com/gbif/ipt/issues/new) -  Este enlace abrirá la [lista de los temas pendientes para el IPT](http://code.google.com/p/gbif-providertoolkit/issues/list/). Si cree que ha encontrado un error, revise la lista de problemas conocidos para verificar si este error ya ha sido reportado. Si es así, es posible añadir nueva información a manera de comentario al reporte de error existente, lo cual podría ayudar a los ingenieros a diagnosticar y corregir el problema. Si en la lista no hay ningún error similar al que encontró en el IPT, puede crear un nuevo informe de errores, haga clic en el enlace "Nuevos Errores". Al reportar un nuevo error, se recomienda incluir la versión del IPT que está utilizando (ver la explicación de "Versión").
* [**Solicitar nueva característica**](https://github.com/gbif/ipt/issues/new) - Este enlace abre un formulario específico de la sección [Seguimiento de errores (en inglés)](http://code.google.com/p/gbif-providertoolkit/issues/entry?template=Feature request) del IPT que puede ser diligenciado para solicitar una opción con la que el IPT no cuente actualmente.
* **Derechos de Autor** - GBIF posee los derechos de autor del software del IPT. Un enlace a la página principal de GBIF está disponible. Los detalles de los derechos de autor y las licencias se podrán ver en la sección "Acerca del IPT" de este manual de usuario.


## Menú Inicio (visible para todos los usuarios)

Esta página permite a los usuarios ver una lista de los recursos públicos, si los hay, y ver los metadatos detallados de cualquier recurso en la lista.


<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTHome.png' />

### Tabla de Recursos Públicos
Si hay recursos públicos, estos serán relacionados en una tabla que tiene las siguientes columnas:

* **Logo** - El logo del recurso (se puede configurar en la página "Metadatos Adicionales" de los metadatos del recurso).
* **Nombre** - El título del recurso tal como figura en el Título de la entrada de los metadatos del recurso. El nombre aparece como un enlace, que abrirá una "Página Visualización de Metadatos" (ver más adelante) para el recurso seleccionado.
* **Organización** - La organización bajo la cual el recurso ha sido registrado. Si el recurso no está registrado, el valor en la columna de Organización será "No registrado". Revise la información en el encabezado “Organizaciones”, en la sección de "Menú Administración" para obtener más información acerca del registro de las organizaciones y del registro de un recurso en una organización.
* **Tipo** - El tipo de recurso como figura en la lista desplegable de Tipo en la página [[Metadatos Básicos|IPT2ManualNotes_ES.wiki#metadatos-básicos]] de los metadatos del recurso.
* **Subtype** - El subtipo del recurso como figura en la lista desplegable de Subtipo en la página [[Metadatos Básicos|IPT2ManualNotes_ES.wiki#metadatos-básicos]] de los metadatos del recurso.
* **Registros** - El número de filas de datos de la última publicación del Archivo Darwin Core para el recurso.
**Última modificación** - Ya sea la fecha en la que fue creado el recurso o la fecha en la que los datos o los metadatos fueron modificados, aquella que sea más reciente.
* **Última publicación**- La fecha en la que el recurso fue publicado por última vez.
* **Próxima publicación** - La fecha en la que el recurso será publicado próximamente.

### RSS Feed
El IPT apoya la agremiación a través de RSS para aquellos que desean monitorear los cambios en la configuración de los recursos. La fuente RSS está disponible haciendo clic en el enlace que aparece debajo de la lista de recursos públicos alojados. Puede ser leída en cualquier cliente estándar de RSS.

### Inventario de recursos registrados
El IPT provee un inventario JSON de todos los recursos registrados. Esta característica no se muestra en la interfaz de usuario. Para verla, simplemente adjunte /inventory/dataset a la URL básica del IPT e.g. <a href='http://ipt.gbif.org/inventory/dataset'>http://ipt.gbif.org/inventory/dataset</a>. GBIF utiliza este inventario para el monitoreo de la correcta indexación de los recursos a través de la comparación entre las cuentas de los objetivos y los registros indexados.

### Página principal del Recurso
La Página principal del Recurso está dirigida a los usuarios externos de un recurso. En esta, se muestra una lista de todos los metadatos de la versión seleccionada del recurso, provee los enlaces de descarga de los datos/metadatos de las versiones y exhibe el historial de versiones del recurso. 

Para ver la página principal de un recurso, el usuario puede hacer clic en el enlace del nombre en la lista de recursos de la página de inicio. Otra forma de acceder a la página principal de un recurso es utilizando el DOI: cuando un número DOI es asignado a un recurso a través del IPT, éste siempre remite al usuario a la página principal del recurso que representa.

Por favor recuerde que sólo usuarios con el rol de Administrador u otros tipos de roles administrativos (con y sin derecho de registro) pueden editar los metadatos de un recurso. Para conocer más, refiérase a la información en la sección "Editar un recurso existente" en el "Menú Gestión de Recursos".

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTHomeMetadataOverview.png' />

#### Página de historial de versiones
La tabla del historial de versiones muestra todas las versiones de un recurso que han sido publicadas, permitiéndole a los usuarios hacer el seguimiento de los cambios en el recurso a lo largo del tiempo y descargar las versiones previas de datos/metadatos. Tenga en cuenta que el Modo Archivo del IPT debe estar activado para que las versiones anteriores del DWCA sean guardadas (véase la sección [[Configuración de las opciones del IPT|IPT2ManualNotes_ES.wiki#Configuración de las opciones del IPT]]).Solo las versiones con acceso al público pueden ser vistas por usuarios externos, mientras que los administradores del recurso podrán ver todas las versiones. A continuación encontrará más información acerca de las columnas de la tabla. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTVersionHistoryTable.png' />

A continuación se encuentran las explicaciones de las columnas de la tabla de versiones:

* **Versión** - El número de la versión publicada, el cual usa el formato major_version.minor_version. La versión del recurso que se está viendo actualmente se indica con una flecha. Para abrir la página de inicio de una versión específica, haga clic en el número de la versión. **Nota**: un cambio considerable en comparación con la última versión publicada indica que ha ocurrido un cambio científicamente significativo.
* **Publicado en** - La fecha de publicación de la versión.
* **Registros** - El número de registros que contiene la versión publicada.
* **Resumen de cambios** - Resumen de los cambios realizados desde la última versión publicada.
* **Handle del DOI** - El handle DOI asignado a la versión publicada **Nota**: si el DOI obtenido es diferente al DOI de la última versión publicada, indica que se han realizado cambios científicamente significativos al recurso. 
* **Última modificación por** - Usuario del IPT que modificó por última vez la versión publicada.

## Menú Gestión de Recursos (visible para usuarios con el rol Administrador)
Esta página permite, a usuarios que cumplan el rol que corresponde (Administradores), realizar cambios en los recursos existentes o crear nuevos recursos.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResources.png' />

### Tabla Gestión de Recursos
Cuando la página "Gestión de Recursos" se abre por primera vez, muestra una tabla de los recursos existentes que el usuario actual tiene permiso para modificar, incluidos los creados por este usuario y aquellos que este usuario pueda administrar por invitación de otros usuarios. Consulte la información en la sección [[Tabla de recursos Públicos|IPT2ManualNotes_ES.wiki#tabla-de-recursos-disponibles]] para obtener una explicación detallada acerca de las columnas Nombre, Organización, Tipo, Subtipo, Registros, Última modificación, Última publicación y Próxima publicación. Además, la "Tabla Gestión de Recursos" incluye las siguientes columnas de información básica sobre los recursos:

* **Visibilidad** - Una categoría que establece quién tiene acceso a la visualización del recurso. Si el recurso es "Público", todos los usuarios podrán verlo en la [[Tabla de recursos Públicos|IPT2ManualNotes_ES.wiki#tabla-de-recursos-disponibles]] en la página de Inicio. Si el recurso es "Privado", será visible en la "Tabla Gestión de Recursos" sólo para el usuario que lo creó, para quienes han sido invitados a administrarlo, y para los usuarios que tienen el rol Administrador. Detalles acerca de cómo invitar a otros a administrar un recurso se encuentran en la sección "Administradores de Recursos" bajo el encabezado "Vista General del Recurso" en la sección "Gestión de Recursos".

* **Autor** - El usuario del IPT que creó el recurso.

### Creación de un Nuevo Recurso
Debajo de la "Tabla Gestión de Recursos" hay un formulario que puede ser utilizado para crear un nuevo recurso. Antes que nada, se deberá proporcionar un "nombre corto" único para el recurso. Este nombre corto se utilizará para identificar de manera única, el recurso en la instancia del IPT, y será utilizado en la URL para acceder al recurso a través de Internet. El nombre corto deberá contener al menos tres caracteres, estos podrán ser caracteres alfanuméricos, pero no deberá incluir espacios en blanco o puntuación, excepto guiones o guiones bajos (por ejemplo, "primerrecurso" o "primer_recurso", pero no "primer recurso" o “primerrecurso!"). Segundo, un tipo de recurso (opcional) puede ser indicado. Tenga en cuenta que cuando un recurso DWCA es cargado, (véase a continuación) el tipo será determinado automáticamente y se sobrescribe sobre el tipo seleccionado previamente. Tercero, un recurso que ya esté en formato DWCA (.zip) puede ser cargado. Las siguientes secciones describen los 3 tipos diferentes de recursos archivados, de los cuales puede ser derivado un nuevo recurso: [[un archivo Darwin Core|IPT2ManualNotes_ES.wiki#Cargar un Archivo Darwin Core]], [[una carpeta comprimida (.zip) con un recurso IPT configurado|IPT2ManualNotes_ES.wiki#Cargar una carpeta comprimida con un recurso IPT configurado]] o [[un archivo de metadatos|IPT2ManualNotes_ES.wiki#Cargar un archivo de metadatos]].

De igual forma, siempre se puede crear un recurso completamente nuevo sin tener que cargar un recurso existente. Con esta opción, la configuración del recurso tendrá que ser creada en su totalidad a través del IPT, incluyendo la carga de un archivo fuente de datos (limite 100MB) o una base de datos y mapear los nombres de las columnas con la extensión o extensiones apropiadas. **Por favor note que el IPT tiene un límite de carga para archivos de 100MB** sin embargo, **no** existe un límite para el tamaño de los Archivos Darwin Core que pueden ser exportados/publicados en el IPT. Para más información diríjase a la sección [[Carga de archivos|IPT2ManualNotes_ES.wiki#Carga de archivos]].

Para hacerlo, hay que comenzar ingresando un nombre corto para el nuevo recurso, como se describió anteriormente, y luego hacer clic en el botón "Crear". Se abrirá inmediatamente la página de Vista General del Recurso. Proceda a completar las diferentes secciones de la página gestión del recurso teniendo en cuenta las descripciones bajo el encabezado ""Vista General del Recurso" de la sección "Menú Gestión de Recursos".

#### Cargar un Archivo Darwin Core
El IPT puede importar y exportar archivos válidos del tipo Darwin Core de hasta 100MB. Puede encontrar más información sobre archivos Darwin Core en el sitio web de Darwin Core (http://rs.tdwg.org/dwc/terms/guides/text/), junto con información sobre su uso en el IPT, del sitio de la wiki del IPT de GBIF en Google Code ((http://code.google.com/p/gbif-providertoolkit/wiki/DarwinCore). Para importar un archivo Darwin Core, haga clic en el botón "Examinar", a continuación busque y seleccione el archivo. Después de seleccionar el archivo, el nombre aparecerá junto al botón "Examinar". 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceUploadDwcA.png' />

Haga clic en el botón "Crear". Si surge algún problema al importar el archivo seleccionado, un mensaje de error notificará al usuario. Si la importación es exitosa, una página "Vista General del Recurso" aparecerá con un mensaje informativo en la parte superior, que describe los resultados del proceso de importación.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceUploadDwCASuccess.png' />

#### Cargar una carpeta comprimida con un recurso IPT configurado
Es posible crear una copia de un recurso a partir de una carpeta comprimida con el recurso IPT configurado. La única condición es que el recurso debe haber sido creado bajo una versión compatible del IPT. De manera efectiva, este copiará todos los metadatos del recurso, los datos del recurso, y el mapeo. No copiará la información de registro del recurso, administradores, ni conservará el nombre corto del recurso.

Para hacerlo, solamente siga estas instrucciones:

1. Localice la carpeta comprimida del recurso que desea copiar. Las carpetas de los recursos configurados están guardadas dentro de la carpeta $directorio-datos/recursos, y nombrado con el nombre corto del recurso. Por ejemplo, si el recurso tiene el nombre corto "ants", este puede ser encontrado en $directorio-datos/recursos/ants.

2. Comprima la carpeta del recurso configurado: ants/ -> ants.zip
3. En la sección "Creación de un Nuevo Recurso" de la página "Menú Gestión de Recursos":

  1. Ingrese un nombre corto para el nuevo recurso. Puede mantener el nombre corto del recurso comprimido, siempre y cuando no exista ya en su IPT.
  2. Haga clic en el botón "Examinar", busque y seleccione la carpeta comprimida del recurso IPT configurado.
  3. Después de seleccionar el archivo, la ruta donde se encuentra aparecerá al lado del botón "Examinar". Ahora haga clic en el botón "Crear". Si se presenta un problema importando el archivo seleccionado, aparecerá un mensaje de error. Si la importación es exitosa, aparecerá una página de Vista General del Recurso con el metadato, la fuente de datos y el mapeo del recurso, que fueron copiados del recurso comprimido al nuevo recurso.


#### Cargar un archivo de metadatos
El IPT puede importar y exportar archivos válidos de metadatos de conjuntos de datos que se ajusten al Perfil de Metadatos de GBIF. La información acerca del Perfil de Metadatos EML de GBIF puede ser encontrado en el <a href='http://www.gbif.org/orc/?doc_id=2820'>GBIF Metadata Profile Reference Guide</a>. La información acerca de cómo crear un documento de metadatos que se ajuste al Perfil de Metadatos de GBIF Darwin Core, se puede encontrar en el <a href='http://www.gbif.org/orc/?doc_id=2821'>GBIF Metadata Profile How To Guide</a>. Para importar un archivo de metadatos, seleccione el tipo de recurso "solamente metadatos" y haga clic en el botón "Examinar", busque y seleccione el archivo de metadatos deseado. Después de seleccionar el archivo, el nombre aparecerá junto al botón de "Examinar". 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceUploadEml.png' />

Haga clic sobre el botón "Crear". Si existe un problema importando el archivo seleccionado, un mensaje de error alertará al usuario. Si la importación es exitosa, la página vista General del Recurso aparecerá con los metadatos que habían sido documentados. Las secciones de fuente de datos y mapeo permanecerán ocultas debido a que es un recurso de solo metadatos. Si usted más adelante decide agregar un conjunto de datos primarios, sólo cambie el tipo de recurso en la página de Metadatos en la sección de los[[Metadatos Básicos|IPT2ManualNotes_ES.wiki#Metadatos Básicos]].

### Edición de un Recurso Existente
La tabla de recursos existentes muestra sólo aquellos recursos que pueden ser editados por el usuario actual. Para editar un recurso, haga clic en el nombre del recurso en la "Tabla Gestión de Recursos". El enlace abrirá la página "Vista General del Recurso" del recurso seleccionado. Consulte las descripciones en el encabezado "Vista General del Recurso", de la sección "Menú Gestión de Recursos" para conocer los detalles acerca de cómo editar diversos aspectos del recurso.

### Vista General del Recurso
Esta página permite a los usuarios con permiso de administración, realizar cambios en varios aspectos de la configuración de un recurso. El nombre del recurso se encuentra en la parte superior de la página, debajo de la barra de menú. Si no se ha asignado un nombre al recurso, el nombre corto del mismo estará en la parte superior de la página y funcionará a manera de título. A continuación del nombre del recurso, en el costado izquierdo, hay una tabla que muestra las categorías de la configuración del recurso con información resumida a la derecha. Cada una de estas categorías está configurada separadamente, como se explica en detalle en las secciones siguientes.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceOverview.png' />

#### Conjunto de datos
Esta área de la página "Vista General del Recurso" permite al usuario importar datos primarios al IPT a partir de archivos o bases de datos. Si un recurso no tiene fuente de datos, es considerado un recurso de metadatos con información acerca de un conjunto de datos o una colección, pero sin ningún tipo de datos primarios. Es posible conectar un recurso a más de una fuente de datos, si estas están relacionadas entre sí. Encontrará más información sobre la relación entre múltiples fuentes de datos en la sección Guía de Implementación <a href='http://rs.tdwg.org/dwc/terms/guides/text/index.htm#implement'>Implementation Guide</a> de la "Guía de Texto" de Darwin Core. A continuación se encuentran las explicaciones de la etapa preliminar para seleccionar la fuente de datos, ya sea de archivos de texto o de fuentes de bases de datos:

##### Archivo como fuente de datos 
El IPT puede importar archivos de texto delimitado no comprimidos (csv, tab, y archivos con cualquier otro delimitador) o archivos comprimidos con zip o gzip. Archivos de Excel también son soportados. Haga clic en el botón "Examinar" para buscar y seleccionar el archivo que desea importar. El nombre del archivo solo debe componerse de caracteres (A-Z, 0-9), espacios, puntos, paréntesis, guiones y guiones bajos. Después de seleccionar el archivo, el nombre del mismo aparecerá a la derecha del botón "Examinar".

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceData.png' />

Haga clic en el botón "Limpiar" para eliminar el archivo seleccionado y volver al estado anterior a la selección del archivo fuente. Haga clic en el botón "Agregar" para abrir la página detallada "Archivo de Fuente de Datos" (si existe el riesgo de sobrescribir un archivo con el mismo nombre, se abre un diálogo que pide al usuario confirmar que realmente desea sobrescribir). Esta página mostrará el nombre del recurso, junto con un resumen de las características del archivo (opción de lectura, número de columnas detectadas, ruta absoluta de acceso al archivo, tamaño del archivo, tamaño de filas, y fecha en la que el archivo se cargó en el IPT). El archivo de fuente de datos de la página de detalles permite al usuario ver y editar los parámetros que describen el contenido del archivo seleccionado, y utilizar estos ajustes para analizar y obtener una vista previa del archivo.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceDataFormat.png' />

* **Nombre de la Fuente** - El nombre del archivo seleccionado, sin la extensión de archivo.
* **Se puede leer** - Este ícono indica si los datos están disponibles utilizando la información de formato del archivo provisto en esta página.
* **Columnas** - El número de columnas en el conjunto de datos como se ha configurado usando los parámetros en esta página.
* **Archivo** - La ruta completa a la ubicación del archivo que desea utilizar como fuente de datos.
* **Tamaño** - El tamaño del archivo.
* **Filas** - El número de filas que se encuentran en el archivo de datos. (Nota: este número ayuda a comprobar si todos los registros fueron identificados.)
* **Modificado** - El sello de la fecha que indica el momento en el que el archivo se guardó por última vez.
* **Reporte de la Fuente** - Este enlace descarga el archivo que contiene el registro generado, al procesar el archivo utilizando la información contenida en esta página. Cualquier problema que surja durante el procesamiento del archivo, tal como datos faltantes y formateo inesperado, estarán en este archivo de registro.
* **Analizar** - Haga clic en este botón para generar un resumen de los datos basado en la configuración de la conexión de la base de datos, en esta página. El análisis indicará si la base de datos tiene posibilidad de lectura, y si es así, el número de columnas que hay en los resultados de la sentencia SQL.
* **Vista previa** - <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/preview.png' /> - Haga clic en este botón para ver una interpretación de los datos, basada en la configuración de conexión de la base de datos de esta página.
* **Número de Filas de Encabezado** - 0 si el archivo no contiene una fila con los nombres de columna, 1 si el archivo contiene una fila de encabezado.
* **Delimitador de Campo** - El o los caracteres que indican una ruptura entre columnas de datos.
* **Codificación de caracteres** - El sistema que determina definiciones en términos de byte, de los caracteres en los datos (por ejemplo, la norma ISO 8859-5 se refiere al alfabeto cirílico).
* **Citas de Campos** - Sólo un carácter (o ninguno) utilizado para delimitar el contenido de una columna en los datos (por ejemplo, 'o"). Por favor note que esto no abarcará con precisión las columnas con contenidos que incluyan caracteres de nueva línea (\n) o saltos de línea (\r).
* **Delimitador Multivalor** - Sólo un carácter utilizado para delimitar el contenido de un campo multivalor (e.g.,| o ;.
* **Formato de Fechas** - Un código que describe el formato de los elementos que tienen un tipo de datos de fecha (por ejemplo, AAAA-MM-DD para año de cuatro dígitos, mes de dos dígitos, y día de dos dígitos, separados por guiones).
* **Hoja de cálculo seleccionada** - (sólo archivos Excel) en esta lista de selección se mostrarán los nombres de todas las hojas de cálculo del archivo/libro de trabajo de Excel. Sólo puede utilizarse una hoja de cálculo como fuente de datos, por defecto será la primera hoja de cálculo del archivo.
Después de ajustar los parámetros de la fuente de datos para que el archivo se interprete correctamente, haga clic en el botón "Guardar" para almacenar esta configuración. Si el almacenamiento se realiza correctamente, aparecerá la página "Vista General del Recurso", con información resumida acerca del archivo en la columna de la derecha del área "Fuente de Datos". El botón "Editar" también aparecerá con el resumen de la información del archivo de la fuente de datos en la columna de la derecha, permitiendo al usuario volver a abrir la página detallada "Archivo de Fuente de Datos".

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceSummary.png' />

En caso de que el usuario desee eliminar esta fuente, puede volver a abrir la página detallada "Archivo de Fuente de Datos" y hacer clic en el botón "Eliminar el archivo fuente". Tenga en cuenta sin embargo, que el enlace asociado a este archivo también será eliminado.

Si la fuente de datos se encuentra en varios archivos de texto, el proceso descrito en esta sección se puede repetir para cada uno de los archivos que desea importar. Un archivo comprimido con varios archivos de texto también puede ser importado para añadir varios archivos fuente en un mismo intento.

##### Base de Datos como fuente de datos
El IPT puede utilizar conexiones de bases de datos para importar datos de tablas o vistas. Una lista de las conexiones de [[Bases de Datos Soportadas por el IPT|IPT2DatabaseConnection.wiki]] disponible a través del sitio de la wiki del IPT de GBIF en Google Code. Para configurar una base de datos como fuente de datos, haga clic en el botón "Conectar a BD" en la columna de la izquierda del área "Fuente de Datos" de la página "Vista General del Recurso". Esto abrirá una página detallada de Fuente de Base de Datos. 

La página detallada de Fuente de Base de Datos muestra el nombre del recurso, junto con un resumen de las características de la base de datos (opción de lectura, número de columnas detectadas) y permite al usuario ver y editar los parámetros que describen cómo acceder a los datos de la base de datos, y utilizar estas opciones para analizar y obtener una vista previa de los datos.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceDatabase.png' />

* **Nombre de la Fuente** - El nombre de la fuente de datos. A diferencia de una fuente de datos de archivo, esto puede ser editado y dado cualquier nombre por el usuario.
* **Se puede leer** - Este ícono indica si los datos están disponibles usando la información de conexión proporcionada en esta página.
* **Columnas** - El número de columnas en el conjunto de datos como se configuró usando los parámetros en esta página.
* **Analizar** - Haga clic en este botón para generar un resumen de datos basado en la configuración de conexión de bases de datos en esta página. El análisis indicará si la base de datos tiene opción de lectura, y si es así, el número de columnas que figura en los resultados de la sentencia SQL.
* **Vista Previa**  <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/preview.png' /> - haga clic en este botón para ver una interpretación de los datos basada en los ajustes de conexión de base de datos en esta página.
* **Sistema de la Base de Datos** - El sistema de administración de base de datos relacional al que el IPT debe conectarse para recuperar los datos.
* **Host** - La dirección del servidor de la base de datos, que opcionalmente incluye el número de puerto no predeterminado (por ejemplo, localhost o mysql.gbif.org: 1336). Para las conexiones ODBC, esto no es necesario.
* **Base de Datos** - El nombre de la base de datos en el sistema de administración de base de datos, o el DSN para una conexión ODBC.
* **Usuario de la base de datos** - El nombre del usuario de la base de datos utilizado cuando este se conecta a la base de datos.
* **Contraseña de la Base de datos** -  La contraseña utilizada por el usuario para conectarse a la base de datos.
* **Sentencia SQL** - La sentencia de Lenguaje de Consulta Estructurado utilizada para leer los datos de la fuente de base de datos. La sentencia se enviará como está, a la base de datos configurada, por lo cual usted puede utilizar cualquier característica local de la base de datos como funciones, agrupación de documentos, límites, o uniones, si están admitidos. Ejemplo: 'SELECT * from especimenes join taxones on taxones_fk = taxones.id`. Al momento de probar una fuente de datos de gran tamaño es buena idea incluir el lenguaje apropiado en la sentencia SELECT para limitar el número de filas arrojadas por la consulta - por ejemplo, en MySQL, 'SELECT * from especimenes join taxones on taxones_fk = taxones.id LIMIT 10. Cuando la sentencia ha sido totalmente probada con el enlace de Darwin Core (consulte la siguiente sección de la "Guía de Referencia Rápida"), cambie la sentencia SQL para arrojar el conjunto completo de datos previsto.
* **Character Encoding** - El sistema que determina definiciones en términos de byte de los caracteres en los datos (por ejemplo, Latin1, UTF-8).
* **Formato de fecha** - Un código que describe el formato de los elementos que tienen un tipo de datos de fecha (por ejemplo, AAAA-MM-DD para año de cuatro dígitos, mes de dos dígitos, y día de dos dígitos, separados por guiones).
* **Delimitador Multivalor** - Sólo un carácter utilizado para delimitar el contenido de un campo multivalor (e.g.,| o ;.

Después de establecer los parámetros de la fuente de datos de manera que haya un acceso adecuado a los datos, haga clic en el botón "Guardar" para conservar esta configuración. Si el proceso de guardado se realiza correctamente, aparecerá la página "Vista General del Recurso", con información resumida acerca de los datos, en la columna de la derecha del área "Fuente de Datos". Un botón "Editar" también aparecerá con la información resumida de la fuente de datos, permitiendo al usuario volver a abrir la página detallada Fuente de Base de Datos.

#### Mapeo Darwin Core

Esta área de la página "Vista General del Recurso", permite al usuario mapear los elementos de los datos de entrada con los elementos de las extensiones instaladas, e identificar los elementos que aún no han sido mapeados. Esta opción no estará disponible hasta que por lo menos, una fuente de datos haya sido agregada con éxito y por lo menos una extensión haya sido instalada. 

Una vez cumplidas estas condiciones, la columna de la izquierda del área de Mapeo Darwin Core contendrá un cuadro de selección con una lista de Estándares y Extensiones que hayan sido instaladas. Seleccione un Estándar y realice el enlace antes de seleccionar una extensión para mapear. Seleccione la extensión adecuada que contenga los elementos que coincidan con aquellos a mapear en la fuente de los datos. Si el estándar o la extensión adecuada no aparecen en el cuadro de selección, tendrá que ser instalado antes de proceder. Consulte la información del encabezado "Configuración de Estándares y Extensiones" en la sección "Menú Administración" para obtener una explicación de cómo instalar las extensiones.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceDwCMapping.png' />

Después de que el estándar o la extensión deseada haya sido seleccionada, haga clic en el botón "Agregar" para abrir la [[Página de selección del Conjunto de Datos|IPT2ManualNotes_ES.wiki#Página de selección del Conjunto de Datos]]. 

##### Página de selección del Conjunto de Datos
Esta página ofrece una explicación del tipo de datos que la extensión soporta, y muestra un cuadro de selección que contiene una lista de todas las fuentes de datos configuradas.
**Nota 1**: Un recurso debe usar solamente un tipo de core: Elija "Lista de Chequeo Darwin Core" cuando la base del recurso sean nombres de taxones o elija "Darwin Core Ocurrence" cuando la base del recurso sean observaciones en campo o especímenes en una colección. Sólo cuando el core deseado haya sido mapeado, será posible mapear otras extensiones. 
**Nota 2**: Es posible mapear otro tipo de core como una extensión, siempre y cuando éste sea diferente al tipo del core mapeado inicialmente.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceSelect.png' />

Seleccione el conjunto de datos a mapear y luego haga clic en el botón "Guardar". Esto abrirá la Página inicial de Mapeo del Conjunto de Datos (ver [[Página de vista general del Mapeo del Conjunto de Datos|IPT2ManualNotes_ES.wiki#Página de vista general del Mapeo del Conjunto de Datos]] abajo para ayuda acerca del mapeo).

Luego de que se ha agregado un nuevo mapeo, éste será visible en la columna de la derecha del área Mapeo Darwin Core. Esta área tendrá una lista de todos los mapeos del recurso, divididos en mapeos del estándar y mapeos de las extensiones. Haga clic en el botón "Editar" junto a un mapeo para modificarlo o haga clic en el ícono de " Vista previa"<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/preview.png' /> para tener una vista preliminar del mapeo. Se recomienda que el administrador del recurso utilice la vista previa para hacer una revisión del mapeo antes de publicar una nueva versión. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceDwCMapping2.png' />

##### Página de vista general del Mapeo del Conjunto de Datos
Después de que se ha realizado el mapeo entre el conjunto de datos y los elementos del Core o la extensión, se abrirá esta página. En ésta se mostrará un mensaje de estado indicando cuántos elementos de la fuente de los datos se mapearon automáticamente a los elementos de las extensiones.  Los elementos se mapearán automáticamente, si los nombres de los elementos, convertidos a minúsculas, coinciden entre sí.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceMapping.png' />

La página Mapeo de Datos permite al usuario especificar exactamente cómo se configuran los datos disponibles a través de este recurso IPT, con base en la extensión seleccionada.  El nombre del conjunto de datos es un enlace a la página de edición del conjunto de datos. Por otra parte el nombre de la extensión es un enlace a la descripción de la extensión.

La barra lateral al lado izquierdo de la página contiene los enlaces para acceder a sets específicos de campos relacionados (clases/grupos) en la extensión. Además cuenta con filtros para mostrar u ocultar campos. 


La columna de la derecha contiene íconos de información y controles (cuadros de selección, cuadros de texto) para establecer el valor que debería tener el elemento de la extensión. En los cuadros de selección y de texto puede haber un texto de explicación acerca del elemento de la extensión. Adicionalmente, si el nombre de un elemento ha sido elegido en el cuadro de selección de elemento de fuente de datos, aparecerá un texto etiquetado como "Ejemplo de Fuente" y un botón "Traducir". Las descripciones de los controles que pueden aparecer en la columna al costado derecho de la tabla de mapeo de los datos, estará por debajo de la imagen de la pantalla.

* **Cuadro de selección del elemento de la fuente de los datos** - el cuadro de selección de la izquierda está en blanco o contiene el nombre de un campo del origen de datos. El IPT diligencia tantas selecciones como sea posible a partir de los nombres de elementos de la extensión que coincidan con el nombre del elemento de la fuente de los datos. Todos los cuadros restantes de selección del elemento fuente, se dejarán en blanco, lo que significa que el elemento de la extensión no se ha mapeado a un elemento de la fuente de los datos. Si un nombre de elemento es seleccionado cuando se publique el recurso, el recurso utilizará el valor de ese elemento en la fuente de datos como el valor para el elemento de la extensión en el Archivo Darwin Core creado por el IPT.
* **Cuadro de selección del elemento de la fuente de los datos** - ID del elemento - este elemento puede ser asignado a un campo en la fuente de datos, o puede seleccionarse el valor "Sin ID" lo cual significa que el elemento no será mapeado a un campo en la fuente de datos. El ID es requerido para relacionar registros provenientes de dos fuentes. El ID puede ser generado automáticamente a partir del "Número de línea" o del "Generador UUID", esta característica es exclusiva del ID del Taxón cuando se realiza un mapeo de una fuente de datos al Taxón Core.
* **Cuadro de texto de Valor Constante** - para establecer el valor publicado de cualquier elemento no identificador de la extensión como valor único para cada registro de la fuente de los datos, asegúrese de que ningún valor sea seleccionado en el cuadro de selección del elemento fuente, e ingrese el valor constante deseado para el elemento de la extensión en el cuadro de texto a la derecha del cuadro de selección del elemento fuente. Ejemplo:
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMappingConstant.png' />
* **Cuadro de selección de Valor constante controlado** - si la columna de la derecha para el elemento de la extensión contiene un segundo cuadro de selección en lugar de un cuadro de texto, esto significa que el elemento se rige por un vocabulario controlado. En este caso, escoja un valor de la lista de vocabulario para utilizar como un valor constante en lugar de simplemente introducir una constante en un cuadro de texto.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMappingSelectConstant.png' />
* **Usar el DOI del recurso** - (Special constant controlled value)Es posible fijar el valor predeterminado del ID del conjunto de datos para que este sea igual al DOI del recurso. Esta opción solo aplica para extensiones que contengas el termino Darwin Core term <a href='http://rs.tdwg.org/dwc/terms/#datasetID'>datasetID</a>, como la extensión Occurrence. Para activar el cuadro de selección, asegúrese que no haya seleccionado ningún campo del conjunto de datos y que ningún valor constante haya sido ingresado. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMappingSourceDatasetID.png' />
* **Botón Detalle del Vocabulario** - los elementos de extensión que se rigen por un vocabulario controlado, tendrán un ícono entre el ícono de información y el cuadro de selección del elemento fuente. Haga clic en este ícono para abrir una página de Detalle de Vocabulario en una nueva ventana del navegador (o pestaña) en la que se encuentra una lista de los valores aceptados para el elemento de extensión con explicaciones y sinónimos alternativos en varios idiomas.
* **Muestra de los datos** - esta área muestra los valores reales de los primeros registros del elemento seleccionado de la fuente de datos, separados por espacios y el carácter “|”. Esto ayuda al usuario a comprender si el contenido del elemento de la fuente de datos es apropiado para el elemento de extensión al que ha sido mapeado.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMappingSourceSample.png' />
* **Traducción** - haga clic en el botón "Agregar" para abrir una página de Traducción del Valor, en la que distintos valores del elemento seleccionado de la fuente de datos, pueden ser traducidos a nuevos valores en el archivo generado por el IPT para este recurso de datos. Después de que las traducciones se han ingresado y guardado, la página Mapeo de Datos volverá a aparecer, y mostrará el texto como un enlace en lugar del botón "Agregar" para mostrar el número de valores que han sido traducidos con valores diferentes de los originales. Haga clic en este enlace para volver a abrir la página de , [[Traducción del Valor|IPT2ManualNotes_ES.wiki#Traducción del Valor]] para este elemento de extensión.

* **Filtro** - el filtro permite al usuario incluir sólo los registros que coincidan con un criterio establecido para uno de los elementos de la fuente de datos. Para utilizar el filtro, primero seleccione en la lista desplegable, si desea que el filtro se aplique **Después de traducción** o **Antes de traducción** (en otras palabras, después de aplicar la traducción en la fuente de datos, o antes – consulte la sección Traducción para obtener más detalles acerca de la traducción). A continuación, seleccione el elemento en el que se basa el criterio, utilizando el cuadro de selección a la izquierda. El cuadro de texto a la derecha puede contener un valor para comparar el valor del elemento en la fuente de datos. No incluya el valor con signos de puntuación. El segundo cuadro de selección permite al usuario elegir un operador de comparación entre los que figuran:
  * **IsNull** - Este operador es verdadero si el elemento de la fuente de datos está vacío. En este caso no se necesita un valor en el cuadro de texto de la derecha. Si hay un valor en el cuadro de texto, se ignorará.
  * **IsNotNull** - Este operador es verdadero si el elemento de la fuente de datos no está vacío. En este caso no se necesita un valor en el cuadro de texto de la derecha. Si hay un valor en el cuadro de texto, se ignorará.
  * **Equals** - Este operador es verdadero si el elemento de la fuente de datos es igual al valor en el cuadro de texto de la derecha. La equivalencia se evalúa basándose en la correspondencia de palabras, por lo tanto, si el valor de la fuente de datos para un registro es de 2.0 y el valor en el cuadro de texto es 2, el registro no se incluirá en el conjunto de datos filtrado.
  * **NotEquals** - Este operador es verdadero si el elemento de la fuente de datos no es igual al valor en el cuadro de texto de la derecha. La equivalencia se evalúa basándose en la correspondencia de palabras, por lo tanto, si el valor de la fuente de datos para un registro es de 2.0 y el valor en el cuadro de texto es 2, el registro se incluirá en el conjunto de datos filtrado.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceFilter.png' />
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceFilterEquals.png' />
* **Elementos requeridos** - Si hay propiedades requeridas que deban ser mapeadas para el Estándar o Extensión, estos tendrán sus nombres resaltados. Tenga en cuenta que la publicación fallará si el elemento basisOfRecord <a href='http://rs.tdwg.org/dwc/terms/#basisOfRecord'>basisOfRecord</a> no ha sido mapeada para el core de Occurrence. Además, un caso especial ocurre para el elemento del ID, el cual solo es requerido cuando se vinculan registros de dos fuentes.
Adicional a la información explicativa acerca de la extensión en la parte superior de la página y las dos columnas descritas anteriormente, la página Mapeo de Datos puede tener otras secciones, enlaces y botones:
* **Título del Recurso** - Haciendo clic en este enlace regresará a la página Vista General del Recurso, sin guardar los cambios pendientes.
* **Esconder Campos no Mapeados** - Este enlace eliminará de la vista en esta página, todos los elementos que aún no han sido mapeados, dejando sólo los que tienen un mapeo finalizado. Para ver nuevamente aquellos campos que no han sido mapeados, haga clic en el enlace "Mostrar todo".
* **Mostrar todo** - Este enlace hará que todos los elementos sean visibles, ya sean mapeados o no. Este enlace sólo aparece después de invocar el enlace "Esconder Campos no Asignados".
* **Ocultar clases redundantes** - Este filtro/enlace ocultará todos los campos que representen clases/grupos con términos redundantes. Una clase es redundante, si ya está incluida en la extensión del estándar. Para ver nuevamente los campos redundantes, haga clic en el enlace " Mostrar todas las clases".
* **Mostrar todas las clases** - Este filtro/enlace hará visibles todos campos que representan clases/grupos con términos redundantes. Este enlace sólo aparece después que se ha invocado el enlace "Ocultar clases redundantes".
* **Guardar** - hacer clic en cualquiera de los potenciales botones etiquetados "Guardar" realizará los cambios pendientes en la página.
* **Eliminar** - Hacer clic en este botón eliminará el enlace de una fuente de datos, no sólo los elementos mapeados, y volverá a la página "Vista General del Recurso".
* **Volver** - al hacer clic en este botón, se abandonará todos los cambios que se han hecho en esta página desde que fue guardada por última vez y volverá a la página "Vista General del Recurso".
* **Columnas sin mapear** - Esta sección contiene una lista de las columnas del conjunto o tabla de datos que no han sido mapeados. Esta lista puede ayudar a determinar si todos los datos que estaban destinados a ser mapeados lo lograron.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMappingUnmappedColumns.png' />
* **Clases con terminos redundantes** - Esta sección contiene una lista de las clases cuyos terminos son redundantes, esto significa que estas clases ya aparecen en la extensión del core. Idealmente un termino que ha sido mapeado en la extensión del core no necesita ser mapeado de nuevo en una extensión. Ocultar los terminos redundantes tiene el beneficio adicional de hacer la página de mapeo más sencilla para el usuario.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMappingRedundantClasses.png' />

##### Página de Traducción del Valor
Cuando está página se abre por primera vez, se muestra un mensaje en la parte superior que indica el número de valores de los elementos seleccionados en la fuente de datos, hasta 1000 valores. La página muestra el nombre y la descripción de la extensión de campo para el que se están realizando traducciones. Si el elemento se rige por un vocabulario controlado, aparecerá en la descripción del elemento, información sobre dicho vocabulario y un ícono para abrir una página de Detalle del Vocabulario (vea la explicación del botón Detalle del Vocabulario, arriba). Debajo de la descripción del elemento hay una tabla que muestra los distintos valores del elemento que se encuentra en la fuente de datos con el encabezado "Fuente del Valor" con cuadros de texto con el encabezado "Valor Traducido". Ingrese el valor al que debe ser traducido la Fuente del Valor en el cuadro de texto. El ícono en la izquierda del valor traducido del cuadro de texto indica si un valor suministrado existe en el vocabulario para este término. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceSourceTranslation.png' />

Vinculando la tabla de arriba y abajo con el siguiente conjunto de botones:
  * **Guardar** - Haga clic en este botón para guardar todos los cambios que se han hecho en esta página y volver a la página Mapeo de Datos.
  * **Eliminar** - Haga clic en este botón para eliminar todas las traducciones de este elemento y volver a la página Mapeo de Datos.
  * **Recargar** - Haga clic en este botón para buscar nuevamente la fuente de datos por valores distintos. Las traducciones existentes se conservan y los nuevos valores de la fuente de datos aparecen en la lista sin traducción.
  * **Autoasignar** - Este botón aparece sólo si el elemento se rige por un vocabulario controlado. Haga clic en este botón para diligenciar los Valores Traducidos automáticamente con los valores estándar, basados en sinónimos conocidos. Los valores de la fuente de datos para los cuales no existen sinónimos conocidos, permanecerán en blanco.
  * **Cancelar** - Haga clic en este botón para cerrar la página Traducción del Valor sin guardar ninguno de los cambios que se han realizado.

##### Página de Conceptos del Vocabulario
Esta página muestra una lista de los conceptos que se encuentran dentro del vocabulario. En el contexto del mapeo de los datos, muestra una lista de valores aceptados que pueden ser utilizados para los campos de la extensión. Cada concepto contiene una descripción, elementos Preferidos (en varios idiomas),  además de elementos alternativos (en varios idiomas).

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceVocabularyDetail.png' />

#### Metadatos
Esta área de la página "Vista General del Recurso" permite al usuario ver en el panel de la derecha la información básica de los metadatos del recurso, además de examinar y editar estos y otros metadatos en detalle, haciendo clic sobre el botón “Editar” que se encuentra en el panel izquierdo. Para más información acerca de los metadatos del recurso en el contexto GBIF, véase http://www.gbif.org/informatics/discoverymetadata/. Para ser publicados en la Red GBIF, todos los recursos requieren de un conjunto mínimo de metadatos descriptivos. Si falta alguno de los metadatos requeridos, la página "Vista General del Recurso" se abrirá con un mensaje de advertencia en el área de los "Metadatos".

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataMissing.png' />

Haciendo clic en el botón “Editar”, se abre la página "Metadatos Básicos", la primera de una serie de páginas de metadatos. Cada página aparecerá en secuencia cuando se hace clic en el botón “Guardar”, una vez haya finalizado el ingreso de los datos en cualquiera de las páginas de metadatos. Guardando los metadatos al final de las páginas de metadatos, regresará nuevamente a la página "Metadatos Básicos". En cualquiera de las páginas de metadatos, al hacer clic sobre el botón “Cancelar”, no se tendrá en cuenta los cambios hechos en aquella página y retornará a la página "Vista General del Recurso". Para una referencia y navegación fácil, a la derecha de cada página de metadatos hay una columna con la lista de enlaces a todas las páginas de metadatos. Haciendo clic en los enlaces indicados, se puede abrir cualquiera de las páginas de metadatos.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataPagesList.png' />

A continuación se encuentra una lista de las páginas de metadatos y sus contenidos:

#### Metadatos Básicos
Esta es la única página de metadatos que contiene campos que son obligatorios para el IPT. El título y la descripción del recurso son obligatorios. Los tres principales contactos del recurso también deben ser descritos aquí: Contacto del Recurso, Creador del Recurso y Proveedor de los Metadatos. Para cada contacto, se debe suministrar mínimo el apellido, una posición o una organización, antes de lograr hacer público el recurso. Para que el recurso sea publicado efectivamente, la(s) persona(s) u organización(es) responsable(s) de la creación del recurso, también deben ser adicionadas como una parte asociada bajo el rol “publicador”.
Todos los campos de esta página deben ser completados. Por favor note que para cada contacto se debe proporcionar al menos un apellido, una posición o una organización.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataBasicMetadata.png' />

* **Título (obligatorio)** - El título del recurso. Este título aparecerá como el Nombre del recurso en todo el IPT. El título también aparecerá en el Registro GBIF.
* **Organización Publicadora** - La organización responsable de la publicación (producción, liberación, mantenimiento) este recurso. Se utilizará como organización publicadora del recurso cuando se haga el registro en GBIF y al someter los metadatos durante el registro de los DOI. También se utilizará para generar la referencia del recurso (si la generación automática está activada), así que considere la importancia de este rol. Por favor tenga en cuenta que su selección no puede ser cambiada después de que el recurso haya sido registrado en GBIF o que le haya sido asignado un DOI.
* **Frecuencia de actualización** - La frecuencia con la que se realizan cambios en el recurso luego de que el recurso inicial ha sido publicado. Para su comodidad, este valor se asignará por defecto para el intervalo de la autopublicación (si se ha activado la autopublicación), sin embargo, este puede ser modificado posteriormente. Por favor tenga en cuenta que una descripción de la frecuencia de mantenimiento del recurso también se pueden documentar en la sección de Metadatos Adicionales.
* **Tipo** - El tipo del recurso. El valor de este campo depende del mapeo del recurso y no es posible editarlo si el mapeo Darwin Core ya se ha hecho. Si el tipo de recurso deseado no se encuentra en la lista, puede elegir el campo "otro". Puede ver más información en el título “Configurar Estándares y Extensiones" de la sección "Menú Administración".
* **Subtipo** - El subtipo del recurso. Las opciones de este elemento dependen del elemento Tipo. Si el subtipo deseado no se encuentra en la lista, puede dejar el campo con la selección por defecto.
* **Idioma de los Metadatos** - El idioma en que está escrito el documento de los metadatos.
* **Idioma de los Datos** - El idioma principal de los datos. (No el documento de los metadatos).
* **Licencia de los datos** - La licencia que se aplica a un conjunto de datos proporciona una forma estandarizada de definir el uso apropiado de su trabajo. GBIF invita a los publicadores a adoptar la licencia menos restrictiva posible entre tres opciones de lectura mecánica (CC0 1.0, CC-BY 4.0 o CC-BY-NC 4.0), para fomentar de la manera más amplia posible el uso y aplicación de los datos. Infórmese <a href='http://www.gbif.org/terms/licences'>aquí</a>. Si no es posible que usted elija una de las tres opciones y su conjunto de datos contiene registros biológicos, no podrá registrar su conjunto de datos en GBIF o hacerlo globalmente visible a través de GBIF.org. Si considera que no puede seleccionar alguna de las tres opciones, póngase en contacto con el Secretariado de GBIF en participation@gbif.org. Para más información acerca de cómo aplicar una licencia a nivel de registro consulte [[How To Apply a License To a Dataset|IPT2ApplyingLicense.wiki]] en la página del wiki del IPT. Para cambiar el set de licencias que aparecen por predeterminadas consulte [[How To Add a New License|IPT2License.wiki]] en la página del wiki del IPT.
* **Descripción** - Una breve descripción del recurso que está siendo documentado, separado en párrafos. Debe proveer suficiente información para ayudar a los potenciales usuarios de los datos a entender si estos pueden ser de su interés. 
* **Contactos del Recurso** - La lista de contactos representa a las personas y organizaciones que custodian o deben ser contactadas para obtener más información sobre el recurso, de la misma manera son aquellos que deberían resolver los posibles problemas con el recurso o sus datos. 
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataResourceContact.png' />
  * **Añadir nuevo(a) contacto del recurso** - Hacer clic en este enlace abre un nuevo formato para ingresar un contacto del recurso adicional.
  * **Eliminar este contacto del recurso** -Hacer clic en este enlace hará que se elimine el formato de contacto que se encuentra inmediatamente debajo del enlace.
  * **Nombre** - El nombre del contacto del recurso.
  * **Apellido** (obligatorio si se dejan vacíos la Posición y la Organización, obligatorio si es suministrado el Nombre) - El apellido del contacto del recurso.
  * **Posición** (obligatorio si se dejan vacíos el Apellido y la Organización) - El título relevante o cargo que tiene el contacto del recurso.
  * **Organización** (obligatorio si se dejan vacíos el Apellido y la Posición) - La organización o institución con la cual está asociado el contacto del recurso. Si la organización o institución es una de las registradas en el Registro GBIF, esta no será obligatoria. De lo contrario, la organización debe ser ingresada en el campo de texto en vez de seleccionarla de una lista de organizaciones registradas.
  * **Dirección** -  Dirección física del contacto del recurso.
  * **Ciudad** - la ciudad, municipio o localidad física similar de la dirección del contacto del recurso.
  * **Estado/Provincia** - el departamento, estado, provincia o región geográfica similar de la dirección del contacto del recurso.
  * **País** - El nombre del país o región administrativa de primer nivel de la dirección del contacto del recurso.
  * **Código Postal** -  El código postal (e.g., código zip) de la dirección del contacto del recurso.
  * **Teléfono** - El número de teléfono internacional preferido del contacto del recurso.
  * **Correo Electrónico** - La dirección de correo electrónica preferida del contacto del recurso.
  * **Página Web** - La URL a una página web del contacto del recurso.
  * **Perfil en línea** - La URL del perfil en línea al que pertenece el identificador personal. Hay cuatro directorios predeterminados para escoger: ORCID, ResearchID, LinkedIn, y Google Scholar. Si desea cambiar los directorios predeterminados del IPT consulte [[How To Add a New User ID Directory|IPT2UserId.wiki]]en la página del wiki del IPT.
  * **Identificador Personal** - Un ID ORCID de 16 dígitos (por ejemplo 0000-0002-1825-0097) u otro identificador que enlaza esta persona con el repositorio del perfil en línea especificado.
* **Creadores del Recurso** - La lista de creadores representa a las personas y organizaciones que han creado el recurso, en orden de prioridad. La lista será utilizada para generar la referencia del recurso (si la generación automática está activada). Si la persona o la organización es la misma del contacto del recurso, todos los detalles anteriores pueden ser copiados a los campos equivalentes en la sección creadores del recurso haciendo clic en el enlace "Copiar los datos del contacto del recurso". 
El formato de creadores del recurso tiene los mismos campos obligatorios que el contacto del recurso. Consulte las explicaciones de los campos que se encuentran en la parte superior en los detalles del Contacto del recurso.**Nota**: la personasn u organizaciones responsables de la creación del recurso, como aparece en el IPT y para la publicación efectiva del recurso pueden agregarse como partes asociadas con el rol de 'publicador'.
* **Proveedor de los Metadatos** - El proveedor de los metadatos es la persona u organización responsable de producir los metadatos del recurso. Si la persona u organización es la misma del contacto del recurso, todos los detalles de este último pueden ser copiados en los campos equivalentes para el proveedor de los metadatos, haciendo clic sobre el enlace llamado “copiar datos del contacto”. El proveedor de los metadatos tiene los mismos campos y requerimientos del contacto del recurso. Consulte las explicaciones de los campos que se encuentran en la parte superior en los detalles del Contacto del recurso.

#### Cobertura Geográfica
Esta página de metadatos contiene información acerca del área geográfica cubierta por el recurso. La página contiene un mapa y campos asociados que permiten al usuario establecer la cobertura geográfica. A continuación se muestra una imagen del contenido de la página "Cobertura Geográfica", seguida por una explicación de los campos.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataGeographicCoverage.png' />
* **Mapa de cobertura** - Si está conectado a Internet, aparecerá en la página "Cobertura Geográfica", un Mapa Google de la Tierra. Este mapa muestra un recuadro con puntos de control (marcadores) en las esquinas opuestas. Las esquinas corresponden a los valores de Latitud y Longitud de los campos explicados a continuación. Haciendo clic sobre uno de los marcadores y desplazándolo a una nueva posición, se podrán establecer los límites geográficos del recuadro. Los valores correspondientes a latitud y longitud cambiarán a los establecidos en el mapa con el recuadro. Ambos marcadores pueden ser desplazados en este sentido. El mapa tiene características de visualización comunes a las de un Mapa Google, incluyendo una barra de escala, un menú para seleccionar los diferentes estilos de visualización (mapa, imagen satélite, etc., y botones para acercar (+) y alejar (-).
* **Establecer cobertura global** - Haciendo clic en este cuadro, la cobertura geográfica cambia a una cobertura entera de la Tierra.
* **Longitud Mínima/Longitud Máxima/Latitud Mínima/Latitud Máxima** - Estos cuatro cuadros de texto corresponden a las esquinas del recuadro que delimitan el área cubierta por el recurso. Los valores a ingresar en estos campos deben ser grados decimales (e.g., 45.2345), con los valores límites estándar de latitud -90 a +90 (Latitud Mínima/Latitud Máxima) y longitud -180 a +180 (Longitud Mínima/Longitud Máxima), con latitudes positivas en el hemisferio norte y longitudes positivas al oriente del Meridiano de Greenwich de la Línea internacional de cambio de fecha. Estos valores podrán ser establecidos en el mapa manipulando los marcadores del recuadro delimitador, pero si se desea, valores válidos pueden ser ingresados en los campos de texto directamente. El mapa se actualizará cuando la información en la página haya sido guardada, haciendo clic en “Guardar”.

#### Cobertura Taxonómica
Esta página de metadatos permite al usuario ingresar información acerca de uno o más grupos de taxa cubiertos por el recurso, donde cada uno es llamado como una cobertura taxonómica. Cada cobertura consiste en una descripción y lista de taxa, donde cada taxón consta de un nombre del taxón (nombre científico o común) y una categoría taxonómica. Antes de que sea creada alguna cobertura taxonómica, la página mostrará un enlace denominado “Añadir nuevo(a) cobertura taxonómica”. Haciendo clic sobre este enlace, se mostrará un cuadro de texto para la descripción y varios enlaces. A continuación se muestra una imagen de la página "Cobertura Taxonómica" antes de ingresar algún dato, seguida por explicaciones para los campos vistos en la página en este estado.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTaxonomic.png' />
* **Eliminar cobertura taxonómica** -  Haciendo clic en este enlace, se elimina la cobertura taxonómica que está inmediatamente debajo del enlace, incluyendo la descripción, la lista y todos los taxones ingresados.
* **Descripción** - Una descripción textual de una categoría taxonómica de los taxones representados por el recurso. Cada cobertura taxonómica tiene su propia descripción. Esta información puede ser proveída en lugar de, o para argumentar la información contenida en los otros campos de la página.
* **Añadir varios taxa** - Este enlace adiciona un cuadro de texto a la página, llamado “Lista de taxa”.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTaxonList.png' />
* **Lista de taxa** - este cuadro de texto permite a los usuarios ingresar una lista de taxa con un taxón por línea, usando la tecla ENTER dentro del cuadro de texto. Los taxones ingresados en esta lista son tratados como nombres científicos.
* **Agregar** - Este botón procesa los valores ingresados en el cuadro de texto “Lista taxonómica” y crea nombres científicos para cada uno de ellos dentro de la cobertura taxonómica.
* **Añadir nuevo(a) taxón** -Este enlace adiciona campos para ingresar un solo taxón a la cobertura geográfica - cuadros de texto para el Nombre Científico y Nombre Común, un cuadro de selección para la Categoría Taxonómica y un ícono de papelera. El taxón puede contener alguna combinación de nombre científico y común con una categoría taxonómica opcional.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataSingleTaxon.png' />
* **Nombre Científico** - Este cuadro de texto está destinado para el nombre científico del taxón.
* **Nombre Común** - Este cuadro de texto está destinado para el nombre común del taxón.
* **Categoría** - Este cuadro de texto está destinado para la categoría taxonómica del taxón.
* **Ícono de Papelera** <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Control-TrashIcon.png' /> -  Al hacer clic en el ícono se eliminarán los datos asociados al taxón (nombre científico, nombre común, y categoría) que se encuentran a la izquierda de ícono de la cobertura taxonómica.
* **Añadir nuevo(a) cobertura taxonómica** - Haciendo clic sobre este enlace, se inicia una nueva cobertura taxonómica como se describió anteriormente, con un cuadro de texto marcado como “Descripción” y enlaces a “Añada varios taxones” y “Añadir nuevo(a) taxón”.

#### Cobertura Temporal
Esta página de metadatos contiene información acerca de una o más fechas, rangos de fechas o nombres de periodos de tiempo cubiertos por el recurso, donde cada uno es llamado una cobertura temporal. Las coberturas pueden referirse a tiempos durante el cual la colección o conjunto de datos fue ensamblado (Fecha Única, Rango de Fechas y Periodo de Formación) o a tiempos durante los cuales estaban vivas las entidades biológicas del conjunto de datos o colección (Época de existencia). Antes que sea creada alguna cobertura temporal para el recurso, la página mostrará únicamente un enlace marcado como “Añadir nuevo(a) cobertura temporal”. Haciendo clic sobre este enlace se mostrará, en el cuadro de selección, el tipo de cobertura temporal predeterminado “Fecha”, un cuadro de texto marcado como “Fecha única”, un ícono de calendario y dos enlaces. A continuación se muestra una imagen de la página "Cobertura Temporal" antes de ingresar algún dato, seguida por explicaciones para los campos vistos en la página en este estado.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTemporalCoverages.png' />

* **Añadir nuevo(a) cobertura temporal** - Haciendo clic sobre este enlace, se adiciona una nueva cobertura temporal.
* **Eliminar cobertura temporal** - Haciendo clic sobre este enlace, se elimina la cobertura temporal que está inmediatamente debajo del enlace.
* **Tipo de Cobertura Temporal** - Elija una de las opciones en el cuadro de selección para establecer el tipo de cobertura temporal, el cual puede consistir de una fecha simple, un rango de fechas, un periodo de formación, o un periodo de vida. Seleccionado un tipo, se revelarán los campos apropiados para la elección como se explica a continuación.
  * **Fecha** - Cuando una cobertura temporal es creada por primera vez, este es el tipo de cobertura temporal que se muestra predeterminadamente. Este tipo está destinado para representar una cobertura que abarca un día. Seleccionando este tipo, se revela un cuadro de texto para una Fecha única con un ícono de calendario a la derecha en el cual se puede seleccionar una fecha determinada.
    * **Fecha Única** - Este cuadro de texto está destinado para una sola fecha en uno de los formatos de fecha soportados. Para seleccionar una fecha, haga clic en el ícono de calendario y elija una fecha, o ingrese la fecha manualmente. Para saber que formatos de fechas son soportados, abra el ícono de información. Ejemplo: 2012-12-31 para el 31 de Diciembre de 2012 en el calendario de la nueva era.
    <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTemporalCoverageSingleDate.png' />
  * **Rango de Fechas** - Esta cobertura temporal sirve para describir el período de tiempo en el que se colectaron los datos o ejemplares de la colección. Seleccionando este tipo de cobertura temporal, se revela un cuadro de texto para una Fecha Inicial y otro para un Fecha Final, cada uno con un ícono de calendario a la derecha, en el cual puede ser seleccionada la fecha deseada.
    * **Fecha Inicial** - Este cuadro de texto está destinado para la fecha en que comenzó la cobertura, en uno de los formatos de fecha soportados. Para seleccionar una fecha, haga clic sobre el ícono del calendario y elija una fecha o ingrésela manualmente. Para saber que formatos de fechas son soportados, abra el ícono de información. Ejemplo: 2012-12-31 para el 31 de Diciembre de 2012 en el calendario de la nueva era.
    * **Fecha Final** - Este cuadro de texto está destinado para la fecha en que finalizó la cobertura, en uno de los formatos de fecha soportados. Para seleccionar una fecha, haga clic sobre el ícono del calendario y elija una fecha o ingrésela manualmente. Para saber que formatos de fechas son soportados, abra el ícono de información. Ejemplo: 2012-12-31 para el 31 de Diciembre de 2012 en el calendario de la nueva era.<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTemporalCoverageDateRange.png' />
  * **Periodo de Formación** - Este tipo de cobertura temporal está destinado para alojar un periodo de tiempo determinado u otro durante el cual una colección o conjunto de datos fue creado. Ejemplos: “Victoriano”, “1922-1932”, “c. 1750”.
  <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTemporalCoverageFormationPeriod.png' />
  * **Época de existencia** - Este tipo de cobertura temporal está destinado para alojar un periodo de tiempo determinado u otro durante el cual se encontraban vivas las entidades biológicas de la colección o conjunto de datos, incluyendo periodos de tiempo paleontológicos. Ejemplos: “1900-1950”. “Dinastía Ming”, “Pleistoceno”.<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataTemporalCoverageLivingTimePeriod.png' />

#### Palabras Clave
Esta página de metadatos permite a los usuarios crear uno o más conjuntos de palabras clave acerca del recurso. Cada conjunto de palabras clave puede ser asociado con un tesauro o vocabulario que rige los términos en la lista.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataKeywords.png' />
* **Eliminar conjunto de palabras clave** - haciendo clic sobre este enlace, se elimina el conjunto de palabras clave que está inmediatamente debajo del enlace.
* **Tesauro/Vocabulario** - Se ingresa el nombre de un tesauro o vocabulario controlado, desde el cual se derivó el conjunto de palabras clave. Si las palabras clave no están regidas por un tesauro o vocabulario, se ingresa “n/a”, que indica, no aplica. Ejemplo: Tesauro IRIS.
* **Lista de Palabras Clave** - Se ingresa una lista de palabras clave separadas por comas, que describen o están relacionadas al recurso.
* **Añadir nuevo(a) conjunto de palabras clave** - Haciendo clic sobre este enlace, se adiciona un nuevo conjunto de palabras clave.

#### Partes Asociadas
Esta página de metadatos contiene información acerca de una o más personas u organizaciones asociadas con el recurso, además de las ya incluidas en la página "Metadatos Básicos". Muchos de los campos en esta página son comunes con aquellos para el Contacto del Recurso en la página de[[Metadatos Básicos|IPT2ManualNotes_ES.wiki#Metadatos Básicos]]. Las explicaciones para el resto de los campos son dadas a continuación.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataAssociatedParties.png' />
* **Copiar datos del contacto** - Si esta persona u organización es la misma del Contacto del Recurso en la página "Metadatos Básicos", entonces haciendo clic sobre este enlace pueden ser copiados en los campos equivalentes, todos los detalles para la parte asociada.
* **Eliminar parte asociada** - Haciendo clic sobre este enlace, se elimina la parte asociada que está inmediatamente debajo del enlace.
* **Rol** - Este cuadro de texto contiene una lista de posibles roles que la parte asociada pueda tener en relación al recurso. Haciendo clic sobre el ícono de información que está a la izquierda, se pueden ver las descripciones de los posibles roles. En el cuadro de selección, elija el rol más apropiado para la parte asociada.
* **Añadir nuevo(a) parte asociada** - Haciendo clic sobre este enlace, se adiciona una nueva parte asociada.

#### Datos del Proyecto

Esta página de metadatos contiene información acerca de un proyecto bajo el cual fueron producidos los datos del recurso. Esto es apropiado únicamente si los datos fueron producidos bajo un solo proyecto.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataProjectData.png' />
* **Título** - el título del proyecto.
* **Identificador** - Un identificador único para el proyecto de investigación. Este puede usarse para unir múltiples instancias de conjuntos de datos/EML que están asociados de alguna manera al mismo proyecto, por ejemplo una serie de monitoreo. La naturaleza de la asociación puede ser descrita en la descripción del proyecto.
* **Descripción** - Resumen sobre el proyecto de investigación.
* **Fuentes de financiación** - Información acerca de la(s) fuente(s) de financiación del proyecto y sus detalles (títulos y números de las becas, números de contrato, nombres y direcciones, periodo activo, etc..
* **Descripción del Área de Estudio** - Una descripción del área física donde ocurrió el proyecto (ubicación física, hábitat, cobertura temporal, etc..
* **Descripción del Diseño** - Una descripción general del diseño de la investigación. Puede incluir un informe detallado de objetivos, motivaciones, teoría, hipótesis, estrategia, diseño estadístico y trabajo en campo.
* **Personas Asociadas al Proyecto** - Esta lista representa a las personas involucradas en el proyecto.
  * **Nombre** - El nombre de la persona asociada al proyecto.
  * **Apellido** - El apellido de la persona asociada al proyecto.
  * **Perfil en línea** - La URL del perfil en línea al que pertenece el identificador personal. Hay cuatro directorios predeterminados para escoger: ORCID, ResearchID, LinkedIn, y Google Scholar. Si desea cambiar los directorios predeterminados del IPT consulte [[How To Add a New User ID Directory|IPT2UserId.wiki]]en la página del wiki del IPT.
  * **Identificador Personal** - Un ID ORCID de 16 dígitos (por ejemplo 0000-0002-1825-0097) u otro identificador que enlaza esta persona con el repositorio del perfil en línea especificado.
   * **Rol** - El rol de la persona asociada al proyecto. Haga clic en el ícono de información al lado izquierdo de la caja de selección para ver las descripciones de los posibles roles. Elija el rol más apropiado para la persona que nombró en la parte superior. 

####  Métodos de Muestreo

Esta página de metadatos contiene información acerca de los métodos de muestreo en general, y acerca de los pasos específicos del muestreo de los datos contenidos en el recurso. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataSamplingMethods.png' />
* **Área de Estudio** - Una descripción de las condiciones físicas y temporales bajo las cuales ocurrió el muestreo. El área geográfica de estudio generalmente sustituye el área documentada en “Descripción del área de estudio” de la sección “Datos del Proyecto”.
* **Descripción del Muestreo** - Descripción de los protocolos de muestreo usados para originar los datos del recurso. La descripción puede ser similar a los procedimientos de muestreo encontrados en la sección de métodos de un artículo científico.
* **Control de Calidad** - Una descripción de las acciones tomadas para controlar o evaluar la calidad de los datos que resultan de la sección "Metodología paso a paso".
* **Metodología paso a paso** - Este campo describe los elementos que documentan la serie de métodos y procedimientos utilizados en el estudio, y los pasos que condujeron a la producción de los datos del archivo. Estos incluyen descripciones textuales de los procedimientos, la literatura relevante, software, instrumentación, conjuntos de datos y las medidas de control de calidad adoptadas. Cada método debe ser descrito suficiente detalle para, si es necesario, permitir a otros investigadores interpretar y replicar el estudio.
* **Añadir nuevo(a) paso metodológico** -  Haciendo clic sobre este enlace, se adiciona a la página un cuadro de texto llamado “Descripción de la metodología paso a paso”. Un paso metodológico es uno de una serie de pasos llevados a cabo para el muestreo. Se pueden adicionar tantos pasos metodológicos como se desee.
* **Eliminar paso metodológico** - Haciendo clic sobre este enlace, se elimina el paso metodológico (cuadro de texto Descripción de la Metodología Paso a Paso) que está inmediatamente debajo del enlace.

#### Referencias
Esta página de metadatos contiene información acerca de cómo citar el recurso, así como la bibliografía relacionada al conjunto de datos como publicaciones que fueron usadas en, o resultaron de la producción de los datos. Cada Referencia, ya sea para el recurso o para la bibliografía, consta de un Identificador de la Referencia único y opcional, y de una citación textual tradicional. El Identificador de la Referencia permite que la cita pueda ser encontrada en fuentes digitales. Antes que sea ingresado algún dato de las "Referencias", la página mostrará campos de texto para el Identificador de la Referencia del recurso, para la Referencia del Recurso, un encabezado denominado “Bibliografía” y un enlace llamado “Añadir nueva referencia”.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataCitations.png' />
* **¿Cómo referenciar este recurso?** - La referencia que debe usarse cuando se haga uso del conjunto de datos.
  * Ejemplo de la referencia con el creador institucional: 
  "Instituto de biodiversidad de Ontario (2011) Aves migratorias de Ontario. Versión 1.2. Universidad de Guelph. Conjunto de datos/Registros biológicos. http://DX.Doi.org/10.5886/qzxxd2pa "
  * Ejemplo de la referencia con 9 creadores:
  " Brouillet L, Desmet P, Coursol F, Meades SJ, Favreau M, aniones M, Belisle P, C Gendreau, Shorthouse D (2010) Base de datos de las plantas vasculares de Canadá. Versión 1.2. Universite de Montreal Biodiversity Centre. Conjunto de datos/Lista de especies. http://Doi.org/10.5886/1bft7W5f"
* **Generación automática Desactivada - Activar** - Active la generación automática para que el IPT autogenere la referencia por usted. El formato de la referencia utilizado en la generación automática se basa en el formato recomendado: referencia de DataCite y satisface la "Joint Declaration of Data Citation Principle". Este formato incluye un número de versión, que es importante especialmente para los conjuntos de datos que se actualizan continuamente. Puede encontrar más información acerca del formato de referencias en la página del wiki del IPT del formato de referencia[[IPT Citation Format|IPT2Citation.wiki]].
* **Identificador de la Referencia del Recurso** -Un DOI, URI u otro identificador persistente que se resuelva en el conjunto de datos en línea. Se recomienda incluir el identificador en la citación. Tenga en cuenta que si el recurso tiene un DOI asignado (utilizando el IPT), el IPT establece el DOI como el identificador de la cita y no puede ser editado.
* **Referencias Bibliográficas** - referencias de otros recursos relacionados con lo que se utilizaron en la creación de este recurso.
* **Añadir nueva referencia bibliográfica** -  Haciendo clic sobre este enlace, se adicionan cuadros de texto requeridos para una cita adicional en la bibliografía.
  * **Referencias Bibliográficas** - Referencias de otros recursos relacionados con lo que se utilizaron en la creación de este recurso.
  * **Identificador de la Referencia Bibliográfica** - Un DOI, URI u otro identificador persistente que se resuelva en el recurso externo en línea. Se debe utilizar en la citación, generalmente al final.

  <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataBibCitations.png' />

  * **Eliminar esta referencia bibliográfica** - Haciendo clic sobre este enlace, se elimina la referencia que está inmediatamente debajo del enlace.

#### Datos de la Colección
Esta página de metadatos contiene información acerca de la historia natural física de colección asociada al recurso (si la hay), así como la lista de tipos de unidades en la colección, llamadas Unidades Curatoriales y una información resumida acerca de estos. Antes que sea ingresado algún dato de la Colección, la página mostrará campos de texto y de selección para cuatro aspectos de la colección (Nombre de la Colección, Identificador de la Colección, Identificador de la Colección Parental y Método de Preservación de los Especímenes), un encabezado para la sección de las Unidades Curatoriales y un enlace llamado “Añadir nueva unidad curatorial”.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataCollectionData.png' />

* **Colecciones** - La lista de colecciones representa las colecciones en las que se basa este recurso.
  * **Añadir nueva colección** - haciendo clic sobre este enlace, se adicionan los cuadros de texto requeridos para agregar una colección adicional a la sección de Colecciones. 
  * **Nombre de la Colección** - Nombre oficial de la Colección en el idioma local.
  * **Identificador de la Colección** - El URI (LSID o URL) de la colección. En RDF, utilizado como URI del recurso de la colección.
  * **Identificador de la Colección Parental** - Identificador para la colección parental de esta subcolección. Permite la construcción de la jerarquía de colecciones y subcolecciones. Por favor ingrese el valor "No aplica", si esta colección no tiene una colección parental.
  * **Eliminar esta(e) colección** - Haciendo clic sobre este enlace, se eliminará la colección que está inmediatamente debajo del enlace. <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataCollections.png' />
* **Métodos de preservación de los ejemplares** - palabra clave del vocabulario Método de Preservación de los Especímenes de GBIF, indicando el proceso o técnica utilizada para prevenir deterioro físico de colecciones no vivientes. Si la colección tiene más de un método de preservación, seleccione el predominante. Recuerde que puede incluir una lista de métodos de preparación y preservación para un espécimen en el elemento "Preparaciones" del mapeo de datos DwC (http://rs.tdwg.org/dwc/terms/preparations). Por favor, no seleccione ningún tratamiento para colecciones vivas. Este puede relacionarse con la(s) unidad(es) curatorial(es) en la colección.
  * **Añadir nuevo(a) método de preservación** - Haciendo clic sobre este enlace, se adicionan los cuadros de texto requeridos para agregar una colección adicional a la sección de Métodos de preservación de los ejemplares.  
  * **Eliminar este método de preservación** - Haciendo clic sobre este enlace, se elimina la referencia que está inmediatamente debajo del enlace.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataPreservationMethods.png' />
* **Unidades curatoriales** - Esta sección contiene una lista de cero a más unidades curatoriales, donde cada una consiste de un tipo de unidad (espécimen, lote, caja, frasco, etc. y un conteo especificado por uno o dos Tipos de Métodos posibles. En general, esta sección resume por tipo los contenidos físicos de la colección.
  * **Añadir nueva unidad curatorial** -  Haciendo clic sobre este enlace, se adicionan en la sección de Unidades Curatoriales los cuadros de texto requeridos para una unidad curatorial adicional. Cuando una nueva unidad curatorial es adicionada, el Tipo de Método seleccionado predeterminadamente es “Rango de Conteo”.
  * **Tipo de Método** - Este cuadro de selección permite al usuario seleccionar entre dos métodos para especificar el número de unidades de un tipo dado, ya sea un rango de conteo o un conteo con incertidumbre. Después de hacer la selección, aparecerán cuadros de texto apropiados permitiendo documentar el método de conteo.
    * **Rango de Conteo** - Este tipo de método permite al usuario establecer los límites inferior y superior para un número de unidades de un tipo de unidad en particular. Véase la imagen anterior.
      * **Entre** - En este cuadro de texto se ingresa el límite inferior del número de unidades.
      * **y** - En este cuadro de texto se ingresa el límite superior del número de unidades.
    * **Conteo con incertidumbre** - Este método permite al usuario establecer un número de unidades de un tipo de unidad en particular, con una incertidumbre por encima o debajo de aquel número.
      * **Conteo** - En este cuadro de texto se ingresa el número de unidades promedio aproximado.
      * **+/-** - Se ingresa el número de unidades en incertidumbre respecto al número ingresado en el campo de conteo, para crear un rango de posibles conteos del tipo de unidad en particular.
    * **Tipo de unidad** - Un solo tipo de unidad (espécimen, lote, placa, caja, frasco, etc. representado por el tipo de método y conteo.
  * **Eliminar unidad curatorial** - Haciendo clic sobre este enlace, se elimina la unidad curatorial que está inmediatamente debajo del enlace.<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataCuratorialUnits.png' />

#### Enlaces Externos
Esta página de metadatos contiene enlaces a la página web del recurso, así como enlaces alternos al recurso (archivos de bases de datos, hojas de cálculo, datos relacionados, etc. y la información acerca de ellos. Antes que sea ingresado algún enlace externo, la página mostrará un campo de texto para la URL del Recurso y un enlace llamado “Añadir nuevo(a) enlaces externos”.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataExternalLinks.png' />

* **URL del Recurso** - Se ingresa la URL completa y actualizada de la página web que contiene información acerca del recurso o conjunto de datos.
* **Otros formatos de datos** - Enlaces al recurso en otros formatos (e.g., bases de datos, hojas de cálculo, archivos nexus, datos enlazados, etc..)
  * **Añadir nuevo enlace externo** -  Haciendo clic sobre este enlace, se adicionan cuadros de texto requeridos para un enlace externo adicional.
  * **Nombre** - el nombre del archivo o conjunto de datos.
  * **Conjunto de caracteres** - El nombre o código para la codificación de caracteres (e.g., ASCII, UTF-8).
  * **URL de Descarga del Archivo** - URL desde el cual puede ser descargado el archivo en el formato mencionado.
  * **Formato del Archivo** - El nombre o código del formato del documento o archivo (e.g., CSV, TXT, XLS, Microsoft Word, MySQL).
  * **Versión del Formato del Archivo** -  La versión del formato del documento o archivo de datos en el campo Formato de Datos (e.g., 2003, 5.2).
  * **Eliminar este enlace externos** - Haciendo clic sobre este enlace, se elimina el enlace externo que está inmediatamente debajo del enlace.

#### Metadatos Adicionales
Esta página de metadatos contiene información acerca de otros aspectos del recurso que no fueron capturados con las otras páginas de metadatos, incluyendo identificadores alternativos para este. Antes que sea ingresado algún identificador alternativo, la página mostrará campos de texto para los metadatos adicionales, un encabezado para el área de identificadores alternativos y un enlace llamado “Añadir nuevo Identificador Alternativo”.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceMetadataAdditionalMetadata.png' />
* **Fecha de creación** - La fecha en la cual la primera versión del recurso fue publicada o disponible al público. Se utilizará como el año de publicación en la referencia del recurso. Este valor se genera automáticamente cuando se realiza la publicación y no puede ser editado.
* **Última fecha de publicación** - La fecha en la que el recurso fue publicado por última vez. Este elemento se actualiza de manera automática cada vez que el recurso es actualizado. (Ver la sección[[ Versión del Archivo DwC|IPT2ManualNotes_ES.wiki#Versión del Archivo DwC]]).
* **URL del logo del recurso** - Un logo que represente al recurso. La URL del logo puede ser usada para cargar el recurso. Si no se posee una URL para el logo del recurso, se puede subir un archivo de imagen desde el disco duro.
* **Propósito** - Resumen de los propósitos por los cuales se consolidó el conjunto de datos. Incluye los objetivos de la creación del conjunto de datos y el alcance esperado del mismo.
* **Descripción de mantenimiento** - Una descripción de la frecuencia de mantenimiento de este recurso. Esta descripción complementa la frecuencia de actualización seleccionada en la sección de Metadatos Básicos.
* **Información adicional** - Cualquier información que no esté descrita en los demás campos de los metadatos, p. ej.: historia del proyecto, publicaciones que han usado estos datos, información sobre datos relacionados publicados en otro lugar, etc.
* **Identificador Alternativo** - Esta sección contiene una lista de identificadores alternos o adicionales para el recurso. Cuando el recurso es publicado, la URL del IPT del recurso es adicionada a la lista de identificadores. Cuando un recurso es registrado en el Registro GBIF, el registro único del recurso también es adicionado a la lista de identificadores. Si el recurso representa un recurso existente ya registrado en el Registro GBIF, el UUID del recurso ya registrado puede ser adicionado a la lista de identificadores. Esto permitirá al recurso del IPT actualizar el recurso existente durante el registro, en vez de registrar un recurso completamente nuevo. Para más información sobre cómo migrar un recurso, véase la sección [[Migración de un Recurso|IPT2ManualNotes_ES.wiki#Migración de un Recurso]].
  * **Añadir nuevo identificador alternativo** -  Haciendo clic sobre este enlace, se adicionan en la sección los cuadros de texto requeridos para agregar un identificador alternativo 
  * **Identificador Alternativo** - El texto para el identificador alterno del recurso (e.g., una URL, UUID o cualquier otro valor clave único).
  * **Eliminar este identificador alternativo** -  Haciendo clic sobre este enlace, se eliminará el  identificador alternativo inmediatamente abajo. 

#### Versiones publicadas
Esta área de la página "Vista General del Recurso", permite a un usuario publicar una nueva versión del recurso.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublish.png' />

La **sección a la izquierda** controla la forma como las versiones del recurso son publicadas. El botón Publicar puede ser usado para publicar nuevas versiones voluntariamente, mientras que la autopublicación permite publicar nuevas versiones en una fecha programada. Para más explicaciones acerca de esta sección, consulte la información a continuación.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublishLeftSide2.png' />
* **Publicación por demanda**: - Haciendo clic en el botón "Publicar" se  desencadenará la publicación de una nueva versión.  El botón publicar estará activado si 1) los metadatos requeridos para el recurso están completos, y 2) el usuario tiene el rol de "Administrador con/sin derechos de registro". Cuando el recurso está registrado o se le ha sido asignado un DOI, sin embargo, sólo los usuarios con el rol "Administrador con derechos de registro" pueden publicar, ya que el registro del recurso se actualiza en cada publicación (véase la explicación para Rol en la sección "Crear un Nuevo Usuario" bajo el encabezado "Configurar Cuentas de Usuario" de la sección "Menú Administración"). Luego de hacer clic en el botón "Publicar", aparecerá un cuadro de diálogo de confirmación. El cuadro de diálogo cambiará dependiendo de si la versión pendiente contiene cambios mayores o si contiene cambios menores:

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublishMajor.png' />
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublishMinor.png' />

El administrador del recurso debe ingresar un resumen de los cambios que se le han realizado al recurso (datos o metadatos)desde que fue publicada la última/actual versión. El resumen de cambios será guardado como parte del historial de versiones del recurso, y podrá ser editado por el administrador del recurso a través de la página principal del recurso. A continuación se hace una descripción completa  de lo que sucede después de presionar el botón "Publicar", al igual que los "Pasos de publicación".

* **Autopublicación**: - Para activar la autopublicación, seleccione una de las 5 frecuencias de publicación y presione el botón Publicar y activar la autopublicación. Para cambiar la frecuencia de autopublicación, seleccione una frecuencia de publicación diferente y presione el botón Publicar y cambiar la frecuencia de autopublicación. Para desactivar la autopublicación, seleccione "Desactivar" y presione el botón Publicar y desactivar la autopublicación. En caso de falla, la publicación se reintentará automáticamente hasta 3 veces. Esto protege el proceso contra loops de publicación infinitos. Los recursos configurados para su publicación automática que no logren finalizar el proceso exitosamente, tendrán la fecha de publicación pasada, y serán resaltados en las tablas de recursos publicados y de gestión de recursos.  

La **sección a la derecha** contiene la tabla que compara la versión actual frente a la versión pendiente. Los administradores del recurso pueden utilizar esta tabla para manejar el versionamiento del recurso, tener una vista preliminar de la versión pendiente, además de revisar y validar la versión actual del recurso. Para información acerca de la información de las filas de la tabla, consulte la información a continuación:

_Tabla 1 (abajo): Muestra los cambios mayores en la versión ya que a la versión pendiente se le ha reservado un nuevo DOI:_

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublishTable.png' />

_Tabla 2 (abajo): Muestra los cambios menores en la versión, ya que a la versión pendiente se le ha asignado el mismo DOI de la versión actual:_

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublishTable2.png' />

* **Versión**: - El número de seguimiento de la versión_mayor. versión_menor de la versión pendiente. Cada vez que el recurso es sometido a cambios científicamente significativos, el administrador del recurso debe asegurarse que la versión pendiente tenga una nueva versión mayor, a la que se le haya reservado un nuevo DOI. Para una descripción detallada de la política de versionamiento del IPT haga clic [[aquí|IPT2Versioning.wiki]]. En la columna de versión actual, haga clic en el botón “Ver" para ver la página principal de la versión actual. Asumiendo que un Archivo Darwin Core ha sido publicado, haga clic en <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/Checkmark.png' /> para confirmar que se utilice el <a href='http://tools.gbif.org/dwca-validator/'> Validador de Archivos Darwin Core </a>. En la columna de versión pendiente, haga clic en "Vista previa" para ver una imagen preliminar de la página principal de la versión pendiente. La página principal preliminar es privada y sólo puede ser vista por el administrador del recurso, lo cual le permite asegurarse de que el recurso está listo para ser publicado. 
* **Visibilidad**: - La visibilidad de la versión pendiente. Para poder registrar el recurso a través de GBIF, el administrador del recurso debe asegurarse de que la versión esté pública. 
Para asignar un DOI al recurso, el administrador del recurso debe asegurarse de que la versión esté pública.
* **DOI**: - El DOI de la versión pendiente. El DOI de la versión actual nunca podrá ser cambiado, sin embargo, el DOI de la versión pendiente puede ser reservado o eliminado. Para más información acerca de cómo reservar, eliminar, registrar, desactivar y reactivar los DOIs, por favor remítase a la sección a continuación. 
* **Licencia de los Datos**: - La licencia aplicada al recurso. Para registrar un recurso a través de GIBF, el administrador del recurso debe asegurarse de aplicar una licencia equivalente a la CC0, CC-BY, o la CC-BY-NC. La política de licenciamiento de GBIF se describe <a href='http://www.gbif.org/terms/licences'>aquí</a>.
* **Publicado en**: - La fecha en la cual la versión actual fue publicada / la fecha en la que la versión pendiente va a ser publicada.
* **Log del reporte**: -  Este enlace inicia la descarga de un archivo "publication.log", que contiene el resultado detallado del proceso de publicación de la versión que se está publicando. El administrador del recurso puede utilizar el reporte de publicación para identificar por ejemplo: problemas durante la publicación. A continuación encontrará información más detallada sobre los contenidos del reporte en la página de la sección Estado de la Publicación. Este reporte no aplica para la versión pendiente. 
* **Reporte de publicación**: - Resumen de la publicación de la versión reciente - no aplica para versiones pendientes. 

##### Pasos para Publicar 
La acción de publicar consiste de los pasos descritos enseguida. La publicación es un proceso de todo o nada, lo que significa que cada paso debe ser finalizado exitosamente para que la nueva versión sea publicada. Si alguno de los pasos falla, o si se cancela la acción publicar, la versión se revierte a la última versión publicada.

1. Los metadatos actuales se escriben en un archivo eml.xml. Una versión posterior llamada eml-n.xml siempre es guardada (donde n es el número de la versión, reflejando la versión de la publicación).
2. Un documento de publicación de datos en Formato de Texto Enriquecido (RTF) es guardado en el archivo nombrecorto.rtf. Una versión posterior del archivo RTF siempre es guardada, llamada nombrecorto-n.rtf.
3. Los datos de recursos primarios actuales como fueron configurados a través del mapeo se escriben en el archivo Darwin Core Archive llamado dwca.zip. Los archivos de datos contenidos en el Archivo Darwin Core son luego validados (vea la sección "validación de datos" abajo).
4. Si el Modo Archivo del IPT está activado ver la sección[[ Configuración de las opciones del IPT|IPT2ManualNotes_ES.wiki#Configuración de las opciones del IPT]] , una versión posterior del archivo Darwin Core Archive se guardará, llamada dwca-n.zip.
5. La información acerca del recurso se actualiza en el Registro GBIF, si el recurso se ha registrado.
6. El DOI de metadatos sobre el recurso se actualiza y se propaga al DOI de los solucionadores si se le asigna un DOI al recurso usando el IPT.

##### Validación de datos

El IPT realiza las siguientes validaciones sobre el archivo de datos dentro del DwCA:
* Si una columna contiene el identificador del core(por ejemplo, ID del registro biológico es el identificador del core Occurrence) el IPT validará para cada registro si el ID está presente y si es único.
* El término Darwin Core <a href='http://rs.tdwg.org/dwc/terms/#basisOfRecord'>basisOfRecord</a> es un término obligatorio para la extensión Occurrence. Por esto el IPT valida que cada archivo de datos tenga una columna de basisOfRecord. Adicionalmente, el IPT valida que cada registro de Ocurrence presente el basisOfRecord, ya que los valores coincidan con el 
<a href='http://rs.gbif.org/vocabulary/dwc/basis_of_record.xml'>Vocabulario del Tipo de Darwin Core </a>.

##### Asignar DOIs a los Recursos
Una práctica adecuada es asignarle un nuevo DOI al recurso cada vez que sea sometido a un cambio científicamente significativo. Para permitir que el IPT asigne DOIs a los recursos, el administrador del IPT debe configurar primero una organización asociada al IPT con una cuenta en DataCite o EZID. Consulte la sección " Configurar Organizaciones" para ayuda sobre esta opción. De otra forma los botones del DOI en la sección de Versiones Publicadas estarán ocultos. Una vez se hayan activado las cuentas en DataCite o EZID en el IPT, los administradores del recurso podrán reservar, eliminar, registrar, desactivar y reactivar los DOIs de sus recursos utilizando esta cuenta. Cada una de estas operaciones de con DOIs son explicadas detalladamente a continuación. Para obtener más ayuda acerca de cómo el IPT asigna DOIs a los conjuntos de datos, consulte la página de [[Flujo de trabajo de los DOIs del IPT|IPT2DOIWorkflow.wiki]] en el wiki del IPT.
* **Reservar**: - Un DOI puede ser reservado para un recurso. Esta operación varía un poco dependiendo de si al recurso ya le ha sido asignado un DOI o no.
  * **Recurso sin un DOI asignado**: - Un DOI puede ser reservado para un recurso luego de que los metadatos obligatorios hayan sido ingresados. Para reservar un DOI, presione el botón "Reservar" en la sección de Versiones Publicadas. Para reutilizar un DOI existente, ingréselo al campo de Identificador del Recurso en los metadatos del recurso, y luego presione el botón "Reservar" en la sección de Versiones Publicadas. Si un recurso está disponible públicamente y con un DOI reservado, la siguiente publicación resultará en una versión mayor i del DOI será registrado. De lo contrario si un recurso es privado y tiene un DOI reservado, la siguiente publicación resultará en una versión menor del recurso y el DOI NO será registrado. Tenga en cuenta que hasta que un DOI no sea registrado este puede ser eliminado. 
  * **Recurso con un DOI asignado**: - Otro DOI puede ser reservado para un recurso público al cual ya le ha sido asignado un DOI. Para reservar otro DOI, haga clic en el botón "Reservar nuevo" en la sección de Versiones Publicadas. EL DOI será registrado la próxima vez que el recurso sea publicado, y conducirá a la página principal de la nueva versión publicada. 
  El DOI anterior continuará direccionando a la versión previa, sin embargo se mostrará una advertencia indicando que existe una nueva versión del DOI que lo reemplaza. Tenga en cuenta que hasta que un DOI no sea registrado este puede ser eliminado. 
* **Eliminar**: - Un DOI que ha sido reservado para un recurso puede ser eliminado ya que éste nunca fue resuelto públicamente.  Para eliminar un DOI, haga clic en el botón  "eliminar" en la sección Versiones Publicadas. 
* **Registrar**: - Si un recurso está disponible públicamente y tiene reservado un DOI, la próxima publicación resultará en una versión mayor nueva y el DOI será registrado. 
* **Desactivar**: - Un DOI que ha sido registrado no puede ser eliminado, y debe seguir direccionando. La única manera de desactivar un DOI es eliminando el recurso. Eliminar el recurso garantiza que los datos ya no puedan ser descargados y el DOI va a direccionar a una página donde se explica que el recurso ha sido retirado. Tenga en cuenta que la actualización de un DOI puede tardar cerca de 24 horas en ser conocida globalmente. 
* **Reactivar**: - Un DOI que ha sido desactivado direcciona a un recurso que ha sido eliminado. Para reactivar el DOI, el recurso debe ser restaurado. Restaurar un recurso hace que los datos sean disponibles para su descarga nuevamente, y el DOI va a direccionar a la última versión publicada de éste recurso. Tenga en cuenta que la actualización de un DOI puede tardar cerca de 24 horas en ser conocida globalmente. 

##### Página de Estado de la Publicación
La página denominada Estado de la Publicación mostrará mensajes de estado, destacando el éxito o falla de la publicación de cada uno de los documentos, así como los resultados detallados del proceso de publicación. La publicación de una nueva versión es un evento de todo o nada, lo que significa que todos los documentos deben ser publicados con éxito de lo contrario la versión se revierte.
* **Vista General del Recurso** - Este enlace dirige a la "Página de Visualización de Metadatos" para el recurso que acaba de ser publicado.
* **Reporte de publicación** - Este enlace inicia la descarga de un archivo "publication.log", que contiene el resultado detallado del proceso de publicación. Este archivo contendrá información específica para ayudar a los administradores a identificar problemas durante la publicación como:
  * Cuantos registros no pudieron ser leídos y por lo tanto no incluidos en el DwC-A.
  * Cuantos registro no tienen ID, o cuantos lo tienen duplicado (en el caso de que el identificador haya sido mapeado)
  * Cuantos registros contienen menos columnas de las que fueron mapeadas
* **Log message** - La Página de Estado de la Publicación presenta un resumen de la información que fue enviada al archivo publication.log, que se almacena en el directorio para el recurso dentro del directorio de datos del IPT y que estará disponible a través del enlace a la página "Reporte de publicación" que se encuentra sobre el mensaje de resumen de registro.
* **Log del reporte**: -  este enlace inicia la descarga de un archivo "publication.log", que contiene el resultado detallado del proceso de publicación de la versión que se está publicando. El administrador del recurso puede utilizar el reporte de publicación para identificar por ejemplo: problemas durante la publicación. A continuación encontrará información más detallada sobre los contenidos del reporte en la página de la sección Estado de la Publicación. Este reporte no aplica para la versión pendiente.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourcePublishingStatus.png' />

#### Visibilidad
El área "Visibilidad" de la página "Recursos" permite a los usuarios, que tengan derechos de administrador sobre el recurso, cambiar su estado de visibilidad.  La visibilidad de un recurso determina quién puede verlo, y si al recurso le fue asignado un DOI o está registrado en GBIF. De forma predeterminada, cada recurso sólo es visible para el usuario que lo creó, y para otros usuarios que tienen el rol Administrador en el IPT donde se crea el recurso. Consulte la información en seguida para tener más información acerca de cada estado de visibilidad. 

* **Privado** - Un recurso privado es visible sólo para aquellos que lo crearon, o aquellos a quienes se concede permiso para administrarlo en el IPT, o por un usuario que tiene el rol Administrador. El objetivo es mantener el recurso como privado hasta que haya sido completamente y correctamente configurado. Tenga en cuenta que un DOI puede ser reservado para un recurso privado, pero ese DOI no podrá ser registrado sino hasta que el recurso tenga visibilidad Pública. Cuando el recurso esté listo para ser público, haga clic en el botón "Publicar". Aparecerá un mensaje en la parte superior de la página diciendo que el estado ha cambiado a "Público".
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceVisibilityPrivate.png' />
* **Público** - Un recurso público es visible para cualquier persona que utilice la instancia del IPT, donde se instala el recurso (en la "Tabla de Recursos Públicos" en la página de Inicio del IPT). Si el recurso tiene un DOI reservado, ese DOI será registrado la próxima vez que el recurso sea publicado. El recurso también está disponible a través de Internet para cualquier persona que conozca la URL de la página principal o el DOI. Sin embargo, el recurso puede ser detectado una vez haya sido inscrito en el Registro GBIF. Tenga en cuenta que la visibilidad de un recurso al cual ya se le ha asignado un DOI, no puede ser cambiada a privada.<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceVisibilityPublicNeedToPublish.png' /> 
En la parte izquierda del área de la sección de visibilidad encontrará dos botones.  Al hacer clic en el botón "privado" se retirará por completo el recurso de la visibilidad pública y lo devolverá al estado privado. El botón "Registro" se activará si: 1) los metadatos necesarios para el recurso están completos, 2) el recurso ha sido publicado (ver explicación en la sección [[ Versiones Publicadas|IPT2ManualNotes_ES.wiki#Versiones Publicadas]] de la página "Vista General del Recurso", más adelante, y 3) el usuario tiene el rol "Administrador con derechos de registro" (ver explicación de Función en la sección "Crear un Nuevo Usuario" en el encabezado "Configuración de Cuentas de Usuario" de la sección "Menú Administración”). Un usuario que tiene el rol Administrador puede otorgar la posición "Administrador con Derechos de Registro" a cualquier usuario.<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceVisibilityPublic.png' /> 
Por último, haga clic en el botón "Registro" para registrar el recurso en el Registro GBIF.(**Nota**: Si desea que este recurso se actualice un recurso preexistente en DiGIR, BioCASE, o TAPIR, por favor consulte la sección [[Migración de un Recurso|IPT2ManualNotes_ES.wiki#Migración de un Recurso]] abajo.) Al hacer clic en este botón, se abrirá un cuadro de diálogo con el que se confirma que usted ha leído y entendido el acuerdo de intercambio de datos de GBIF, al cual se da un enlace. Haga clic en el cuadro de verificación para indicar que está de acuerdo con estos términos. Si lo hace, un botón "Sí" aparecerá en la parte inferior del cuadro de diálogo. Haga clic en "Sí" para registrar el recurso, o en "No" para aplazar la decisión y cerrar el cuadro de diálogo. <img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceVisibilityRegisterAgreement.png' />Si el intento de registro es exitoso, aparecerá un mensaje en la parte superior de la página especificando que el estado ha cambiado a "Registrado".

* **Registrado** - Un recurso que ha sido registrado en la red de GBIF, se puede detectar a través de ese sistema y los datos de los recursos pueden ser indexados y se puede acceder a estos desde el portal de GBIF. Un resumen de la información registrada en GBIF aparecerá en la columna de la derecha cuando el registro se haya completado.<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceVisibilityRegistered.png' />
Si el recurso ya ha sido registrado, cada vez que se haga clic en el botón "Publicar", enviará nueva información sobre el recurso al Registro GBIF, para que el registro sea actualizado. La visibilidad de un recurso registrado no puede ser cambiada a privada. Si un recurso debe ser eliminado del Registro GBIF, siga el procedimiento descrito en la sección "Eliminar un Recurso" del encabezado "Vista General del Recurso" de la sección "Menú Gestión de Recursos".

#### Migración de un Recurso
Ahora hay una manera de migrar recursos registrados en DiGIR, BioCASE y TAPIR a un IPT. La forma en que funciona, es que el recurso IPT es configurado para actualizar el recurso DiGIR, BioCASE o TAPIR registrado que corresponde en el Registro GBIF. Esto permite que los recursos mantengan su UUID del Registro GBIF.

Para migrar un **recurso registrado existente** a **su recurso IPT**, simplemente siga estas instrucciones:

1. Asegúrese que la visibilidad del **recurso IPT** es público y NO registrado.
2. Determine la organización propietaria del **recurso registrado existente**, y asegúrese que esta ha sido adicionada al IPT como una organización y que está configurada para publicar conjuntos de datos. Para realizar esto, por favor refiérase a la sección "Adicionar una Organización".
3. Determine el UUID del recurso registrado existente ante el Registro GBIF (este tendrá un formato similar al siguiente: "5d637678-cb64-4863-a12b-78b4e1a56628"). Dependiendo del modo en el que esté ejecutando el IPT (Modo Prueba o Producción), visite las siguientes páginas web <a href='http://www.gbif-uat.org/dataset'>http://www.gbif-uat.org/dataset</a> o <a href='http://www.gbif.org/dataset'>http://www.gbif.org/dataset</a> respectivamente.
4. Adicione este UUID a las lista de los identificadores alternativos del **recurso IPT** en la página de Metadatos Adicionales. No olvide guardar la página de Metadatos Adicionales.
5. Asegúrese de que ningún recurso publicado o registrado en este IPT incluya este UUID en su lista de identificadores alternativos. En los casos en donde se intente remplazar un recurso registrado que ya existe en el IPT, el otro recurso tendrá que ser eliminado primero.
6. Seleccione la organización propietaria de la lista desplegable en la página Vista General del Recurso, y haga clic en el botón registrar. Al igual que cualquier otro registro, antes de que el registro sea ejecutado, deberá confirmar que leyó y entendió el acuerdo GBIF para compartir datos.
7. **Envíe un correo electrónico a helpdesk@gbif.org comunicando sobre la actualización hecha.** En su correo electrónico por favor incluya:
  1. El nombre y URL (o UUID del Registro GBIF) de su IPT
  2. El nombre y UUID del Registro GBIF de su Recurso actualizado (véase la línea Clave del Recurso en la página vista general del recurso, por ejemplo: Clave del recurso: d990532f-6783-4871-b2d3-cae3d0cb872b)
  3. Si la instalación técnica DiGIR/BioCASE/TAPIR que usó ha quedado en desuso y si puede ser eliminada del Registro GBIF (solo si aplica).

#### Administradores de Recursos

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceManagers.png' />

Cada recurso tiene uno o más administradores asignados de forma explícita a quienes les es permitido ver, cambiar y eliminar el recurso. El usuario que crea un recurso, cuenta con estas capacidades de forma automática. Los administradores adicionales pueden estar asociados con un recurso y tener estas mismas capacidades, seleccionando su nombre en el cuadro de selección en esta área de la página "Vista General del Recurso", y haciendo clic en el botón "Añadir". Cualquier administrador asociado con un recurso y que tiene el rol "Administrador con derechos de registro", también puede registrar el recurso y actualizarlo en el Registro GBIF. Todos los usuarios que tienen función de administrador adquieren, de forma automática, completa funcionalidad de administración sobre todos los recursos de la instancia IPT. La columna de la derecha de esta área muestra el nombre y la dirección de correo electrónico del creador de este recurso. Si alguno de los administradores ha sido añadido, su nombre y dirección de correo electrónico aparecerá listado debajo del creador del recurso. El rol Administración de los recursos de cualquier administrador puede ser removido haciendo clic en el botón "Eliminar", a la derecha de la dirección de correo electrónico en el listado de administrador.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTManageResourceManagerAdded.png' />

#### Eliminar un Recurso
Al hacer clic en el botón "Eliminar" en la página "Vista General del Recurso", se eliminará el recurso del IPT y todos los documentos relacionados del sistema de archivos. Si va a quitar un recurso que ha sido registrado en GBIF, también debe informar a la "Mesa de Ayuda GBIF" (helpdesk@gbif.org) para que sea eliminado del registro. Si desea conservar la información del recurso, y eliminar el recurso del IPT, haga una copia de la carpeta del recurso en un lugar seguro fuera de la estructura del directorio IPT. El nombre de la carpeta para el recurso es el mismo que el nombre corto del recurso, y se puede encontrar en la carpeta denominada "Recursos" en el directorio de datos del IPT. Un recurso guardado de esta manera se puede volver a integrar en el IPT o en una instancia distinta del IPT, siguiendo el procedimiento descrito en la sección "Carpeta de configuración de la integración de un recurso existente" bajo el encabezado "Crear un nuevo recurso" en la sección “Menú Gestión de Recursos".

## Menú Administración (visible únicamente para usuarios con el rol Administrador)

Esta sección describe cada una de las funciones que están disponibles desde el "Menú Administración". Haciendo clic sobre Administración, se abre una página (ver imagen a continuación) desde la cual cada una de estas tareas administrativas puede ser revisada, haciendo clic sobre el botón apropiado. Note que el botón marcado como “Organizaciones”, predeterminadamente permanecerá deshabilitado hasta que las opciones de Registro GBIF hayan sido establecidas.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminBeforeRegistration.png' />

### Configuración de las opciones del IPT
Esta página permite a los usuarios con el rol Administrador, realizar y cambiar la configuración del IPT.
<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminConfigIPT.png' />

* **URL Base** -  Esta es la URL que indica la raíz de instalación de este IPT. La URL se establece automáticamente durante la instalación del IPT. Para que el IPT funcione completamente, la URL Base debe estar disponible vía Internet. Si la URL Base se configura para usar un localhost, no permitirá que el IPT sea registrado en GBIF, tampoco permitirá que pueda ser asociado con una organización y que los recursos estén disponibles al público.
* **Nota:** Cuando la configuración del IPT es guardada, el IPT prueba la disponibilidad de la URL Base desde el computador del cliente. Si el IPT no está disponible en la URL Base establecida, el IPT mostrará un mensaje de advertencia y los cambios no podrán ser guardados. Si la nueva URL aún no es funcional (tal como un cambio de puerto que requiere un reinicio del IPT), a continuación se explica el procedimiento para cambiar la URL Base:
  * Salga de su sección del IPT y ciérrelo.
  * En el directorio de datos para el IPT, abra con un editor de texto plano el archivo config/ipt.properties – use un editor que no adicione códigos extra, como NotePad, TextEdit, vi, etc.(no Microsoft Word).
  * En el archivo ipt.properties cambie la línea de inicio “ipt.baseURL” a la nueva URL con el nuevo puerto, usando la barra invertida para evitar el carácter dos puntos. Por ejemplo, ingrese<code>ipt.baseURL=http\://test.edu\:7001/ipt</code> para <a href='http://test.edu:7001/ipt'>http://test.edu:7001/ipt</a>.
  * Reinicie el IPT en el contenedor del servlet.
  * Actualice los metadatos para el IPT como se describe en la siguiente sección titulada “Publicar Todos los Recursos”.
* **Dirección del Proxy** - Si el servidor donde está instalado el IPT se enruta a través de un servidor proxy o un servidor virtual, ingrese el proxy como una URL en el formato protocol:host:port. Por ejemplo: <a href='http://proxy.gbif.org:8080'>http://proxy.gbif.org:8080</a>.
* **Clave de Google Analytics** - si desea realizar un seguimiento del IPT con Google Analytics, puede hacerlo ingresando en el cuadro de texto su clave de Google Analytics. Este monitoreo es diferente al que puede hacer GBIF, el cual puede ser habilitado marcando el cuadro descrito a continuación. Para más información acerca de Google Analytics, véase<a href='http://www.google.com/intl/en/analytics/index.html'>http://www.google.com/intl/en/analytics/index.html</a>.
* **Habilitar GBIF Analytics** - Marque este cuadro si desea que GBIF monitoree el IPT con Google Analytics.
* **Modo Corrección de Errores** - Marque este cuadro si desea iniciar el IPT en modo corrección de errores. El Modo Corrección de Errores generalmente es innecesario, a menos que esté tratando de monitorear un problema con el IPT. La actividad del sistema del IPT está ubicada en el archivo debug.log del directorio de datos del IPT. El directorio de datos se establece durante el primer paso del proceso de instalación (véase "Guía de Instalación"). Si tiene el rol Administrador, consulte la información en “Ver actividad del sistema del IPT” de la sección “Menú Administración” para ver fácilmente el archivo debug.log.
* **Modo Archivo** - Marque esta casilla si desea que su IPT guarde todas las versiones publicadas para todos los recursos. Esto le permitirá realizar un seguimiento del historial de versiones de un recurso. Si no se marca, las versiones anteriores serán reemplazadas por la última. Tenga cuidado de no quedarse sin espacio en disco.
* **Ubicación del Servidor IPT** - Esta área de la página permite al administrador establecer las coordenadas geográficas (latitud y longitud) de la ubicación de servidor en el cual se instaló el IPT. El establecimiento de estas coordenadas permite al GBIF georreferenciar la ubicación de este, con las otras instalaciones del IPT registradas alrededor del mundo.

### Publicar Todos los Recursos
Esta opción es una acción administrativa al igual que el botón Publicar, solo que este publica TODOS los recursos. Por lo tanto para cada recurso se crea un nuevo DwCA, EML y RTF, y transmite las actualizaciones al Registro y a través del RSS. Además, se actualiza en el Registro los metadatos del IPT. Si alguna de las siguientes condiciones se cumple desde la última vez que fueron actualizados los recursos, haga clic sobre este botón para realizar las actualizaciones necesarias:
* Múltiples recursos han sido actualizados y desea publicar una nueva versión para todos, en vez de publicarlos individualmente.
* La URL Base o dirección del Proxy ha sido cambiada y para reflejar el cambio desea actualizar los servicios registrados del IPT.

### Configurar Cuentas de Usuario
Esta página permite al usuario con rol Administrador, crear, modificar y eliminar cuentas de usuario. Cuando se abre la página, muestra una tabla de usuarios existentes e información básica acerca de ellos, incluyendo sus nombres, direcciones de correo electrónico, roles y la fecha y hora de su ultimo inicio de sesión.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminUserAccounts.png' />

#### Crear un Nuevo Usuario
Un usuario nuevo puede ser creado haciendo clic en el botón “Crear” que está debajo de la lista de usuarios actuales. Se abrirá una página en la cual puede ser ingresada la información del usuario y luego el usuario nuevo puede ser creado haciendo clic en el botón “Guardar”.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminUserCreateUser.png' />

* **Correo electrónico** - La dirección de correo electrónico del usuario, es usada como un identificador para ingresar al IPT y no puede ser cambiada.
* **Nota**: Si el usuario requiere un cambio de correo electrónico, el procedimiento recomendado es crear una nueva cuenta de usuario con la nueva dirección de correo electrónico, y luego eliminar la cuenta de usuario que tiene el correo electrónico antiguo.
* **Nombre** - El nombre del usuario.
* **Apellido** - El apellido del usuario.
* **Rol** - El rol que tendrá el usuario dentro del IPT. Usuarios con el rol “Administrador” pueden hacer cambios en todos los aspectos del IPT. Usuarios con el rol “Administrador sin derechos de registrar” están en la capacidad de crear, editar, eliminar y administrar los recursos que ellos crearon o aquellos a los que fueron invitados para administrar dentro del IPT. Usuarios con el rol “Administrador con derechos de registrar” están en la capacidad adicional de registrar los recursos en la red GBIF. Otros usuarios pueden ingresar al IPT y ver los recursos, pero no podrán hacer cambios.
* **Contraseña** - la contraseña del usuario debe contener al menos 4 caracteres y debe ser segura y evitar la pérdida, puesto que desde la aplicación del IPT, esta contraseña no es recuperable.
* **Nota**: Si la contraseña de un usuario se pierde, puede ser restablecida a través de un usuario que tenga el rol Administrador, generando automáticamente un nuevo valor. Es responsabilidad del usuario Administrador comunicar esta nueva contraseña al usuario que le fue restablecida. Una vez el usuario haya ingresado, puede cambiar la contraseña a través del enlace “Cuenta” que está en la esquina superior derecha de todas las páginas.
* **Verificar Contraseña** - Una copia exacta de la contraseña que fue ingresada anteriormente, para confirmar que esta fue ingresada como se pretende.

#### Modificar un Usuario Existente

La información acerca de los usuarios puede ser cambiada en la página de los detalles del usuario después de seleccionar, de la lista de usuarios existentes, el nombre del usuario que se desea modificar. La página de detalles del usuario muestra toda la información acerca del usuario. Pueden ser cambiados el nombre, apellido y rol del usuario, ingresando nuevos valores y haciendo clic en el botón “Guardar”. Los detalles de la información ingresada en esta página, puede ser encontrada en las explicaciones de la sección anterior “Crear un Nuevo Usuario”.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminUserEditUser.png' />

* **Restablecer Contraseña** - Si un usuario olvida la contraseña, se puede generar una nueva haciendo clic en el botón “Restablecer Contraseña”. Después de esto, una nueva contraseña es generada en un mensaje de información en la parte superior de la página.
* **Nota**: El IPT no informa del cambio al usuario afectado, por lo tanto es responsabilidad del Administrador que restablece la contraseña, informar al usuario la nueva contraseña.

#### Eliminar un Usuario
Las cuentas de los usuarios que dejan de ser necesarias, pueden ser eliminadas usando la página detalles del usuario, disponible cuando se selecciona de la lista el nombre del usuario que se desea eliminar. Al final de la página detalles del usuario, hacer clic en el botón “Eliminar” para remover esta cuenta de usuario. Existen varias condiciones bajo las cuales un usuario no puede ser eliminado. Un usuario no puede eliminar una cuenta mientras esté conectado con esa cuenta. Esta cuenta debe ser eliminada desde otra cuenta que tenga el rol Administrador. Igualmente, la instalación del IPT siempre debe tener al menos un usuario con el rol Administrador, de tal forma que el último Administrador no pueda ser eliminado. Para eliminar aquel usuario, primero se debe crear un nuevo usuario con el rol Administrador, e ingresar con este nuevo usuario para eliminar la otra cuenta de Administrador. Finalmente, cada recurso debe tener al menos un usuario asociado que tenga el rol Administrador o uno de los otros roles de Administrador, de tal forma que el último Administrador de un recurso no pueda ser eliminado. Para eliminar aquel usuario, primero se debe asociar otro usuario que tenga uno de los roles de Administrador, con el recurso al cual el usuario desea eliminarle el último administrador del mismo. Para saber cómo pueden ser asignados los nuevos administradores, consulte la información de “Administradores del recurso” en la sección “Editar un recurso existente”.

## Configurar Opciones para el Registro GBIF
Esta página permite a los usuarios registrar el IPT en el Registro GBIF, solo si este aún no se ha hecho. El IPT debe ser registrado antes de asociar algún recurso del IPT con una organización (véase la información de “Configurar Organizaciones” en la sección "Menú Administración") o publicarlo (véase la sección[[Versiones Publicadas|IPT2ManualNotes_ES.wiki#Versiones Publicadas]]). La información acerca de un IPT registrado y sus recursos públicos, llegan a estar disponibles a través de los servicios de Registro, y los datos de los recursos públicos en el IPT, pueden ser indexados con una búsqueda a través del portal GBIF. Si el IPT ya ha sido registrado, la información registrada por el IPT puede ser editada abriendo la página “Editar Registro GBIF”.

El primer paso para registrar un recurso ante GBIF, es probar que el IPT tenga una URL valida que pueda ser localizada por los servicios del GBIF. Para correr esta prueba, haga clic sobre el botón llamado “Validar”.

Si la prueba de validación no es exitosa, un mensaje de error sugerirá la naturaleza del problema con la comunicación entre el Registro GBIF y el IPT. Las causas de un error incluyen:

* **No hay conexión a Internet** - Para un funcionamiento apropiado, el IPT requiere una conexión activa a Internet. Ocurrirá un error, si la conexión a Internet se interrumpe cuando se haga clic sobre el botón “Validar”. Restaure la conexión a Internet antes de intentar el registro.
* **URL Base o Dirección del Proxy Incorrecta** - La URL Base es detectada automáticamente y configurada durante el proceso de instalación del IPT (véase la sección “Configurar el IPT (II)”). Modificaciones en la configuración del servidor sobre el cual fue instalado el IPT, puede requerir un cambio en la URL Base o en la Dirección del Proxy. La URL Base y la Dirección del Proxy, pueden ser cambiadas en la página "Configurar Opciones del IPT" (véase las explicaciones para la URL Base y Dirección del Proxy en la sección "[[Configuración de las opciones del IPT|IPT2ManualNotes_ES.wiki#Configuración de las opciones del IPT]]".
* **Firewall** - Si la conexión a Internet es correcta, un firewall puede estar evitando las conexiones a la URL Base o el Proxy. Cambie la configuración del firewall o proxy para todas las conexiones externas.
* **Registro GBIF sin acceso** - Si un mensaje de error sugiere que ninguno de los errores previos ha ocurrido y aún hay una falla con la comunicación al Registro GBIF, por favor reporte a la "Mesa de Ayuda" que hay problemas con la conexión al Registro GBIF (helpdesk@gbif.org).

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminRegistrationStep1.png' />

Si el IPT pasa la etapa de validación mencionada anteriormente, aparecerá un formato que requiere información adicional para el registro. En esta etapa, el IPT es asociado con una organización. *La organización ya debe estar registrada en el Registro GBIF, y su contraseña debe ser conocida.* A continuación se encuentran las explicaciones de los campos y selecciones de este formato.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminRegistrationStep2.png' />

A continuación se encuentran las explicaciones de la información específica que debe ser seleccionada o ingresada:
* **Organización** -  El cuadro seleccionado contiene una lista de organizaciones en el Registro GBIF. Seleccione una organización con la cual será asociado este IPT. Si la organización deseada no se encuentra en la lista, use el Registro GBIF (<a href='http://www.gbif.org/publisher/search'>http://www.gbif.org/publisher/search</a>) para determinar si la organización está registrada bajo otro nombre que no esperaba. Si la organización aún no está registrada ante GBIF, por favor contacte a la "Mesa de Ayuda" para registrar la organización, antes de proceder con el registro del IPT. Haga clic sobre el enlace de ayuda “GBIF Help Desk” para abrir un correo electrónico predeterminado, en donde puede completarlo con la información necesaria antes de enviarlo.
* **Contraseña de la Organización** - La contraseña correcta para la organización seleccionada, registrada en el Registro GBIF, debe ser ingresada en este campo para verificar que el usuario tiene la autorización requerida para asociar el IPT con aquella organización. Si no posee la contraseña de la organización, debe solicitarla al contacto registrado. Un enlace al contacto principal de la organización registrada aparecerá debajo de este campo, después de seleccionar una organización en el campo Organización. La contraseña será usada para autenticar el registro del IPT cuando se haga clic sobre el botón “Guardar”.
* **Alias** - Ingrese un nombre o código conveniente para representar la organización dentro del IPT. El alias aparecerá, en lugar del nombre completo de la organización, en los campos de selección de la organización, de las interfaces del usuario en el IPT.
* **¿Puede publicar recursos?** - Seleccione este recuadro si la organización seleccionada también puede ser asociada con recursos publicados en este IPT. Si se deja sin seleccionar, la organización no aparecerá en la lista de organizaciones disponibles para asociar con un recurso. Deje el recuadro sin marcar, solamente si la organización tiene como función alojar el IPT, y no asociar cualquiera de los recursos publicados a través del IPT.
* **Título para la Instalación del IPT** - ingrese el título de la instalación del IPT a ser usado en el Registro GBIF. El título es la información primaria usada para listar y buscar en el Registro por instalaciones de IPT.
* **Descripción para esta instalación del IPT** - Ingrese en el Registro GBIF la descripción de la instalación del IPT a ser usada. La descripción pretende ayudar a los usuarios del Registro a entender el significado del IPT, permitiendo información adicional a la compartida en los campos específicos para metadatos.
* **Nombre del Contacto** - Ingrese el nombre de la persona quien debe ser contactada para información acerca de la instalación del IPT. Esta persona debe ser alguien quien tenga un rol Administrador y conozca los detalles técnicos acerca de la instalación.
* **Correo Electrónico del Contacto** -  Ingrese la dirección electrónica actual de la persona cuyo nombre fue ingresado en el campo anterior.
* **Contraseña del IPT** - ingrese la contraseña que debe ser usada para editar la instalación de este IPT en el Registro GBIF.
* **Guardar** - Cuando toda la información anterior haya sido ingresada o seleccionada, haga clic sobre el botón “Guardar” para registrar la instalación del IPT ante el Registro GBIF. Después de realizar un registro exitoso de la instalación del IPT, la página, para configurar las opciones del Registro GBIF, mostrará que el IPT ya ha sido registrado y asociado con la organización seleccionada. Además, la página "Configurar Organizaciones" llegará a estar disponible en el "Menú Administración".
* **Nota**: cualquier cambio en el registro del IPT (no en el registro de un recurso – para el cual véase la sección “Visibilidad” bajo el encabezado “Vista General del Recurso” en la sección “Menú Gestión de Recursos”, así como la información bajo el encabezado “Publicar Todos los Recursos” en la sección “Menú Administración”) tendrá que ser consultado con la "Mesa de Ayuda GBIF" (helpdesk@gbif.org).

## Editar el Registro GBIF
Una vez el IPT haya sido registrado en el Registro GBIF, la página permitirá a los usuarios editar el título, la descripción, el nombre del contacto y el correo electrónico del contacto. Cambios de la organización asociada no son posibles. Como ayuda para cambiar otros campos mostrados en el Registro GBIF, el Administrador puede contactar la "Mesa de Ayuda GBIF" (helpdesk@gbif.org).

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminEditRegistration.png' />

## Configurar Organizaciones
La página no está disponible hasta que el IPT haya sido registrado exitosamente en el Registro GBIF (véase información bajo el encabezado “Configurar Opciones para el Registro GBIF” de la sección “Menú Administración”). Una vez registrado, esta página muestra una lista de organizaciones que pueden ser asociadas con los recursos en este IPT. Un IPT tiene datos alojados para otras organizaciones y para que estas puedan ser asociadas, deben configurarse antes que puedan ser usadas. 

Un IPT capaz de asignar DOIs a los recursos, para esto debe tener las organizaciones configuradas con una cuenta en DataCite o EZID. Para que la organización sea configurada con las cuentas de DataCite o EZID, no es necesario que la organización esté en capacidad de publicar recursos (estar asociada a algún recurso). Solo puede utilizarse una cuenta de DataCite o EZID a la vez para realizar el registro de los DOIs, y el modo de archivo del IPT debe estar encendido (por favor consulte la sección [[Configuración de las opciones del IPT|IPT2ManualNotes_ES.wiki#Configuración de las opciones del IPT]] ) para más información acerca del modo de archivo). La lista de organizaciones muestra cuales han sido configuradas con una cuenta en DataCite o EZID, y cuál ha  sido seleccionada para el registro de los DOIs para todos los recursos correspondientes en este IPT.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminOrgs.png' />

### Editar una Organización
En esta página los usuarios que tengan el rol Administrador podrán editar las organizaciones. Haga clic sobre el botón “Editar” para abrir la página que contiene los detalles de la organización seleccionada. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminOrgsEditOrg.png' />

A continuación encontrará más información acerca de los campos y opciones de la página de edición de una organización: 

* **Nombre de la organización** - El título de la organización inscrita en el registro de GBIF. **Nota**: Este no puede ser cambiado.
* **Contraseña de la organización** - La contraseña correcta para la organización seleccionada, registrada en el Registro GBIF.
* **Alias** -  Ingrese un nombre conveniente para representar la organización dentro del IPT. El alias aparecerá, en lugar del nombre completo de la organización y en los campos de selección de la organización, de las interfaces del usuario en el IPT.
* **¿Puede publicar recursos?** - Seleccione este recuadro si la organización seleccionada también puede ser asociada con recursos publicados en este IPT.  Si se selecciona este cuadro, la organización aparecerá en la lista de organizaciones disponibles para asociar con un recurso.
* **Agencia de registro del DOI** - El tipo de cuenta utilizada para el registro de los DOIs para los recursos; puede ser DataCite o EZID. **Nota**: La cuenta para la organización se expide después de que se firma un acuerdo con un miembro de DataCite (o EZID), donde se permita registrar DOIs bajo uno o más prefijos(e.g. 10.5072) en uno o más dominios (e.g. gbif.org). **Nota**: Confirme que la cuenta pueda regostar DOIs bajo dominios del IPT/URL base, de lo contrario los registros a través de IPT no funcionarán.
* **Nombre de usuario de la cuenta** - El nombre de usuario (símbolo) de la cuenta expedida a la organización por DataCite. 
* **Contraseña de la cuenta** - La contraseña de la cuenta expedida a la organización por DataCite.
* **DOI prefijo/shoulder** - El DOI prefijo/shoulder utilizado para DOIs. Este prefijo es único para la cuenta expedida para la organización. Nota: Use siempre un prefijo de prueba cuando utilice el IPT en modo de prueba(e.g. 10.5072 para DataCite, 10.5072/FK2 para EZID).
* **Cuenta activada** - Este cuadro de selección indica si la cuenta en DataCite es la única utilizada para registrar DOIs para conjuntos de datos en el IPT. Solo es posible activar una cuenta DataCite a la vez.

### Adicionar una Organización
Las organizaciones no están disponibles para ser asociadas con los recursos hasta que no sean adicionadas por un usuario con el rol Administrador. Haga clic sobre el botón “Añadir”, para abrir una página en la cual una organización adicional puede ser seleccionada desde el Registro GBIF, para ser usada en el IPT. Para las explicaciones sobre los campos y selecciones en esta página, refiérase a la información bajo el encabezado “Configurar Opciones para el Registro GBIF” en la sección “Menú Administración” de este manual del usuario. Después que la organización deseada ha sido seleccionada y todos los datos han sido ingresados, incluyendo la contraseña para la organización, haga clic sobre el botón “Guardar” para adicionar la organización seleccionada a la lista.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminOrgsAddOrg.png' />

## Configurar Estándares y Extensiones
Esta página permite a un usuario con rol Administrador, importar y compartir varios tipos de datos predefinidos desde el Registro GBIF. Cada tipo incluye propiedades (campos, elementos) que soportan un propósito específico. Por ejemplo, el estándar Darwin Core Taxon, soporta información pertinente a nombres taxonómicos, nombre comunes, y conceptos del taxón, permitiendo al IPT alojar recursos para listas de chequeo taxonómico y nomenclatural. Hay una diferencia entre Estándares y Extensiones. Los estándares proveen la base para el registro de los datos (por ejemplo, Registros biológicos y Nombres taxonómicos), mientras que las extensiones facilitan los medios para asociar datos adicionales con un registro del estándar. Solamente un estándar puede ser seleccionado para un recurso de datos, como se explicó en el encabezado “Mapeo Darwin Core_” de la sección “Vista General del Recurso”.

Los vocabularios contienen una lista de valores válidos que un elemento particular en un estándar o extensión pueda tomar. Por ejemplo, el <a href='http://rs.gbif.org/vocabulary/dwc/basis_of_record.xml'> Vocabulario de Darwin Core </a> contiene todos los valores del estándar permitidos en el elemento Darwin Core BasisOfRecord. <a href='http://rs.tdwg.org/dwc/terms/#basisOfRecord'>basisOfRecord</a>.

Luego de la lista de estándares y extensiones instaladas, se encuentra la sección "Sincronizar extensiones y Vocabularios" con un solo botón: "Sincronizar". Las versiones más recientes existentes en el Registro de GBIF de los estándares y las extensiones pero que aún no han sido instaladas, se encuentran listadas debajo de la sección de vocabularios. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminExtensions.png' />

Cada lista de extensiones (instaladas y no instaladas) tiene dos columnas. La columna de la izquierda muestra el nombre de la extensión como un enlace y un botón “Instalar” o “Eliminar”. Si la extensión esta desactualizada, aparecerá otro botón con la etiqueta "Actualizar". En la columna de la derecha hay un resumen de la información acerca de la extensión, el número de propiedades (campos, elementos) en la extensión, el nombre de la extensión, su espacio de nombres, tipo de fila y palabras clave. Para más información acerca de estos atributos de una extensión, véase la documentación sobre Archivos Darwin Core en   <a href='http://rs.tdwg.org/dwc/terms/guides/text/'>http://rs.tdwg.org/dwc/terms/guides/text/</a>.
A continuación están las acciones que pueden ser tomadas respecto a las extensiones.

### Sincronizar extensiones y Vocabularios
Una extensión puede utilizar una lista de términos de valores predefinidos, conocidos como vocabularios controlados. Estos vocabularios pueden cambiar periódicamente (e.g. si se agrega una nueva traducción) lo cual requiere su actualización en el IPT. Haga clic en el botón "Sincronizar" para Actualizar los vocabularios existentes con el Registro de GBIF. Luego de que la actualización se haya completado, aparecerá un mensaje que indicará si la sincronización ha sido exitosa o si hubo errores en el proceso.  

### Ver Detalles de una Extensión
En la primera columna, el título de cada extensión es un enlace a una página de detalles para aquella extensión. La página de detalles muestra toda la información resumida que puede ser vista en la columna de la derecha de la lista de extensiones, así como la descripción detallada, referencias y ejemplos para cada una de las propiedades de la extensión.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminExtensionsDetail.png' />

Para propiedades que tienen vocabularios controlados, la información sobre las propiedades, en la columna de la derecha, contendrá el nombre del vocabulario como un enlace al lado de "Vocabulario". Haciendo clic sobre este enlace, se abrirá una página de detalles para el vocabulario, con un resumen de este en la parte superior y una tabla de valores válidos con información más detallada, como los términos preferidos y alternos y, los identificadores.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminExtensionsDetailVocabulary.png' />

### Instalar una Extensión
Para cualquiera de las extensiones que aún no ha sido instalada en el IPT, hay un botón “Instalar” debajo del nombre de la extensión en la columna de la izquierda. Haga clic sobre este botón para adquirir la extensión desde el Registro GBIF e instalarla en el IPT.

### Eliminar una Extensión
Cualquiera de las extensiones que ya haya sido instalada en el IPT, puede ser eliminada haciendo clic en el botón “Eliminar”. Las extensiones que estén siendo usadas para mapear los datos de algún recurso en el IPT, no pueden ser eliminadas. Cualquier intento mostrará un mensaje de error y una lista de recursos que están usando la extensión.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminExtensionsDetailVocabulary.png' />

### Actualizar una extensión
Cualquiera de las extensiones que ya haya sido instalada en el IPT, y que esté desactualizada, puede ser actualizada haciendo clic en el botón "Actualizar". Actualizar una extensión permite tomar ventaja de nuevos términos y vocabularios. Durante la actualización, los mapeos existentes que contengan términos depreciados serán eliminados, y reemplazados automáticamente por los términos actualizados. Luego de la actualización, todos los recursos afectados deben ser revisados y publicados nuevamente. 

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminExtensionsUpdate.png' />

## Ver Actividad del Sistema del IPT
Mensajes generados de las acciones tomadas mientras se estaba corriendo el IPT, son registradas por referencia en archivos, en el directorio llamado logs dentro del directorio de datos del IPT (véase la información bajo el encabezado “Configuración del IPT” en la sección “Menú Administración"). La página de la Actividad del Sistema muestra mensajes desde el archivo llamado admin.log, el cual contiene solamente aquellos mensajes que tienen una severidad mayor o igual a “ADVERTENCIA”. Los mensajes completos (contenidos en el archivo llamado debug.log) pueden ser abiertos o visualizados, haciendo clic sobre el enlace “archivo log completo”. El contenido del archivo log completo, puede ser útil cuando se reporte un aparente error.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAdminLogs.png' />

## Menú Acerca de (visible para todos los usuarios)
La página "Acerca de", predeterminadamente muestra información sobre la actual instalación del IPT, incluyendo información de la organización que lo aloja y si aquel IPT ha sido registrado. Esta página está diseñada para ser personalizada en cada IPT, editando el archivo llamado about.ftl en el directorio llamado “config”, dentro del directorio de datos del IPT (véase la información bajo el encabezado “Configuración del IPT” en la sección “Menú Administración"). El archivo about.ftl es una plantilla Freemarker que puede contener una combinación de HTML y referencias variables de la forma ${host.variable!"valor alternativo para cuando es nulo"}. Después de realizar los cambios en el archivo about.ftl, la página "Acerca de", deberá ser actualizada para mostrar los cambios. Revise el archivo about.ftl predeterminado, para ejemplos de las variables que pueden ser incluidas.

<img src='https://raw.githubusercontent.com/wiki/gbif/ipt/gbif-ipt-docs/ipt2/v23/es/IPTAbout.png' />

Aquí está el contenido del archivo about.ftl que resulta en la página que se ve en la imagen anterior. 

<pre><code>&lt;h1&gt;About this IPT installation&lt;/h1&gt;<br>
&lt;#if host.name??&gt;<br>
&lt;p&gt;This is a default IPT hosted by ${host.name}&lt;/p&gt;<br>
<br>
&lt;p&gt;You can use the following variables about the hosting organisation:&lt;/p&gt;<br>
&lt;ul&gt;<br>
  &lt;li&gt;description = ${host.description!}&lt;/li&gt;<br>
  &lt;li&gt;name = ${host.name!}&lt;/li&gt;<br>
  &lt;li&gt;alias = ${host.alias!}&lt;/li&gt;<br>
  &lt;li&gt;homepageURL = ${host.homepageURL!}&lt;/li&gt;<br>
  &lt;li&gt;primaryContactType = ${host.primaryContactType!}&lt;/li&gt;<br>
  &lt;li&gt;primaryContactName = ${host.primaryContactName!}&lt;/li&gt;<br>
  &lt;li&gt;primaryContactDescription = ${host.primaryContactDescription!}&lt;/li&gt;<br>
  &lt;li&gt;primaryContactAddress = ${host.primaryContactAddress!}&lt;/li&gt;<br>
  &lt;li&gt;primaryContactEmail = ${host.primaryContactEmail!}&lt;/li&gt;<br>
  &lt;li&gt;primaryContactPhone = ${host.primaryContactPhone!}&lt;/li&gt;<br>
  &lt;li&gt;nodeKey = ${host.nodeKey!}&lt;/li&gt;<br>
  &lt;li&gt;nodeName = ${host.nodeName!}&lt;/li&gt;<br>
  &lt;li&gt;nodeContactEmail = ${host.nodeContactEmail!}&lt;/li&gt;<br>
&lt;/ul&gt;<br>
&lt;#else&gt;<br>
This IPT installation has not been registered yet.<br>
&lt;/#if&gt;<br>
</code></pre>
<hr />

# Acerca del IPT
## Cómo Citar Este Manual
El manual de usuario original en Inglés (Wieczorek & Braak 2015. The GBIF Integrated Publishing Toolkit User Manual, version 2.2. Copenhagen: Global Biodiversity Information Facility) se adaptó y elaboró a partir del Manual de Usuario del IPT previamente publicado. (Réveillon 2009).

La traducción de esta versión al español es una contribución del equipo Coordinador del Sistema de Información sobre la Biodiversidad de Colombia (SIB Colombia, http://www.sibcolombia.net/), en especial de Néstor Beltrán y Valerie Dean.

La citación recomendada para esta traducción al español es la siguiente:

Wieczorek & Braak (2015). Manual de usuario para el Integrated Publishing Toolkit - Global Biodiversity Information Facility. (Beltran, N. & Dean, V., trad.). Bogotá: Sistema de Información Sobre Biodiversidad de Colombia. Disponible en Internet en https://github.com/gbif/ipt/wiki/IPT2ManualNotes_ES.wiki.

## Derechos de Autor
El Integrated Publishing Toolkit de GBIF y este manual de usuario son Copyright 2011 de la Secretaría de Global Biodiversity Information Facility.

## Licencia
El Integrated Publishing Toolkit de GBIF es un software de código abierto publicado bajo la licencia Apache versión 2.0. Usted puede obtener una copia de esta licencia en <a href='http://www.apache.org/licenses/LICENSE-2.0'>http://www.apache.org/licenses/LICENSE-2.0</a>. A menos que se requiera por ley o se acuerde por escrito, el software distribuido bajo esta licencia se distribuye tal cual es, sin garantías de condiciones de ningún tipo, ni explícitas, ni implícitas. Consulte la licencia para el idioma específico que rige los derechos y limitaciones de la licencia.

Este manual del usuario se publica bajo la Licencia Creative Commons Atribución-No comercial-Compartir igual 3.0 Unported. Usted puede obtener una copia de esta licencia en <a href='http://creativecommons.org/licenses/by-nc-sa/3.0/'>http://creativecommons.org/licenses/by-nc-sa/3.0/</a>. Aunque deberá consultar el documento de licencia para obtener más información, en términos generales, la licencia dice que usted es libre de copiar, distribuir, transmitir, reutilizar y adaptar el trabajo, bajo las siguientes condiciones:
* debe citar el trabajo de la manera especificada en esta página (pero no de una manera que sugiera que GBIF, o la Secretaría de GBIF lo respalda a usted o a su uso de la obra);
* no puede utilizar esta obra para fines comerciales;
* si usted altera, transforma, o crea a partir de esta obra, puede distribuir la obra derivada bajo una licencia idéntica a ésta.

# Recursos
## Documentación Darwin Core Archive
Los detalles sobre la estructura de un archivo Darwin Core Archive, abreviado DWCA, se pueden encontrar en la sección "Guía de texto" de la página web de Darwin Core:<a href='http://rs.tdwg.org/dwc/terms/guides/text/'>http://rs.tdwg.org/dwc/terms/guides/text/</a>. Para más información sobre el uso de DWCA por parte del IPT, remítase a este documento[[wiki del IPT de GBIF en Google Code:this|DarwinCore.wiki]].

## Mesa de Ayuda GBIF
Envíe mensajes de correo electrónico a helpdesk@gbif.org para reportar problemas con los servicios de GBIF, tales como el Registro GBIF. No envíe preguntas específicas de ayuda del IPT a la "Mesa de Ayuda". En su lugar, envíelas a la "Lista de Correos" del IPT (ver más abajo).

## Registro GBIF

Utilice esta aplicación en línea para encontrar información acerca de organizaciones, instancias del IPT, y recursos registrados en GBIF:<a href='http://www.gbif.org/dataset'>http://www.gbif.org/dataset</a>.*

## Sitio del Código IPT
El "Sitio del Código" es el repositorio del proyecto para todo el código de fuente abierta, administración y documentación del IPT:<a href='https://github.com/gbif/ipt'>https://github.com/gbif/ipt</a>.

## Documentación para Desarrolladores del IPT
Los desarrolladores que deseen contribuir, o utilizar la última revisión del código fuente para su instalación deberán consultar la sección [[How to Contribute|HowToContribute.wiki]] del wiki del IPT.

## Grupo de Expertos del IPT en el Sitio de la Comunidad GBIF
El sitio de la comunidad de GBIF organiza un grupo para los interesados en participar en la "Mesa de Ayuda", promoción y actividades de formación relacionadas con el IPT de GBIF. Este es un lugar para intercambiar experiencias, pedir ayuda, y publicar oportunidades, con el objetivo de una mayor apropiación de la herramienta dentro y fuera de la red de GBIF:<a href='http://community.gbif.org/pg/groups/3529/gbif-ipt-helpdesk-and-training-experts/'>http://community.gbif.org/pg/groups/3529/gbif-ipt-helpdesk-and-training-experts/</a>.

## Seguimiento a Problemas del IPT
El [seguimiento de problemas] (https://github.com/gbif/ipt/issues)es un sistema de administración de informes de error y solicitud de características para el software y la documentación del IPT. 

## Lista de Correos del IPT
Suscríbase a la "Lista de Correos" del IPT para enviar y recibir mensajes relacionados con el uso del Integrated Publishing Toolkit. Este grupo es para que los usuarios se apoyan mutuamente en el uso del IPT <a href='http://lists.gbif.org/mailman/listinfo/ipt/'>http://lists.gbif.org/mailman/listinfo/ipt/</a>.

## Preparación del Servidor del IPT
Esta página wiki da detalles acerca de la preparación de un servidor para ejecutar el IPT y se puede encontrar en el sitio en código de la wiki del proyecto IPT en <a href='http://code.google.com/p/gbif-providertoolkit/wiki/IPTServerPreparation'>http://code.google.com/p/gbif-providertoolkit/wiki/IPTServerPreparation</a>.

## Bases de Datos del IPT Soportadas
Esta página wiki da detalles acerca de los sistemas de administración de bases de datos a los que el IPT se pueden conectar para obtener una fuente de datos. La página se puede encontrar en el sitio en código del proyecto IPT [[here|IPT2DatabaseConnection.wiki]].

## Instalación de Prueba del IPT
GBIF proporciona una instalación funcional del IPT para fines de evaluación y prueba. La instalación de prueba de la última versión se puede encontrar en<a href='http://ipt.gbif.org'>http://ipt.gbif.org</a>.

# Referencias
Réveillon, A. 2009. The GBIF Integrated Publishing Toolkit User Manual, version 1.0. Copenhagen: Global Biodiversity Information Facility. 37 pp.

# Glosario
* **Recursos Lista de Chequeo** - Un recurso que tiene información acerca de uno de los muchos tipos de listas relacionadas con el taxón.
* **Estándar** - Una categoría de conjuntos predefinidos de las propiedades de los datos (Taxón y Registro Biológico) que se utilizan como base de un recurso. Extensiones adicionales podrían estar vinculadas a estos estándares para hacer el mapeo de los datos en el IPT.
* **Archivo CSV** - Un archivo de texto que contiene datos en formato de valores separados por comas.
* **Datos del directorio** - La ruta (ubicación) completa (en vez de relativa) en la estructura del archivo, en el que se encuentran los datos asociados con la instancia IPT.
* **Darwin Core** - Un estándar consistente de elementos y clases de elementos utilizados para compartir datos sobre biodiversidad.
* **Archivo Darwin Core** - Un archivo comprimido para un conjunto de datos que consta de uno o más archivos de texto de datos, un archivo XML (meta.xml) que describe el contenido de los archivos de texto y cómo se relacionan entre sí, y un archivo XML (eml.xml) que contiene los metadatos en EML sobre el conjunto de datos.
* **EML** - el Ecological Metadata Language es un perfil basado en XML utilizado para codificar los metadatos de un conjunto de datos.
* **Extensión** - En este manual de usuario, una extensión es un conjunto de elementos que corresponden a una categoría específica de datos. Una extensión debe ser considerada como una extensión de las capacidades del IPT, más que como una extensión de cualquier estándar en particular.
* **Registro GBIF** - El Global Biodiversity Resources Discovery System (GBRDS) es una aplicación de administración de los nodos, las organizaciones, los recursos e instalaciones del IPT registrados en GBIF, haciéndolos detectables e interoperables.
* **Metadatos** - En este manual del usuario, los metadatos se refieren a la información sobre un conjunto de datos en lugar de los datos primarios del conjunto de datos.
* **Recurso de Metadatos** - Un recurso que tiene información sobre un conjunto de datos, pero sin tener los datos primarios. Por ejemplo, un recurso de metadatos puede dar información acerca de una colección que aún no se ha digitalizado.
* **Recurso de Registro Biológico** - Un recurso que tiene información acerca de Registros Biológicos tal como se define en el Darwin Core.
* **Privado** - Un estado de un recurso en el que este sólo puede ser visualizado por el creador, los administradores invitados y los administradores del IPT.
* **Público** - Un estado de un recurso que permite la visualización a cualquier usuario.
* **Versión Publicada** - La última versión del Archivo Darwin Core Archive producido por un recurso en el IPT y registrado en el Registro GBIF.
* **Registrados** - Un estado de un recurso público o de una instancia del IPT que implica que cualquier usuario lo puede detectar del Registro GBIF.
* **Recurso** - En este manual de usuario, un recurso se refiere a un conjunto de datos y sus respectivos metadatos.
* **Administradores de Recursos** - Los usuarios del IPT cuya función les permite crear, modificar y eliminar recursos.
* **RowType** - La categoría de información representada en una extensión. El RowType es generalmente el URI de la clase que mejor se adapte a la información contenida en la extensión.
* **RSS** - El acrónimo de Really Simple Syndication, un tipo de formato de suscripción de seguimiento de los cambios a un sitio web.
* **Recurso de Evento de Muestreo** - Un recurso que contiene información acerca de un evento de muestreo como es definido en el  Darwin Core.
* **Nombre corto** - Un nombre corto único que se utiliza para la identificación de un recurso dentro del IPT y los servicios que acceden al IPT.
* **Fuente de Datos** - En este manual de usuario, la fuente de datos son los datos que se enlazan con los estándares y las extensiones dentro de un recurso y pueden consistir en archivos de texto o una base de datos.
* **Visibilidad** - Un término que describe cómo un recurso puede ser visualizado (privado, público o registrado).
