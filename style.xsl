<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<head>
			<title>Pokedex</title>
			<!-- Required meta tags -->
			<meta charset="utf-8"/>
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
			
			<!-- Bootstrap CSS v5.2.1 -->
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
			<link rel="stylesheet" href="css/style.css"/>
		</head>
		
		<body >
			
			<div class="container">
				<header class="text-white position-relative">
					<img src="img/header.jpeg" alt="" class="w-100 opacity-50 img-fluid"/>
					<div class="position-absolute top-0 p-5 d-flex align-items-center h-100">
						<div>
							<h1 class="text-center rgba-50">POKEDEX</h1>
							<p class="h4 text-justify mt-4 "><xsl:value-of select="pokedex/definition"/></p>
						</div>
						
					</div>
				</header>
				
				<div class="h2 text-white text-center">TYPES</div>
				<div class="row mt-4 ">
					<xsl:for-each select="pokedex/types/type">
						<div class="col-md-4 mb-4">
							<div class="card bg-transparent border text-white">
								<div class="row">
									<div class="col align-items-center text-center ">
										<img src="img/{.}_type.png" alt="" class="m-3  "/>
										<div class="h6"><xsl:value-of select="."/></div>
									</div>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
				
				
				<div class="h2 text-white text-center">POKEMON</div>
				<div class="row mt-4 ">
					<xsl:for-each select="pokedex/pokemon">
						<div class="col-md-6 mb-4">
							<div class="card bg-transparent border text-white">
								<div class="row">
									<div class="col">
										<img class="card-img-top opacity-75 img-fluid" src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" alt="Title"/>
									</div>
									<div class="col">
										<div class="card-body">
											<h4 class="card-title"><xsl:value-of select="species"/></h4>
											<div class="h6">HP: <xsl:value-of select="baseStats/HP"/></div>
											<div class="h6">ATK: <xsl:value-of select="baseStats/ATK"/></div>
											<div class="h6">DEF: <xsl:value-of select="baseStats/DEF"/></div>
											<div class="h6">SPD: <xsl:value-of select="baseStats/SPD"/></div>
											<div class="h6">SATK: <xsl:value-of select="baseStats/SATK"/></div>
											<div class="h6">SDEF: <xsl:value-of select="baseStats/SDEF"/></div>
											
											<xsl:for-each select="types/type">
												<img src="img/{.}_type.png" alt="" class="me-2"/> 
												
											</xsl:for-each>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div> 
				<footer>
					<div class="row">
						<h3 class="text-center bg-secondary text-black p-3">EL MUNDO POKEMON EN AZARQUIEL - S1DAM - S1ASIR</h3>
						
					</div>
					
				</footer>
			</div>
			
			<!-- Bootstrap JavaScript Libraries -->
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
				integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
			</script>
			
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
				integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
			</script>
		</body>
		
	</xsl:template>
</xsl:stylesheet>