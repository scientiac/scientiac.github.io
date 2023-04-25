<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml" data-font-family="monospace">
			<head>
				<title>"<xsl:value-of select="/rss/channel/title"/>" RSS Feed preview</title>
				<meta charset="utf-8" />
				<link rel="stylesheet" type="text/css" href="/assets/css/readable.css" />
				<link rel="stylesheet" type="text/css" href="/assets/css/global.css" />
				<link rel="stylesheet" type="text/css" href="/assets/css/themes.css" />
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<script src="/assets/js/themeSelector.js"></script>
			</head>
			<body onload="updateThemeSelector()">
				<header>
					<h1><xsl:value-of select="/rss/channel/title"/></h1>
					<p>RSS Feed preview</p>
				</header>
				<nav>
					<span><a href="/">Home</a></span>
					<span><a href="/get-started/">Get Started</a></span>
					<span><a href="/articles/">Articles</a></span>
				</nav>
				<main>
					<p>
						<xsl:value-of select="/rss/channel/description"/>
					</p>
					<p>To subscribe, just copy the URL of this page into an RSS feed reader.</p>
					<p style="text-align: center">
						<a hreflang="en" target="_blank">
							<xsl:attribute name="href">
								<xsl:value-of select="/rss/channel/link"/>
							</xsl:attribute>
							Visit Main Site &#x2192;
						</a>
					</p>
					<h2>Recent Posts</h2>
					<xsl:for-each select="/rss/channel/item">
						<article>
							<h3 style="text-align: center">
								<a target="_blank">
									<xsl:attribute name="href">
										<xsl:value-of select="link"/>
									</xsl:attribute>
									<xsl:value-of select="title"/>
								</a>
							</h3>
							<p style="text-align: center">
								Published:
								<time>
									<xsl:value-of select="pubDate" />
								</time>
							</p>
						</article>
					</xsl:for-each>
				</main>
				<ol id="themeSelector" reversed=""></ol>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
