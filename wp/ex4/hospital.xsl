<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
    <head>
	<title>XSL Stylesheet</title>
    </head>

	<body>
	     <table border="none" border-color="black">
		<tr>
		  <th>Name</th>
		  <th>SSN</th>
		  <th>Age</th>
		  <th>Room No.</th>
		  <th>Medical ID</th>
		  <th>Group ID</th> 
		  <th>Address</th>
		  <th>Know Med. Problems</th>
		  <th>Drug Allergies</th>
		</tr>

	     <xsl:for-each select="hospital/patient">

	     <tr>
		<td>
		  <xsl:value-of select="name"/>
		</td>

		<td>
		  <xsl:value-of select="ssn"/>
		</td>

		<td>
		  <xsl:value-of select="age"/>
		</td>

		<td>
		  <xsl:value-of select="roomno"/>
		</td>

		<td>
		  <xsl:value-of select="insurance/m_id"/>
		</td>

		<td>
		  <xsl:value-of select="insurance/g_no"/>
		</td>

		<td>
		  <xsl:value-of select="insurance/address"/>
		</td>

		<td>
		  <xsl:value-of select="known_med_problems"/>
		</td>

		<td>
		  <xsl:value-of select="drg_allu"/>
		</td>
	     </tr>

	   </xsl:for-each>
          </table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>


		

		  