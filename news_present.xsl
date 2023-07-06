<!-- использование XSLT для преобразования XML в HTML -->
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:template match='/'>
		<html>
			<body>
				<h2 style='font-size:50px; text-align:center'>Новости недели</h2>
				<div>
					<xsl:for-each select='body/newsList/newsBody'>
				        <div style='display:flex; justify-content:center; align-items:center'>
				        	<span style='font-size:30px; text-align:center; background:#d0f0c0'>
				        		<xsl:value-of select='headline'/>
				        	</span>
				      	</div>
				      	<div>
					      	<p style='font-size:21px; text-align:justify; text-indent:25px; margin: 15px 25px 5px 50px'>
					      		<xsl:value-of select='article'/><br/>
					      	</p>
				      		<p style='font-size:18px; text-align:right; font-style:italic; margin-right:25px'>
				      			<xsl:value-of select='byline'/>
				      		</p>
				      		<p style='font-size:18px; text-align:right; font-style:italic; margin-right:25px'>
				      			<xsl:value-of select='dateline'/>
				      		</p>
				      	</div>
						<br/>
				   </xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>