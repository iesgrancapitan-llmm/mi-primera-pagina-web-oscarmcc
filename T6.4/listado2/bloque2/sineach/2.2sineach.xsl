<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <ol>
      <xsl:apply-templates select="bib/libro[precio &lt; 100]/titulo"/>
    </ol>
  </xsl:template>
  
  <xsl:template match="titulo">
    <li><xsl:value-of select="."/></li>
  </xsl:template>

</xsl:stylesheet>
