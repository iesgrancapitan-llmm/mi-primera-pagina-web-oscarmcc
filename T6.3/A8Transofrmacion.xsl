<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Transformación XML a HTML</title>
      </head>
      <body>
        <h1>Lista de elementos</h1>
        <xsl:apply-templates select="*" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="*">
    <p>
      <xsl:value-of select="name()" />
      : 
      <xsl:value-of select="." />
    </p>
  </xsl:template>

</xsl:stylesheet>
