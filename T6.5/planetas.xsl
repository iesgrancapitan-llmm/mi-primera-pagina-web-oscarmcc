<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template para el elemento raíz -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Planetas</title>
                <style>
                    body {
                    font-family: Roboto;
                    }
                    h1 {
                    background-color: green;
                    }
                    table {
                    border-collapse: collapse;
                    border: 2px solid black;
                    }
                    th, td {
                    border: 3px solid black;
                    padding: 8px;
                    }
                    .solar-sistema {
                    color: green;
                    }
                    .otros-planetas {
                    color: red;
                    }
                </style>
            </head>
            <body>

                <h1>Óscar Martín-Castaño Carrillo</h1>

                <h2>Planetas del Sistema Solar</h2>
                <ol>
                    <xsl:apply-templates select="//solar_sistema" />
                </ol>

                <h2>Tabla de Planetas del Sistema Solar (Distancia &lt; 1000)</h2>
                <table>
                    <tr>
                        <th>
                            <xsl:value-of select="name(//planetas)" />
                        </th>
                        <th>Distancia</th>
                    </tr>
                    <xsl:for-each select="//solar_sistema/planeta[@distance &lt; '1000']">
                        <tr>
                            <td>
                                <xsl:value-of select="." />
                            </td>
                            <td>
                                <xsl:value-of select="@distance" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Tabla de Todos los Planetas</h2>
                <table>
                    <tr>
                        <th>Planetas</th>
                    </tr>
                    <xsl:for-each select="//planetas/*">
                        <xsl:variable name="tipo">
                            <xsl:choose>
                                <xsl:when test="self::solar_sistema">
                                    <xsl:text>solar-sistema</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>otros-planetas</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <tr>
                            <td>
                                <xsl:attribute name="class"><xsl:value-of select="$tipo" /></xsl:attribute>
                                <xsl:value-of select="." />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="solar_sistema">
        <xsl:for-each select="planeta">
            <li>
                <xsl:value-of select="." />
            </li>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>