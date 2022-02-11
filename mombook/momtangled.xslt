<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="book">
        <html>
            <head>
                <title>Too Tangled to Move</title>
                <link href="sarahsheridan97.github.io/css/extra.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>Too Tangled to Move</h1>
                <u1 class="posts">
                    <xsl:apply-templates select="chapter">
                    <xsl:sort select="chapter-name" order="ascending"/>
                    </xsl:apply-templates>
                </u1>                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="chapter">
        <li>
            <xsl:element name="chapter-name">
                <xsl:attribute name="href">
                    <xsl:value-of select="concat('chapters/', chapter-name, '.html')"/>
                </xsl:attribute>
                <xsl:value-of select="chapter-name"/>
            </xsl:element>
        </li>
        <xsl:result-document href="{concat('chapters/', chapter-name, '.html')}">
            <html>
                <head>
                    <title><xsl:value-of select="chapter-name"/></title>
                    <link href="https://sarahsheridan97.github.io/css/main.css" rel="stylesheet" type="text/css"/>
                </head>
                <body>
                    <xsl:apply-templates select="chapter"/>
                    <xsl:apply-templates select="chapter-name"/>
                    <xsl:apply-templates select="p"/>
                    <a href="../momtangled.html">Back to list</a>
                </body>
            </html>
        </xsl:result-document>       
    </xsl:template>
    
    <xsl:template match="chapter">
        <div class="row">
            <div class="column.middle">
                <div class="card">
                    <xsl:element name="chapter">
                        <xsl:apply-templates/>
                    </xsl:element>
                </div>
            </div>
        </div>  
    </xsl:template>
    
    <xsl:template match="chapter-name">
        <div class="row">
            <div class="column.middle">
                <xsl:element name="h2">
                    <xsl:apply-templates/>
                </xsl:element>
            </div>            
        </div>
    </xsl:template>
    
    <xsl:template match="p">
        <div class="row">
            <div class="column.middle">
                <xsl:element name="p">
                    <xsl:apply-templates/>
                </xsl:element>                
            </div>
        </div>
    </xsl:template>

    
</xsl:stylesheet>