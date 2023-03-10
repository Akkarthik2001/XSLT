<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="customers/customer">
		<!--TASK-4: Add the Field SSN Number for each customer -->
		<xsl:copy>
			<xsl:element name="ssn">
				<xsl:value-of select="generate-id()"/>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="*">
		<xsl:copy>
			<xsl:apply-templates />
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>