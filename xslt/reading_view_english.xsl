<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method = "xml" indent = "yes" doctype-system="about:legacy-compat"/>
    
    
    <xsl:template match = "/">
        <html>
            
            <head>
                <link rel="stylesheet" type="text/css" href="rsrc/css/reading_view_css.css" />
                <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css?family=Yrsa" rel="stylesheet" />
                
                <title>Gulshani English</title>
            </head>
            <body>
                
            <h1>Reading View</h1>
            <h2>
                ToC
            </h2>
            
            <hr/>
            
            <ol>
                 <xsl:apply-templates select = "//loc_sec" mode = "toc"/>
                
            </ol>
            
            <h2>Sections</h2>
            
            <xsl:apply-templates select = "//loc_sec"/>
            
            </body> 
        </html>
       
        
    </xsl:template>
    
    <!-- TOC Templates -->
    
    <xsl:template match = "loc_sec" mode = "toc">
        
        <li>
            <a href="#loc{@id}">
                <xsl:apply-templates select="heading" mode="toc"/>
  
            </a>
        </li>
        
    </xsl:template>
 
    <!-- Body Templates -->
    
    <xsl:template match = "loc_sec">
        <h3 id="loc{@id}">
            <xsl:apply-templates select = "heading"/> 
        </h3>
        
            <xsl:apply-templates select = "ts"/> 
        
        
    </xsl:template>
    
    
  <xsl:template match = "ts">
        <p>
            <xsl:apply-templates/> 
        </p>
        
        
    </xsl:template>
    
    <xsl:template match = "glossed">
        <span class = "dropdown">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "target">
        <span class = "gloss">
            <xsl:apply-templates/> 
        </span>
    </xsl:template>
    
    
    
    <xsl:template match = "gloss">
        <span class = "dropdown-content">
            <xsl:apply-templates/> 
        </span>
    </xsl:template>
    
    
</xsl:stylesheet>