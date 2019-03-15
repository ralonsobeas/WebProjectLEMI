<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">



	<xsl:template match="/">
		<html>
			<head>
						<title>JustSport</title>
						<link rel="stylesheet" type="text/css" href="../styles/women.css"/>
						<link rel="stylesheet" type="text/css" href="../styles/common.css"/>
						<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"/>
			</head>
			<body style="background:#27eb68">
				<nav class="logomedia">
				<ul>
					<li>
						<table>
							<tr>
								<!-- logo -->
								<td class="logo" style="display:inline">
									<div class="outside">
										<img src="../images/logoimg.png" alt="logoimg" style="width:20%"/>
										<img src="../images/logoname.png" alt="logotext" style="width:50%"/>
									</div>
									<div class="inside">
										<img src="../images/slogan.png" alt="slogan" style="width:50%" id="slogan"/>
									</div>
								</td>
								<!-- Shopping cart button -->
								<td>
									<button id="cart" class="btn" onclick="appearcart()">
										<i class="fas fa-shopping-cart"></i>
									</button>
								</td>
								<!-- Media buttons -->
								<td class="media">
									<a class="btn" href="https://www.facebook.com/" target="_blank">
										<i class="fab fa-facebook-f"></i>
									</a>
									<a class="btn" href="https://twitter.com/" target="_blank">
										<i class="fab fa-twitter"></i>
									</a>
									<a class="btn" href="https://plus.google.com/" target="_blank">
										<i class="fab fa-google"></i>
									</a>
									<a class="btn" href="https://www.instagram.com/" target="_blank">
										<i class="fab fa-instagram"></i>
									</a>
									<a class="btn" href="https://www.youtube.com/" target="_blank">
										<i class="fab fa-youtube"></i>
									</a>
								</td>
								</tr>
						</table>
					</li>
				</ul>
		</nav>
		<!-- Navigation bar between html -->
		<nav id="navpages" class="navpages" >

							<button  id="but" class="but" onclick="myFunctionMenu(this)">
								<span id="bar1" class="bar1"></span>
								<span id="bar2" class="bar2"></span>
								<span id="bar3" class="bar3"></span>
							</button>

				<ul id="myMenu" class="menu">
					<li> <a href="../index.html">Index</a> </li>
					<li>
						<a href="../html/men.html">Men</a>
						<ul class="submenuproducts" style="left:40vh;">
							<li> <a href="../html/mentshirts.html">Men T-shirts</a> </li>
							<li> <a href="../html/mentrousers.html" >Men trousers</a> </li>
						</ul>
					 </li>
					<li>
						<a href="../html/women.html" >Women</a>
						<ul class="submenuproducts" style="left:67vh;">
							<li> <a href="../html/womentshirts.html">Women T-shirts</a> </li>
							<li> <a href="../html/womentrousers.html" >Women trousers</a> </li>
						</ul>
					</li>
					<li> <a href="../html/contact.html">Contact!</a> </li>
					<li> 
						<a href="../xml/cataloguetemplate1.xml" >Catalogue</a>
						<ul class="submenuproducts" style="left:132vh;width:12vh;">
							<li> <a href="../xml/cataloguetemplate1.xml" >Full</a> </li>
							<li> <a href="../xml/cataloguetemplatemen.xml" >Men</a> </li>
							<li> <a href="../xml/cataloguetemplatewomen.xml" >Women</a> </li>
						</ul>
					</li>
					<li> 
						<a href="javascript:void(0);" style="color:skyblue">News</a>
						<ul class="submenuproducts" style="left:168vh;width:12vh;">
							<li> <a href="javascript:void(0);" style="color:skyblue">RSS</a> </li>
							<li> <a href="atom.xml" >ATOM</a> </li>
						</ul>
					</li>
			</ul>
		</nav>
		<!-- Shopping cart, appears when pressing Shopping cart button -->
		<div id="idsubmenucart"  class="submenucart" >
		<table >
				<tr >
						<td class="shoppingcart-container" ><div style="width:120%;border: solid;border-radius:5%;" class="simpleCart_items"></div></td>
				</tr>
				<tr>
						<td  >
								<div style="width:120%;border: solid;border-radius:5%;" id="cartTotal"><strong>Total: </strong><span class="simpleCart_total"></span></div>
						</td>
				</tr>
				<tr>
						<td>
							<noscript><a href="no_javascript.html" class="simpleCart_empty">Empty Cart</a>;</noscript>
							<script>document.write('<a href="#" class="simpleCart_empty">Empty Cart</a>');</script>
						</td>
						<td>
							<noscript><a href="no_javascript.html" class="simpleCart_checkout">Checkout</a>;</noscript>
							<script>document.write('<a href="#" class="simpleCart_checkout">Checkout</a>');</script>
						</td>
				</tr>
		</table>
		</div>
		<!-- Script for navigation bar between html and shopping cart -->
		<script>
			<xsl:text>
		<!--Script for navigation bar -->
			function myFunction(x) {
				x.classList.toggle("change");
			}

			function wait(){
				document.getElementById("navpages").style.background = "none";
				document.getElementById("myMenu").style.display = "none";
			}

			function barblack(){
				document.getElementById("bar1").style.background= "#333";
				document.getElementById("bar2").style.background= "#333";
				document.getElementById("bar3").style.background= "#333";
			}

			function barwhite(){
				document.getElementById("bar1").style.background= "white";
				document.getElementById("bar2").style.background= "white";
				document.getElementById("bar3").style.background= "white";
			}
			function myFunctionMenu(x){
				if (document.getElementById("myMenu").style.display == "inline"){
					document.getElementById("navpages").style.animation = "animationnavout 1s ease";
					document.getElementById("navpages").className = "navpagesclick";
					document.getElementById("but").style.animation = "none";
					setTimeout(wait,800);
					barblack();
					myFunction(x);
				}
				else {
					document.getElementById("myMenu").style.display = "inline";
					document.getElementById("navpages").className = "navpagesclick";
					document.getElementById("navpages").style.animation = "animationnavin 1s ease";
					document.getElementById("navpages").style.background = "linear-gradient(to right, #2a2460 0%, #aa4690 100%)";
					document.getElementById("but").style.animation = "none";
					myFunction(x);
					barwhite();
				}
			}
			<!-- Script for cart -->
			document.getElementById("idsubmenucart").style.display = "none";
			function appearcart(){
				if(document.getElementById("idsubmenucart").style.display == "none"){
					document.getElementById("idsubmenucart").style.display = "block";
				}
				else{
					document.getElementById("idsubmenucart").style.display = "none";
				}
			}
			</xsl:text>
		</script>

		<!--Section of the document XSLT  -->

		<section >
			<div style="text-align:center">
				<h1>RSS NEWS</h1>
				<p><xsl:value-of select="count(rss/channel/item)"/> NEWS BY <xsl:value-of select="rss/channel/webMaster"/></p>
			</div>

			 
		</section>
			
				<section>
				<!--Table 1 column N rows  -->

				<table >
				
					<xsl:for-each select="rss/channel/item">
						<tr>
							<td style="border: solid;border-radius:5%;">
								<a style="font-size:9vh">
									<xsl:attribute name="href">
										<xsl:value-of select="link"/>
									</xsl:attribute>
									<xsl:attribute name="target">
										_blank
									</xsl:attribute>	
									<xsl:value-of select="title" /> 									
								</a>
								<p><xsl:value-of select="category" /> / <xsl:value-of select="pubDate" /></p>
								<h3><xsl:value-of select="description" /></h3>
							</td>	
						</tr>
					</xsl:for-each>
				</table>
				</section>
				
			</body>
			<!--Footer of the document-->
		<footer style="position:relative;bottom:0;">
			&#169; JustSport 2018   By Rodrigo Alonso <a href="../html/contact.html" target="_blank"> About us &#38; Contact!</a>
		</footer>
		</html>
	</xsl:template>

</xsl:stylesheet>