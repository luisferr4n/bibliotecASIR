<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<head>
    <title>Biblioteca</title>
    <style>
        body { font-family: Arial; }
        table { border-collapse: collapse; width: 100%; margin-bottom: 30px; }
        th, td { border: 1px solid black; padding: 8px; text-align: left; }
        th { background-color: #ddd; }
        .libro { border: 1px solid #333; padding: 10px; margin-bottom: 20px; }
    </style>
</head>
<body>

<h1>Biblioteca</h1>

<!-- Tabla índice -->
<h2>Índice</h2>
<table>
    <tr>
        <th>Título</th>
        <th>Autor</th>
    </tr>

    <xsl:for-each select="biblioteca/libro">
        <tr>
            <td>
                <a href="#{@id}">
                    <xsl:value-of select="titulo"/>
                </a>
            </td>
            <td><xsl:value-of select="autor"/></td>
        </tr>
    </xsl:for-each>
</table>

<!-- Fichas detalladas -->
<h2>Detalles</h2>
<xsl:for-each select="biblioteca/libro">
    <div class="libro" id="{@id}">
        <h3><xsl:value-of select="titulo"/></h3>
        <p><strong>Autor:</strong> <xsl:value-of select="autor"/></p>
        <p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
        <p><strong>Páginas:</strong> <xsl:value-of select="paginas"/></p>
        <p><strong>Sinopsis:</strong> <xsl:value-of select="sinopsis"/></p>
    </div>
</xsl:for-each>

</body>
</html>
</xsl:template>

</xsl:stylesheet>