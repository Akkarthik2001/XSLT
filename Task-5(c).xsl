<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- Address should always contain zip code. -->
		<xsl:for-each select="customers/customer/address">
			<xsl:choose>
				<xsl:when test="string-length(postalCode)!=5 or not(postalCode)">
					<Fault>
						<faultCode>500</faultCode>
						<faultString>Internal Server Error</faultString>
						<detail>
							<ErrorInfo>
								<errorMessageType>Fatal</errorMessageType>
								<errorCode>7000</errorCode>
								<errorMessageText>XML Failed in Processing</errorMessageText>
								<errorState>Validation Error</errorState>
							</ErrorInfo>
						</detail>
					</Fault>
					<xsl:message terminate="yes"></xsl:message>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="*">
		<xsl:copy>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>