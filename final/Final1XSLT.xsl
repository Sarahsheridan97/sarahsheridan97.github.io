<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:aml="http://schemas.microsoft.com/aml/2001/core"
    xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas"
    xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex"
    xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex"
    xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex"
    xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex"
    xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex"
    xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex"
    xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex"
    xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex"
    xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex"
    xmlns:cr="http://schemas.microsoft.com/office/comments/2020/reactions"
    xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
    xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink"
    xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d"
    xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:v="urn:schemas-microsoft-com:vml"
    xmlns:w10="urn:schemas-microsoft-com:office:word"
    xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml"
    xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint"
    xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml"
    xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2"
    xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" exclude-result-prefixes="xs"
    version="2.0">

    <xsl:strip-space elements="*"/>

    <xsl:template match="w:wordDocument">
        <xsl:element name="html" namespace="">
            <xsl:element name="head" namespace="">
                <xsl:element name="title" namespace="">Too Tangled To Move</xsl:element>
                
            </xsl:element>
            <xsl:element name="body" namespace="">                                
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="w:p[w:pPr/w:pStyle/@w:val = 'Heading1']">
        <xsl:element name="h4" namespace="">            
                <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>  
    
    <xsl:template match="w:p[not(w:p/@wsp:rsidR='004D25CC')or(w:pPr)]">
        <xsl:element name="i" namespace="">            
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template> 
    
    <xsl:template match="w:p[not(w:pPr)]">
        <xsl:element name="p" namespace="">
            <xsl:apply-templates/>
        </xsl:element>          
    </xsl:template> 
    
    <xsl:template match="o:Created"/>    
    <xsl:template match="o:Author"/>
    <xsl:template match="o:LastAuthor"/>
    <xsl:template match="o:Revision"/>
    <xsl:template match="o:TotalTime"/>       
    <xsl:template match="o:LastSaved"/>
    <xsl:template match="o:Pages"/>
    <xsl:template match="o:Words"/>
    <xsl:template match="o:Characters"/>
    <xsl:template match="o:Lines"/>
    <xsl:template match="o:Paragraphs"/>
    <xsl:template match="o:CharactersWithSpaces"/>
    <xsl:template match="o:Version"/>


</xsl:stylesheet>
