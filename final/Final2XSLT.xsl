<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output indent="yes"/>
    <xsl:strip-space elements="yes"/>

    <xsl:template match="book">
        <html>
            <head>
                <title>Too Tangled to Move</title>
                <author>Marie Malo</author>
                <link href="sarahsheridan97.github.io/css/extra.css" rel="stylesheet"
                    type="text/css"/>
            </head>
            <body>
                <div class="header">
                    <h1>Too Tangled to Move</h1>
                    <h2>Marie Malo</h2>
                </div>
                <h3>Table of Contents</h3>
                <u1 class="posts">
                    <xsl:apply-templates/>
                </u1>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="chapter">
        <li>            
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('final/', h4, '.html')"/>
            </xsl:attribute>  
            <xsl:value-of select="h4"/>
        </xsl:element>
        </li>
        <xsl:result-document href="{concat('final/', h4, '.html')}">
            <html>
                <head>
                    <title>
                        <xsl:value-of select="h4"/>
                    </title>
                    <link href="https://sarahsheridan97.github.io/css/extra.css" rel="stylesheet" type="text/css"/>
                </head>
                <body>
                    <xsl:apply-templates select="h4"/>
                    <xsl:apply-templates select="p"/>
                    <a href="../chapter.html">Next Chapter</a>
                    <div>
                    <a href="../finalv4.html">Back to Contents</a>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="h4">
        <div>
            <h4>
                <xsl:apply-templates/>
            </h4>
        </div>
    </xsl:template>

    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>


</xsl:stylesheet>
