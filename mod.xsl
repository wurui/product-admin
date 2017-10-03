<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.product-admin">
        <xsl:param name="forward"></xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-product-admin" ox-mod="product-admin" data-uid="{login/uid}">
            <ul>
                <xsl:for-each select="data/product-list/i">
                    <li class="list-item" data-id="{_id}">
                        <img width="60" class="mainpic" src="{img}" alt=""/>
                        <div class="op">
                            <button type="button" class="J_del bt-del">删除</button>
                        </div>
                        <h3 class="title">
                            <a href="{$forward}?_id={_id}"><xsl:value-of select="title"/></a>
                        </h3>
                        <p>
                            库存:<span class="inventory"><xsl:value-of select="inventory"/></span>
                            &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                            价格:<b class="price"><xsl:value-of select="orig_price"/></b>
                        </p>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
