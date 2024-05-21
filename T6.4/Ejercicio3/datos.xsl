<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h1>Óscar Martín-Castaño Carrillo</h1>
        <h2>Contenido de todas las etiquetas</h2>
        <table>
          <tr>
            <th>Etiqueta</th>
            <th>Contenido</th>
          </tr>
          <xsl:apply-templates/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="*">
    <tr>
      <td><xsl:value-of select="name()"/></td>
      <td><xsl:value-of select="."/></td>
    </tr>
    <xsl:apply-templates select="*"/>
  </xsl:template>

</xsl:stylesheet>
