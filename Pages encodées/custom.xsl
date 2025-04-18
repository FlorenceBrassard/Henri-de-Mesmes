<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:tei="http://www.tei-c.org/ns/1.0"
	>

<xsl:template match="/">
  <html>
	  <head>
		  <link rel="stylesheet" type="text/css" href="css/style.css"/><script src="css/myscripts.js"></script><link rel="stylesheet" media="print" type="text/css" href="https://www.tei-c.org/release/xml/tei/stylesheet/tei-print.css"/>
	  </head>
  <body>

	  <h1><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc//tei:title"/></h1>
	  <div class ="author"><span class="authorname"><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc//tei:author/tei:persName/tei:forename"/></span>

<span class="authorsurname"><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc//tei:author/tei:persName/tei:surname"/></span>

	  </div>
	  <div class="editor">
<!-- <xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc//tei:editor/tei:persName"/> -->
<xsl:for-each select="/tei:TEI/tei:teiHeader/tei:fileDesc//tei:editor/tei:persName">
	<span><xsl:value-of select="tei:forename"/></span>
	<span><xsl:value-of select="tei:surname"/></span>
      </xsl:for-each>
      </div>

      <div class="buttonvis"><button onclick="myFunction()">Change la visualisation</button></div>

<xsl:apply-templates select="/tei:TEI//tei:body"/>

  </body>
  </html>
</xsl:template>


<xsl:template match="/tei:TEI//tei:body//tei:p//tei:del">
	<span class="cancelled">
  <xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="/tei:TEI//tei:body//tei:orig">
	<span class="orig">
  <xsl:value-of select="."/></span>
</xsl:template>


<xsl:template match="/tei:TEI//tei:body//tei:reg">
	<span class="reg">
  <xsl:value-of select="."/></span>
</xsl:template>


<xsl:template match="/tei:TEI//tei:body//tei:p">
	<p>

<xsl:apply-templates/></p>
</xsl:template>
</xsl:stylesheet> 
