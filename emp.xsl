<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		<style>
			body {background-color: powderblue;}
			h1   {color: blue;}
			table { border-radius: 5px;}
		</style>	
		</head>
		<body>
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center">
		<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>SALARY</th>
		<th>EMAIL</th>
		<th>MobNum</th>
		<th>Designation</th>
		<th>PROMOTION</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<tr>
		<td>
		<xsl:value-of select="@id"/>
		</td>
		<td>
		<xsl:value-of select="Emp_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_salary"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_emailid"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_phonenum"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_designation"></xsl:value-of>
		</td>
		<td>
		<xsl:if test="Emp_age &gt;= 50">
		<xsl:text>Associate Project Manager </xsl:text>
		</xsl:if>
		<xsl:if test="Emp_age &gt;= 40">
		<xsl:if test="Emp_age &lt;= 49">
		<xsl:text>Team Leader</xsl:text>
		</xsl:if>
		</xsl:if>
		<xsl:if test="Emp_age &lt;= 40">
		<xsl:text>Developer</xsl:text>
		</xsl:if>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
