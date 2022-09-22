<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dp="http://www.datapower.com/extensions"
    xmlns:dpfunc="http://www.datapower.com/extensions/functions"
    xmlns:dpconfig="http://www.datapower.com/param/config"
    xmlns:func="http://exslt.org/functions"
    xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/"
    extension-element-prefixes="dp func"
    exclude-result-prefixes="dpfunc dpconfig"
>
<xsl:template match="encoded-description">
	<description>
		<xsl:value-of select="dp:decode(.,'base-64')"/>
	</description>
</xsl:template>

<xsl:template match="benefits">
	<xsl:variable name="benefits" select="tokenize(.,';')"/>
		<benefits>
			<xsl:for-each select="$benefits">
				<benefit><xsl:value-of select="."/></benefit>
			</xsl:for-each>
		</benefits>
</xsl:template>

</xsl:stylesheet>