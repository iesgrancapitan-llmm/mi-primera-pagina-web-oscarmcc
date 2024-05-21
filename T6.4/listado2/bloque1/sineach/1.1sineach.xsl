<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl:apply-templates select="ies/ciclos/ciclo/nombre"/>
  </xsl:template>
  
  <xsl:template match="nombre">
    <xsl:value-of select="."/>
    <xsl:text> </xsl:text>
  </xsl:template>

</xsl:stylesheet>