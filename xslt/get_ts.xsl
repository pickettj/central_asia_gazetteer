<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Location sections</title>
            </head>
            <body>
                <xsl:apply-templates select="//loc_sec"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="loc_sec">
        <xsl:value-of select="@id"/>
        <ol>
            <xsl:apply-templates select="ts"/>
        </ol>
    </xsl:template>
    
    <xsl:template match="ts">
        <li>
            <xsl:value-of select="@type"/>
        </li>
    </xsl:template>
</xsl:stylesheet>