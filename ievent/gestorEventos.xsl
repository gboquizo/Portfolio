<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/" >
        <html>
            <head>
                <title>ievent</title>
                <meta charset="UTF-8"/>
                <meta name="author" content="Javier Ponferrada López"/>
                <meta name="author" content="Guillermo Boquizo Sánchez"/>
                <link rel="stylesheet" href="./css/style.css"/>
                <link rel="stylesheet" href="./css/menu.css"/>
                <link rel="shortcut icon" href="./img/favicon.png" type="image/jpg"/>
            </head>
            <body>
                <header>
                    <img width="100%" height="20px" src="./img/cabecera.png"/>
                </header>
                <nav>
                    <ul>
                        <li class="logo"><a href=""><img src="img/logo.png"/></a></li>
                        <li><a href="#.xml">Inicio</a></li>
                        <li><a href="somos.html">Somos</a></li>
                        <li class="rss"><a href="eventos.xml" target="black"><img src="img/rss.png"/></a></li>
                    </ul>
                </nav>
                <div class="eventos">
                    <xsl:for-each select="eventos/evento">
                        <xsl:sort select="fechaInicio"/>
                        <a class="linkEvent" target="black">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"/>
                            </xsl:attribute>
                        <div class="evento">
                            <div class="infoImport">
                                <h3 class="titulo"><xsl:value-of select="titulo"/></h3> 
                                <a><xsl:value-of select="fechaInicio"/><span> - </span><xsl:value-of select="fechaFin"/></a>
                            </div>
                            <div class="img">
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="imagen"/>
                                    </xsl:attribute>
                                </img>
                            </div>
                            <div class="infoAdicional">
                                <xsl:for-each select="precios/precio">
                                    <div class="tarifa">
                                        <a><xsl:value-of select="tarifa"/></a>
                                    </div>
                                </xsl:for-each>
                                <div class="descripcion">
                                    <p><xsl:value-of select="descripcion"/></p>
                                </div>
                                <p class="horario"><span>Horario</span><br/><a><xsl:value-of select="horario"/></a></p>
                                <iframe width="300px" frameborder="0" style="border:0">
                                    <xsl:attribute name='src'>
                                        <xsl:value-of select="localizacion"/>
                                    </xsl:attribute>
                                </iframe>	
                            </div>	
                        </div>
                        </a>	 		
                    </xsl:for-each>		
                </div>	
            <footer>
                <div class="footer">
                    <div class="contenedor"><p>© 2017 </p></div>
                    <div class="contenedor" style="background:#DF6A6E;"> <p>Todos los derechos reservados a Javier Ponferrada López y Guillermo Boquizo Sánchez bajo licencia Creative Commons.</p>
                        <img src="img/cc.png"/>
                    </div>
                </div>
            </footer>		 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>