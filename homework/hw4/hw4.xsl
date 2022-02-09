<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    <xsl:template match="table">          
        <journals>
            <xsl:apply-templates/>
        </journals>
    </xsl:template>
    
    <xsl:template match="h3">
        <xsl:apply-templates select="a">
            <xsl:sort select="span" order="ascending"/>
        </xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="ul/li/p/a">          
        <title>
            <xsl:apply-templates/>
        </title>
        <url>
            <xsl:value-of select="concat('https://newplainsreview.com/1890-uco/', @href)"/>
        </url>     
    </xsl:template>
    
    <xsl:template match="span">  
        <institution>
            <xsl:apply-templates/>
            <xsl:value-of select="substring-after(span, '/ - ')"/>
        </institution>
    </xsl:template>
    
    
</xsl:stylesheet>