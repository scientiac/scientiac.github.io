<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom"
                xmlns:dc="http://purl.org/dc/elements/1.1/">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>RSS Feed | <xsl:value-of select="/rss/channel/title | /atom:feed/atom:title"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" type="text/css" href="/assets/css/themes.css" />
        <link rel="stylesheet" type="text/css" href="/assets/css/readable.css" />
        <link rel="stylesheet" type="text/css" href="/assets/css/global.css" />
        <link rel="stylesheet" type="text/css" href="/assets/css/fonts.css" />
        <link rel="stylesheet" type="text/css" href="/assets/css/logo.css" />
        <style type="text/css">
          header { margin-bottom: 3rem; text-align: center; }
        </style>
      </head>
      <body>

        <div class="logo-container">
          <a href="/">
            <div class="inner-logo-container"></div>
          </a>
        </div>

        <nav data-style="classy">
          <span><a href="/">Main</a></span>
          <span><a href="/blog">Blog</a></span>
          <span><a href="/syndications">Ping</a></span>
          <span><a href="/more">More</a></span>
        </nav>

        <section class="section-body">
          <div class="container">

            <div style="text-align: center; font-style: italic;">
              <p><strong>This is a web feed,</strong> also known as an RSS feed. <strong>Subscribe</strong> by copying the URL from the address bar into your newsreader.</p>
            </div>
            
            <header>
              <h1><xsl:value-of select="/rss/channel/title | /atom:feed/atom:title"/></h1>
              <p class="description">
                <xsl:value-of select="/rss/channel/description | /atom:feed/atom:subtitle"/>
              </p>
              <p>
                <a target="_blank">
                  <xsl:attribute name="href">
                    <xsl:value-of select="/rss/channel/link | /atom:feed/atom:link[@rel='alternate']/@href | /atom:feed/atom:link[not(@rel)]/@href"/>
                  </xsl:attribute>
                  Visit Website &#x2192;
                </a>
              </p>
            </header>

            <h2>Feed</h2>

            <xsl:for-each select="/rss/channel/item">
              <article class="listing">
                <h2>
                  <a target="_blank">
                    <xsl:attribute name="href">
                      <xsl:value-of select="link"/>
                    </xsl:attribute>
                    <xsl:value-of select="title"/>
                  </a>
                </h2>
                <div style="text-align: center; padding-bottom: 12px;">
                  <code>
                    Published on <xsl:value-of select="substring(pubDate, 5, 12)"/> 
                  </code>
                </div>
              </article>
            </xsl:for-each>

            <xsl:for-each select="/atom:feed/atom:entry">
              <article class="listing">
                <h2>
                  <a target="_blank">
                    <xsl:attribute name="href">
                      <xsl:value-of select="atom:link/@href"/>
                    </xsl:attribute>
                    <xsl:value-of select="atom:title"/>
                  </a>
                </h2>
                <div style="text-align: center; padding-bottom: 12px;">
                  <code>
                    Published on <xsl:value-of select="substring(atom:updated, 1, 10)"/>
                  </code>
                </div>
              </article>
            </xsl:for-each>

          </div>
        </section>

        <footer>
          <p class="codewithlove">I can't think of things to write on a footer. So, just <span class="main-background">imagine</span> something yourself.</p>
          <p><a href="/series">Series</a> | <a href="/atom.xml">RSS</a> | <a href="https://github.com/scientiac/scientiac.github.io" target="_blank">Source Code</a></p>
          <p>All articles are usable under <a href="https://creativecommons.org/licenses/by-sa/4.0/" target="_blank">CC BY-SA 4.0</a>.</p>
          <p>
          You’re in my terrace on the <a href="https://xn--sr8hvo.ws">IndieWeb Webring</a>. <br/> Perhaps you visited the
            <a href="https://xn--sr8hvo.ws/previous">previous</a> one; continue to the
            <a href="https://xn--sr8hvo.ws/next">next</a> garden, it’s a surprise.
          </p>
        </footer>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
