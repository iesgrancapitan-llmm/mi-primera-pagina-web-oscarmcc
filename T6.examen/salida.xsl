<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Martín-Castaño Carrillo Óscar</title>
            </head>
            <body>
                <style>
                    body{
                        background-color: green;
                    }

                    table{
                        border: 1px solid black;
                    }

                    td, th{
                        border: 1px solid black;
                    }
                </style>
                <h1>Examen XSLT</h1>
                <ul>
                <xsl:for-each select="artistas/artista">
                    <xsl:sort select="nacimiento" data-type="number"/>
                    <li><xsl:value-of select="nombre"/> (<xsl:value-of select="nacimiento"/>- 
                        <xsl:choose>
                            <xsl:when test="fallecimiento">
                                <xsl:value-of select="fallecimiento"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text> ---- </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    )</li>
                </xsl:for-each>
                </ul>   
                <br/>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Pais</th>
                        <th>Enlace</th>
                    </tr>
                    <xsl:for-each select="artistas/artista">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="pais"/></td>
                            <td><a><xsl:attribute name="href"><xsl:value-of select="@wikipedia"/></xsl:attribute><xsl:value-of select="@wikipedia"/></a></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>