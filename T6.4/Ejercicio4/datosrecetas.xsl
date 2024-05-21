<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Óscar Martín-Castaño Carrillo</h1>
        <h2>Atributos de todas las etiquetas</h2>
        <ul>
          <xsl:apply-templates select="//@*"/>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="@*">
    <li><xsl:value-of select="name()"/>: <xsl:value-of select="."/></li>
  </xsl:template>

</xsl:stylesheet>
