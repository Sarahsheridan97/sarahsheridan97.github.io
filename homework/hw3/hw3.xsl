<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="CATALOG">
        <html>
            <head>
                <title>Plant Catalog</title>
            </head>
            <body>
                <h1>A Catalog for Plants</h1>
                <p>AKA Sarah Bull's Homework</p>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="PLANT">
        <div>
            <space dim="vertical" unit="line" quantity="1"/>
           <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="COMMON">
       <h2>Common Name:</h2>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="BOTANICAL">
        <h3>Botanical Name:</h3>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="ZONE">
        <h4>Grow Zone:</h4>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="LIGHT">
        <h5>Light Needs:</h5>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="PRICE">
        <h6>Price:</h6>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="AVAILABILITY">
        <h7>AVAILABILITY:</h7>
        <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>