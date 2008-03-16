<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<div class='twext-box'>
			<xsl:for-each select='/twext/para'>
				<table class='twext-para'>
					<xsl:for-each select='line'>
						<tr><td class='twext-line'>
							<xsl:for-each select='chunk'>
								<table class='twext-chunk'>
									<tr><td><center><span class='twext-text'><nobr><xsl:value-of select='text'/></nobr></span></center></td></tr>
									<tr><td><center><span class='twext-twxt'><nobr><xsl:value-of select='twxt'/></nobr></span></center></td></tr>
								</table>
							</xsl:for-each>
						</td></tr>
					</xsl:for-each>
				</table>
			</xsl:for-each>
		</div>
	</xsl:template>
</xsl:stylesheet>
