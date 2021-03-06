<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs"
    xmlns="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="TEI">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>
    <xsl:template match="text">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="front">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="castList">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="castItem">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="head">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="p">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="body">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="div[@type = 'act']">
        <xsl:element name="div">
            <xsl:attribute name="type">act</xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="div[@type = 'act']" level="multiple" format="1"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="div[@type = 'scene']">
        <xsl:element name="div">
            <xsl:attribute name="type">scene</xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="div[@type = 'scene']" level="multiple" format="1"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="div[@type = 'tableau']">
        <xsl:element name="div">
            <xsl:attribute name="type">tableau</xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="div[@type = 'tableau']" level="multiple" format="1"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="div[@type = 'part']">
        <xsl:element name="div">
            <xsl:attribute name="type">part</xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="div[@type = 'part']" level="multiple" format="1"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="stage">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="l">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="speaker">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="lg">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="sp">
        <xsl:element name="sp">
            <xsl:attribute name="n">
                <xsl:number count="sp" level="single" format="1"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>