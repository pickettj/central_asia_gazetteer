<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="//loc_sec[ts]"/>
    </xsl:template>
    
    <xsl:template match="loc_sec">
        <xsl:variable name="province_name" select="heading"/>
        <!--List of types-->
        <div province="{$province_name}">
            <ul>
                <xsl:apply-templates select="ts" mode="list"/>
            </ul>
        </div>
        <!--Text-->
        <div province="{$province_name}">
            <xsl:apply-templates select="ts"/>
        </div>
    </xsl:template>
    
    <xsl:template match="ts" mode="list">
        <li><xsl:value-of select="@type"/></li>
    </xsl:template>
    
    <xsl:template match="ts">
        <h3><xsl:value-of select="@type"/></h3>
        <span><xsl:value-of select="."/></span>
    </xsl:template>
</xsl:stylesheet>