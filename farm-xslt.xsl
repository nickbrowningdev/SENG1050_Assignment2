<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

   <xsl:template match="farms">

		<html>

			<head>
				<title>Farm Goods</title>
				<link rel="stylesheet" href="style.css" type="text/css" />
				
				<style type="text/css">
					p.white {color: white}

				</style>

			</head>

			<body>
				<h1>Farm Goods</h1>		
				<hr />
				<xsl:apply-templates select="farm" />
				
			</body>

		</html>

   </xsl:template>

   <xsl:template match="farm">
		<p style="font-style:italic" class="white">
		<xsl:value-of select="goods_type" />
		<xsl:text> </xsl:text>
		<xsl:value-of select="farm_name" />
		<xsl:text>. </xsl:text>
		<br />
		</p>
		<tr>
			<td>
				<xsl:element name="img">
					
					<xsl:value-of select="img/farm_logo"/>
					<xsl:attribute name="align">left</xsl:attribute>
				</xsl:element>
			</td>
		</tr>
		<br />
		
		<p style="font-style:italic" class="white">
		<xsl:value-of select="owner" />
		<xsl:text>. </xsl:text>
		<br />
		</p>
		
		<p style="font-style:italic" class="white">
		<xsl:value-of select="phone/home_phone" />
		<xsl:text> </xsl:text>
		<xsl:value-of select="phone/mobile_phone" />
		<xsl:text>. </xsl:text>
		<br />
		</p>
		
		<p style="font-style:italic" class="white">
		<xsl:value-of select="delivery/min_price" />
		<xsl:text> </xsl:text>
		<xsl:value-of select="delivery/deli_fee" />
		<xsl:text>. </xsl:text>
		<br />
		</p>
		
		<ul>
			<xsl:for-each select="goods">
			<li>
				<p style="font-style:italic" class="white">
				<xsl:value-of select="goods/goods_name" />
				<xsl:text>. </xsl:text>
				<br />
				</p>
			</li>
			<!--</xsl:if>-->
			</xsl:for-each>
		</ul>
		
		
		<tr>
			<td>
				<xsl:element name="img">
					
					<xsl:value-of select="img/goods_pic"/>
					<xsl:attribute name="align">left</xsl:attribute>
				</xsl:element>
			</td>
		</tr>
		<br />
		
   </xsl:template>
   
</xsl:stylesheet>