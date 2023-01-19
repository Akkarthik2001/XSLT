<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:json="http://www.ibm.com/xmlns/prod/2009/jsonx">
	<xsl:template match="/">
		<!-- Transform the XML into jsonx. -->
		<json:object>
			<json:object name="customers">
				<json:array name="customer">
					<xsl:for-each select="customers/customer">
						<json:object>
							<json:string name="firstName">
								<xsl:value-of select="firstName"/>
							</json:string>
							<json:string name="lastName">
								<xsl:value-of select="lastName"/>
							</json:string>
							<json:string name="middleName">
								<xsl:value-of select="middleName"/>
							</json:string>
							<json:string name="email">
								<xsl:value-of select="email"/>
							</json:string>
							<json:number name="phoneNumber">
								<xsl:value-of select="phoneNumber"/>
							</json:number>
							<json:object name="address">
								<json:string name="city">
									<xsl:value-of select="address/city"/>
								</json:string>
								<json:string name="state">
									<xsl:value-of select="address/state"/>
								</json:string>
								<json:string name="addressLines">
									<xsl:value-of select="address/addressLines"/>
								</json:string>
								<json:string name="addressLines2">
									<xsl:value-of select="address/addressLines2"/>
								</json:string>
								<json:number name="postalCode">
									<xsl:value-of select="address/postalCode"/>
								</json:number>
							</json:object>
						</json:object>
					</xsl:for-each>
				</json:array>
			</json:object>
		</json:object>
	</xsl:template>
</xsl:stylesheet>