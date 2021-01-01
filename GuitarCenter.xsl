<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="menuTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="4" align="center">Stock list</th>
                </tr>
                <tr>
                    <th align="center" >Select</th>
                    <th align="center" >Brand</th>
                    <th align="center" >Item</th>
                    <th align="center" >Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/musicstore/section">
                    <tr>
                        <td colspan="4">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="entree">
                        <tr id="{position()}">
                            <xsl:attribute name="discount">
                                <xsl:value-of select="boolean(@discount)" />
                            </xsl:attribute>
                            <td align="center">
                                <input name="item0" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="brand" />
                            </td>
                            <td>
                                <xsl:value-of select="item" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>