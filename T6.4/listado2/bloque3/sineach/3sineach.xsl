<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <autores_españoles>
      <xsl:apply-templates select="catalogo/artistas/artista[nacionalidad='España']/nombre"/>
    </autores_españoles>
  </xsl:template>

  <xsl:template match="nombre">
    <autor>
      <xsl:value-of select="."/>
    </autor>
  </xsl:template>

  <xsl:template match="cds">
    <table border="1">
      <tr>
        <th>Disco</th>
      </tr>
      <xsl:apply-templates select="cd">
        <xsl:sort select="año"/>
      </xsl:apply-templates>
    </table>
  </xsl:template>

  <xsl:template match="cd">
    <tr>
      <xsl:choose>
        <xsl:when test="año &gt; 2000">
          <td style="color:green"><xsl:value-of select="titulo"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td style="color:red"><xsl:value-of select="titulo"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>

</xsl:stylesheet>
