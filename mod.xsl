<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.company-news">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-company-news" ox-mod="company-news">
            <ul>
            	<xsl:for-each select="data/article-news/i">
	            	<li>
	            		<p class="time">
	            			<xsl:value-of select="type"/>&#160;|&#160;<xsl:value-of select="time/y"/>-<xsl:value-of select="time/M"/>-<xsl:value-of select="time/d"/>
	            		</p>
	            		<h3 class="title">
	            			<a href="{LINK/detail}"><xsl:value-of select="title"/></a>
	            		</h3>
	            	</li>
	            </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
