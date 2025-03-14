<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Recipe Collection</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f8f8f8;
                        margin: 20px;
                    }
                    .container {
                        max-width: 800px;
                        margin: auto;
                        background: white;
                        padding: 20px;
                        box-shadow: 0px 0px 10px #ccc;
                        border-radius: 10px;
                    }
                    h2 {
                        text-align: center;
                        color: #444;
                    }
                    .recipe {
                        background: #fff;
                        padding: 15px;
                        margin-bottom: 20px;
                        border: 1px solid #ddd;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    }
                    h3 {
                        color: #333;
                        margin-bottom: 10px;
                    }
                    ul {
                        padding-left: 20px;
                    }
                    .instructions {
                        font-style: italic;
                        color: #666;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h2>Recipe Collection</h2>
                    <xsl:for-each select="recipes/recipe">
                        <div class="recipe">
                            <h3><xsl:value-of select="recipeTitle"/></h3>
                            <p><strong>Ingredients:</strong></p>
                            <ul>
                                <xsl:for-each select="ingredients/ingredient">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                            <p><strong>Instructions:</strong></p>
                            <p class="instructions"><xsl:value-of select="cookingInstructions"/></p>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

