<?xml version="1.0" ?>   
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
 <xsl:template match="/">
     <link rel="stylesheet" type="text/css" href="Asociatie.css"/>
        
        <html>
            <head>
                <title>Tour Offers</title>
                
            </head>
            
            <body bgcolor="#4c637f">
                <Center>
                <h1 style="color:white"> Tour Offers </h1>
                
                
                    <table border="1" bgcolor="#a6bbd4" cellspacing="0" cellpadding="5">
                    <tr>
                        <td>
                            <div align="center">
                                <strong>Destination</strong>
                            </div>
                        </td>
                        <td>
                            <div align="center">
                                <strong>Activities</strong>
                            </div>
                        </td>
                        <td>
                            <div align="center">
                                <strong>Transport</strong>
                            </div>
                        </td>
                        <td>
                            <div align="center">
                                <strong>Accommodation</strong>
                            </div>
                        </td>
                        <td>
                            <div align="center">
                                <strong>Duration in days</strong>
                            </div>
                        </td>
                        <td>
                            <div align="center">
                                <strong>Price in USD($)</strong>
                            </div>
                        </td>
                    </tr>
                    
                    <xsl:for-each select="Offers/tour">
                        <tr>
                            <td><xsl:value-of select="destination"/></td>
                            <td><xsl:value-of select="activities"/></td>
                            <td><xsl:value-of select="transport"/></td>
                            <td><xsl:value-of select="accommodation"/></td>
                            <td><xsl:value-of select="duration"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                    
                </table>
                </Center>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>