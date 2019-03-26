<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <link type="text/css" href="test.css" rel="stylesheet"/>
                <title>Test Persian text</title>
            </head>
            <body>
                <div class="flex">
                    <div class="fa">
                        <xsl:apply-templates select="//ts"/>
                    </div>
                    <div class="en">
                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae
                            lectus ac libero suscipit tincidunt eu at eros. Vestibulum eleifend
                            dictum diam, eget interdum libero elementum in. Vestibulum imperdiet
                            dolor at felis mollis molestie. Duis et ligula tempor, scelerisque nunc
                            vitae, pretium nulla. Morbi vel finibus metus, et tristique lacus. Cras
                            et eleifend neque. Donec et elit et erat cursus tincidunt. Fusce
                            molestie tincidunt felis blandit fermentum.</p>

                        <p> Morbi sit amet commodo velit. Cras fermentum nulla nec bibendum rhoncus.
                            Morbi luctus sem sit amet magna pellentesque mollis. Ut convallis
                            sodales tortor, eu venenatis tortor. Interdum et malesuada fames ac ante
                            ipsum primis in faucibus. Curabitur in libero feugiat, lobortis sem
                            vitae, condimentum libero. Donec et augue eu ligula posuere molestie
                            vitae non diam. Nunc tempor lacus at odio condimentum condimentum.
                            Maecenas nec iaculis neque. Praesent semper, nisl in tincidunt
                            malesuada, quam dolor consequat turpis, quis rhoncus orci ligula vitae
                            arcu.</p>

                        <p> Curabitur ullamcorper est sed erat consectetur, eget sodales ex
                            tincidunt. In ornare felis sed justo tincidunt, at facilisis nulla
                            auctor. Cras in quam a enim aliquam molestie. Duis dictum magna eget
                            lacus lobortis, eu fermentum mi fermentum. Sed aliquet dui urna, vitae
                            finibus elit vestibulum sit amet. Pellentesque bibendum facilisis nunc
                            in ultricies. Ut laoreet fermentum purus, blandit commodo risus
                            consequat quis. Pellentesque pretium, turpis sit amet feugiat imperdiet,
                            quam mi condimentum lorem, sit amet convallis lectus augue in est.
                            Aliquam quis ultrices ex, sit amet gravida ante. Vestibulum mattis, nibh
                            sit amet pulvinar iaculis, justo dolor blandit ante, ac vehicula tellus
                            felis a mauris. Praesent ac dui sed nunc elementum elementum. Vivamus
                            felis nisl, placerat et dui eu, varius viverra arcu. Morbi sollicitudin
                            orci sed fringilla ornare. Quisque a arcu vitae ipsum cursus posuere. In
                            quis nunc ut nibh dictum tempor id vel odio. Morbi vehicula felis
                            turpis, sed iaculis nunc semper sed.</p>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ts">
        <p class="fa">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
</xsl:stylesheet>
