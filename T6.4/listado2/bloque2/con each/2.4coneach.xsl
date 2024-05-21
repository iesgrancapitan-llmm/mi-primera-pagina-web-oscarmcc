<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <table border="1">
    <tr>
      <th>Título del libro</th>
      <th>Autores</th>
      <th>Editores</th>
    </tr>
    <xsl:for-each select="bib/libro">
      <xsl:sort select="titulo"/>
      <tr>
        <td>
          <xsl:attribute name="style">
            <xsl:text>background-color: </xsl:text>
            <xsl:choose>
              <xsl:when test="precio > 100">red</xsl:when>
              <xsl:otherwise>white</xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
          <xsl:value-of select="titulo"/>
          <xsl:if test="precio > 100">(Caro)</xsl:if>
        </td>
        <td>
          <xsl:for-each select="autor">
            <xsl:value-of select="nombre"/><xsl:text> </xsl:text><xsl:value-of select="apellido"/><xsl:if test="position() != last()">, </xsl:if>
          </xsl:for-each>
        </td>
        <td>
          <xsl:for-each select="editor">
            <xsl:value-of select="nombre"/><xsl:text> </xsl:text><xsl:value-of select="apellido"/><xsl:text> </xsl:text><xsl:value-of select="afiliacion"/><xsl:if test="position() != last()">, </xsl:if>
          </xsl:for-each>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>


</xsl:stylesheet>
