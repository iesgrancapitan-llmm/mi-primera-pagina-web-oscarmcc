<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />

  <xsl:template match="ies">
    <html>
      <h1><xsl:value-of select="@nombre" /></h1>
      <p>Pagina web:<a href="http://www.iesabastos.org/">http://www.iesabastos.org/</a></p>
      <ul>
        <xsl:apply-templates />
      </ul>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <li><xsl:value-of select="nombre" /></li>
  </xsl:template>

</xsl:stylesheet>