<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

    <html>

        <head>
            <link rel="stylesheet" href="../css/estilo.css"/>
        </head>

        <body> 

            <div>
            <h1>VendinGal</h1>
           
            <h2>Empleados</h2>

            <div class="tabla">
            <table border="0">
                <tr>
                    <th>Nombre</th>
                    <th>Edad</th>
                    <th>Puesto</th>
                    <th>Sueldo</th>
                </tr>

                <xsl:for-each select="VendinGal/empleados/empleado">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="edad"/></td>
                    <td><xsl:value-of select="puesto"/></td>
                    <td><xsl:value-of select="sueldo"/></td>

                </tr>
                </xsl:for-each>
            </table>
            </div>

            <h2>Clientes</h2>
            <div class="tabla">
            <table border="0">
                <tr>
                    <th>Nombre</th>
                    <th>Direccion</th>
                    <th>Nº de máquinas</th>
                    <th>Facturacion media</th>
                </tr>

                <xsl:for-each select="VendinGal/clientes/cliente">
                <tr>
                    <td><xsl:value-of select="nombre_cliente"/></td>
                    <td><xsl:value-of select="direccion"/></td>
                    <td><xsl:value-of select="numero_maquinas"/></td>
                    <td><xsl:value-of select="facturacion_media"/></td>
                </tr>
                </xsl:for-each> 
            </table>
            </div>

            <h2>Máquinas en propiedad</h2>
            <div class="tabla">
            <table border="0">
                <tr>
                    <th>Tipo</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Año</th>
                    <th>Número de serie</th>
                </tr>

                <xsl:for-each select="VendinGal/maquinas_propiedad/maquina">
                <tr>
                    <td><xsl:value-of select="tipo"/></td>
                    <td><xsl:value-of select="marca"/></td>
                    <td><xsl:value-of select="modelo"/></td>
                    <td><xsl:value-of select="año"/></td>
                    <td><xsl:value-of select="num_serie"/></td>
                </tr>
                </xsl:for-each>
            </table>
            </div>

            <h2>Recambios</h2>
            <div class="tabla">
            <table border="0">
                <tr>
                    <th>Pieza</th>
                    <th>Marca</th>
                    <th>Número de referencia</th>
                    <th>Precio</th>
                </tr>

                <xsl:for-each select="VendinGal/recambios/recambio">
                <tr>
                    <td><xsl:value-of select="pieza"/></td>
                    <td><xsl:value-of select="marca"/></td>
                    <td><xsl:value-of select="num_referencia"/></td>
                    <td><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:for-each>
            </table>
            </div>
           </div>
        </body>

    </html>

</xsl:template>
</xsl:stylesheet>