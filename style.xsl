<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Year</th>
	<th>Month</th>
	<th>Day</th>
        <th>Entry</th>
	<th>TODO</th>
	<th>Mood (eventually want this just to be used for a color scheme for the entry</th>
      </tr>
      <xsl:for-each select="journal/entry">
        <tr>
          <td><xsl:value-of select="year"/></td>
	  <td><xsl:value-of select="month"/></td>
	  <td><xsl:value-of select="day"/></td>
          <td><xsl:value-of select="desc"/></td>
	  <td><xsl:value-of select="todo"/></td>
	  <td><xsl:value-of select="mood"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
