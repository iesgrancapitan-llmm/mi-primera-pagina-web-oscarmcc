<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          .green { color: green; }
          .blue { color: blue; }
          .red { color: red; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="ies/@nombre"/></h1>
        <table border="1">
          <tr>
            <th>Nombre del ciclo</th>
            <th>Año</th>
          </tr>
          <xsl:apply-templates select="ies/ciclos/ciclo">
            <xsl:sort select="nombre" order="ascending"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <xsl:variable name="color">
      <xsl:choose>
        <xsl:when test="decretoTitulo/@año > 2009">green</xsl:when>
        <xsl:when test="decretoTitulo/@año = 2009">blue</xsl:when>
        <xsl:otherwise>red</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><span class="{$color}"><xsl:value-of select="decretoTitulo/@año"/></span></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
