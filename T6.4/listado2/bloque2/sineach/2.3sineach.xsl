<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <table border="1">
      <tr>
        <th>Precio del libro</th>
        <th>Título del libro</th>
        <th>Año de publicación</th>
      </tr>
      <xsl:apply-templates select="bib/libro">
        <xsl:sort select="precio" data-type="number"/>
      </xsl:apply-templates>
    </table>
  </xsl:template>
  
  <xsl:template match="libro">
  <tr>
    <td><xsl:value-of select="precio"/></td>
    <td>
      <xsl:attribute name="style">
        <xsl:text>background-color: </xsl:text>
        <xsl:choose>
          <xsl:when test="precio > 100">red</xsl:when>
          <xsl:otherwise>white</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <xsl:value-of select="titulo"/>
    </td>
    <td><i><xsl:value-of select="@año"/></i></td>
  </tr>
</xsl:template>



</xsl:stylesheet>
