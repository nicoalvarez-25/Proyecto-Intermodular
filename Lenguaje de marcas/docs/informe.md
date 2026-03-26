# Informe del proyecto: VendinGal

## 1. Qué datos ver en el XML
El archivo `datos.xml` contiene la estructura de datos de VendinGal:
* Empleados: plantilla de trabajadores de la empresa (reponedor, administrativo y técnico).
* Clientes: empresas donde están ubicadas las máquinas y se les presta servicio (talleres, albergues, empresas de energía).
* Máquinas: parque de máquinas en propiedad (cafeteras y expendedoras).
* Recambios: inventario de piezas de repuesto. (monederos, billeteros...).

En el documento se usan identificadores únicos (`ID`) y referencias cruzadas (`IDREF`) para vincular qué máquinas en específico está vinculadas a cada cliente.

## 2. Cómo se valida con el DTD
La estructura de datos está controlada por el archivo `modelo.dtd`. La validación se ha realizado utilizando la opción de **Visual Studio Code** de Ver>Problemas (Ctrl+Mayús+M)  con la extensión **XML de Red Hat** instalada.
Al abrir el archivo `datos.xml`, la extensión procesa la directiva `<!DOCTYPE VendinGal SYSTEM "modelo.dtd">` y valida el código en tiempo real. Si se incumple alguna regla como en la imagen `error_dtd.png` el editor marca la línea en rojo y explica el fallo en el panel "Problemas" que se abre en la parte inferior.

## 3. Cómo ejecutar la transformación XSLT y visualizar el HTML.
El archivo `datos.xml` se enlaza con la plantilla de transformación mediante `<?xml-stylesheet href="transform.xsl" type="text/xsl"?>`. Para ejecutarlo simplemente se abre el archivo XML en un navegador web, este procesa el XSLT de forma nativa para generar las tablas HTML y carga el diseño visual desde el archivo `/css/estilo.css`.

## 4. Dónde ver la evidencia
Dentro de `/docs/` se incluyen las evidencias gráficas:
* `validacion_dtd.png`: demuestra que el XML cumple con el DTD (panel de problemas sin ninguno en VS Code).
* `error_dtd.png`: evidencia que el DTD controla los errores perfectamente (captura de un error provocado al eliminar el `id` de `<empleado>`).
* `transform_html.png`: muestra el documento XML renderizado como página web en el navegador, aplicando los estilos del CSS.

## 5. Integración con el proyecto
Este trabajo sirve para crear un panel de control web para la empresa **VendinGal**. En el día a día ni los empleados ni el gerente deberían estar usando el código directamente, para evitar eso este sistema crea una interfaz amigable a partir de los datos del archivo `datos.xml` en la que gracias al diseño creado con XSLT y CSS se puede consultar de forma rápida y fácil el inventario.