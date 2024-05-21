<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta name="author" content="Óscar Martín-Castaño Carrillo"/>
                <title>Martín-Castaño Carrillo, Óscar</title>
                <style>
                    h1 {
                        background-color: green;
                    }

                    table {
                        border: solid 1px black;
                        padding: 5px;
                        text-align: center;
                    }

                    tr, th, td {
                        border: solid 1px black;
                        padding: 10px;
                    }
                </style>
            </head>
            <body>
                <h1>Artistas</h1>
                <ol>
                    <xsl:for-each select="artistas/artista">
                    <xsl:sort select="nacimiento" order="ascending"/>
                        <li>
                            <xsl:value-of select="nombre"/>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="nacimiento"/>
                            <xsl:text> - </xsl:text>
                            <xsl:choose>
                                <xsl:when test="fallecimiento"><xsl:value-of select="fallecimiento"/></xsl:when>
                                <xsl:otherwise>---</xsl:otherwise>
                            </xsl:choose>
                            <xsl:text>)</xsl:text>
                        </li>
                    </xsl:for-each>
                </ol>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>País</th>
                        <th>Enlace</th>
                    </tr>
                    <xsl:for-each select="artistas/artista">
                    <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="pais"/></td>
                            <td>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="@wikipedia"/>
                                    </xsl:attribute>
                                    Página Wiki
                                </a>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
