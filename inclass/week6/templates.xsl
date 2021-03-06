<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h2>My Art Collection</h2>
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>

<xsl:template match="art">
    <p>
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="artist"/>
    </p>
</xsl:template>

<xsl:template match="title">
    Title: <span class="title"><xsl:value-of select="."/></span>
    <br/>
</xsl:template>

<xsl:template match="artist">
    Artist: <span class="author"><xsl:value-of select="."/></span>
    <br/>
</xsl:template>

</xsl:stylesheet>
