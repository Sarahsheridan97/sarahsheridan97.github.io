<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="disneyworld">
        <html>
            <head>
                <title>Disney World</title>
            </head>
            <body>
                <h1>Walt Disney World</h1>
                <p>This is my page about Disney World</p>
                <xsl:apply-templates/>
            </body>
        </html>        
    </xsl:template>
    
    <xsl:template match="themepark">
        <div>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="name">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="rides">
        <h3>Rides</h3>
        <ol><xsl:apply-templates/></ol>
    </xsl:template>
    
    <xsl:template match="hotels">
        <h4>Hotels</h4>
        <ol><xsl:apply-templates/></ol>
    </xsl:template>
    
    <xsl:template match="ride|hotel">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    
              
</xsl:stylesheet>