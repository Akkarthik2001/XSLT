<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="customers/customer">
		<!--TASK-2: Combine the first name, middle name, last name into one tag full name and remove them. -->
		<xsl:copy>
			<xsl:element name="fullName">
				<xsl:value-of select="concat(firstName,' ', middleName,' ', lastName )"/>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="firstName|middleName|lastName" />
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>