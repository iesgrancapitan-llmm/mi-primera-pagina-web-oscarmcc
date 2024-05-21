<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <ol>
      <xsl:apply-templates select="bib/libro/autor">
        <xsl:sort select="apellido"/>
      </xsl:apply-templates>
    </ol>
  </xsl:template>
  
  <xsl:template match="autor">
    <li><xsl:value-of select="apellido"/>, <xsl:value-of select="nombre"/></li>
  </xsl:template>

</xsl:stylesheet>
