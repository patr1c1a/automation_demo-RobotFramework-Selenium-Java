*** Variables ***

#Variables used by the Home Page higher-level keywords.
#Choose browser by setting ${BROWSER} variable value to either chrome or firefox.
${BROWSER}						                       chrome
${HOMEPAGE URL}					                     https://www.blogger.com
${APPENDED URL REGEX}                        ^http[s]?://www\.blogger\.com(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+
${HOMEPAGE TITLE}				                     Blogger.com - Create a unique and beautiful blog. It’s easy and free.
${HEADER SIGN IN BUTTON TEXT}                SIGN IN
${HERO HEADER TEXT}                          Publish your passions, your way
${HERO PARAGRAPH TEXT}                       Create a unique and beautiful blog. It’s easy and free.
${HERO CREATE BLOG BUTTON TEXT}              CREATE YOUR BLOG
${CHOOSE DESIGN HEADER TEXT}                 Choose the perfect design
${CHOOSE DESIGN PARAGRAPH TEXT}              Create a beautiful blog that fits your style. Choose from a selection of easy-to-use templates – all with flexible layouts and hundreds of background images – or design something new.
${FREE DOMAIN HEADER TEXT}                   Get a free domain
${FREE DOMAIN PARAGRAPH TEXT}                Give your blog the perfect home. Get a free blogspot.com domain or buy a custom domain with just a few clicks.
${EARN MONEY HEADER TEXT}                    Earn money
${EARN MONEY PARAGRAPH TEXT}                 Get paid for your hard work. Google AdSense can automatically display relevant targeted ads on your blog so that you can earn income by posting about your passion.
${KNOW YOUR AUDIENCE HEADER TEXT}            Know your audience
${KNOW YOUR AUDIENCE PARAGRAPH TEXT}         Find out which posts are a hit with Blogger’s built-in analytics. You’ll see where your audience is coming from and what they’re interested in. You can even connect your blog directly to Google Analytics for a more detailed look.
${MEMORIES HEADER TEXT}                      Hang onto your memories
${MEMORIES PARAGRAPH TEXT}                   Save the moments that matter. Blogger lets you safely store thousands of posts, photos, and more with Google for free.
${MILLIONS HEADER TEXT}                      Join millions of others
${MILLIONS PARAGRAPH TEXT}                   Whether sharing your expertise, breaking news, or whatever’s on your mind, you’re in good company on Blogger. Sign up to discover why millions of people have published their passions here.
${MILLIONS CREATE BLOG BUTTON TEXT}          CREATE YOUR BLOG
${FOOTER HEADER 1 TEXT}                      Help
${FOOTER COLUMN 1 FIRST ITEM TEXT}           Help Center
${FOOTER COLUMN 1 SECOND ITEM TEXT}          Help Forum
${FOOTER COLUMN 1 THIRD ITEM TEXT}           Video Tutorials
${FOOTER HEADER 2 TEXT}                      Community
${FOOTER COLUMN 2 FIRST ITEM TEXT}           Blogger Buzz
${FOOTER COLUMN 2 SECOND ITEM TEXT}          +Blogger
${FOOTER HEADER 3 TEXT}                      Developers
${FOOTER COLUMN 3 FIRST ITEM TEXT}           Blogger API
${FOOTER COLUMN 3 SECOND ITEM TEXT}          Developer Forum
${FOOTER META SECTION FIRST ITEM TEXT}       Terms of Service
${FOOTER META SECTION SECOND ITEM TEXT}      Privacy
${FOOTER META SECTION THIRD ITEM TEXT}       Content Policy


#Language identifiers
${AFRIKAANS}                                 af
${AMHARIC}                                   am
${ARABIC}                                    ar
${BASQUE}                                    eu
${BENGALI}                                   bn
${BULGARIAN}                                 bg
${CATALAN}                                   ca
${CHINESE HONG KONG}                         zh-HK
${CHINESE SIMPLIFIED}                        zh-CN        
${CHINESE TRADITIONAL}                       zh-TW         
${CROATIAN}                                  hr
${CZECH}                                     cs
${DANISH}                                    da
${DUTCH}                                     nl
${ENGLISH}                                   en
${ENGLISH UK}                                en-GB
${ESTONIAN}                                  et
${FILIPINO}                                  fil 
${FINNISH}	                                 fi                                     
${FRENCH CANADA}                             fr-CA
${FRENCH FRANCE}                             fr   
${GALICIAN}                                  gl 
${GERMAN}                                    de
${GREEK}                                     el
${GUJARATI}                                  gu 
${HEBREW}                                    he
${HINDI}                                     hi
${HUNGARIAN}                                 hu  
${ICELANDIC}                                 is  
${INDONESIAN}                                id   
${ITALIAN}                                   it
${JAPANESE}                                  ja 
${KANNADA}                                   kn
${KOREAN}                                    ko
${LATVIAN}                                   lv
${LITHUANIAN}                                lt   
${MALAY}                                     ms
${MALAYALAM}                                 ml  
${MARATHI}                                   mr
${NORWEGIAN}                                 no  
${PERSIAN}                                   fa
${POLISH}                                    pl
${PORTUGUESE BRAZIL}                         pt-BR          
${PORTUGUESE PORTUGAL}                       pt-PT         
${ROMANIAN}                                  ro
${RUSSIAN}                                   ru
${SERBIAN}                                   sr
${SLOVAK}                                    sk
${SLOVENIAN}                                 sl  
${SPANISH LATIN AMERICA}                     es-419            
${SPANISH SPAIN}                     	       es  
${SWAHILI}                                   sw
${SWEDISH}                                   sv
${TAMIL}                    	               ta
${TELUGU}                                    te
${THAI}                                      th
${TURKISH}                                   tr
${UKRAINIAN}                                 uk  
${URDU}                                      ur
${VIETNAMESE}                                vi   
${ZULU}                                      zu
                             

#Locators for elements that will be tested in the home page.				
${DOCUMENT}                                 css = html
${HEADER MAIN LOGO}                         css = div.header--logo.logo a.ga-header-logo
${HEADER LOGO}                              css = div.header--logo.logo svg.logo-icon
${HEADER SITE BRAND}                        css = svg.logo-type use 
${HEADER SIGN IN BUTTON}                    css = div.header--buttons a.sign-in.ga-header-sign-in
${HEADER CREATE BLOG BUTTON}                css = div.header--buttons a.cta.ga-header-cta
${HERO ACTIVE BACKGROUND}                   css = main#maincontent div.theme.js-theme.active
${HERO ACTIVE RED BACKGROUND}               css = main#maincontent div.theme.js-theme.red.active
${HERO RED BACKGROUND IMAGES}               css = main#maincontent div.theme.js-theme.red img
${HERO RED BACKGROUND IMG1}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.spoon
${HERO RED BACKGROUND IMG2}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.mixer
${HERO RED BACKGROUND IMG3}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.eggs 
${HERO RED BACKGROUND IMG4}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.cherries
${HERO RED BACKGROUND IMG5}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.rollover
${HERO RED BACKGROUND IMG6}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.shape
${HERO RED BACKGROUND IMG7}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.pie
${HERO RED BACKGROUND IMG8}                 css = main#maincontent div.theme.js-theme.red img.theme--layer.theme--layer-1.blog
${HERO ACTIVE GREEN BACKGROUND}             css = main#maincontent div.theme.js-theme.green.active
${HERO GREEN BACKGROUND IMAGES}             css = main#maincontent div.theme.js-theme.green img
${HERO GREEN BACKGROUND IMG1}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.vase
${HERO GREEN BACKGROUND IMG2}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.tea
${HERO GREEN BACKGROUND IMG3}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.slipper
${HERO GREEN BACKGROUND IMG4}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.picture
${HERO GREEN BACKGROUND IMG5}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.letter-c
${HERO GREEN BACKGROUND IMG6}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.letter-b
${HERO GREEN BACKGROUND IMG7}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.letter-a
${HERO GREEN BACKGROUND IMG8}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.football
${HERO GREEN BACKGROUND IMG9}               css = main#maincontent div.theme.js-theme.green img.theme--layer.theme--layer-1.blog
${HERO ACTIVE BLUE BACKGROUND}              css = main#maincontent div.theme.js-theme.blue.active
${HERO BLUE BACKGROUND IMAGES}              css = main#maincontent div.theme.js-theme.blue img
${HERO BLUE BACKGROUND IMG1}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.drone
${HERO BLUE BACKGROUND IMG2}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.phone1
${HERO BLUE BACKGROUND IMG3}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.temperature
${HERO BLUE BACKGROUND IMG4}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.remote
${HERO BLUE BACKGROUND IMG5}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.smartwatch
${HERO BLUE BACKGROUND IMG6}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.actioncam
${HERO BLUE BACKGROUND IMG7}                css = main#maincontent div.theme.js-theme.blue img.theme--layer.theme--layer-1.blog
${HERO HEADER}                              css = main#maincontent section.section.hero header.hero--header h2
${HERO PARAGRAPH}                           css = main#maincontent section.section.hero header.hero--header p
${HERO CREATE BLOG BUTTON}                  css = main#maincontent section.section.hero header.hero--header a.cta.ga-hero-cta
${HERO DOWN BUTTON}                         css = main#maincontent section.section.hero a.scrolldown.js-scroll-to
${CHOOSE DESIGN HEADER}                     css = main#maincontent section#choose-design h2
${CHOOSE DESIGN PARAGRAPH}                  css = main#maincontent section#choose-design p
${CHOOSE DESIGN BACKGROUND IMAGES}          css = main#maincontent section#choose-design div.background img
${CHOOSE DESIGN BACKGROUND IMG1}            css = main#maincontent section#choose-design div.background img.background--layer.tools
${CHOOSE DESIGN BACKGROUND IMG2}            css = main#maincontent section#choose-design div.background img.background--layer.design1
${CHOOSE DESIGN BACKGROUND IMG3}            css = main#maincontent section#choose-design div.background img.background--layer.design2
${FREE DOMAIN HEADER}                       css = main#maincontent section.section.free-domain h2
${FREE DOMAIN PARAGRAPH}                    css = main#maincontent section.section.free-domain p
${FREE DOMAIN BACKGROUND IMAGES}            css = main#maincontent section.section.free-domain div.background img
${FREE DOMAIN BACKGROUND IMG1}              css = main#maincontent section.section.free-domain div.background img.background--layer.lettergroup1
${FREE DOMAIN BACKGROUND IMG2}              css = main#maincontent section.section.free-domain div.background img.background--layer.lettergroup2
${FREE DOMAIN BACKGROUND IMG3}              css = main#maincontent section.section.free-domain div.background img.background--layer.lettergroup3
${FREE DOMAIN BACKGROUND IMG4}              css = main#maincontent section.section.free-domain div.background img.background--layer.lettergroup4
${EARN MONEY HEADER}                        css = main#maincontent section.section.earn-money h2
${EARN MONEY PARAGRAPH}                     css = main#maincontent section.section.earn-money p
${EARN MONEY BACKGROUND IMAGES}             css = main#maincontent section.section.earn-money div.background img
${EARN MONEY BACKGROUND IMG1}               css = main#maincontent section.section.earn-money div.background img.background--layer.device
${EARN MONEY BACKGROUND IMG2}               css = main#maincontent section.section.earn-money div.background img.background--layer.card
${EARN MONEY BACKGROUND IMG3}               css = main#maincontent section.section.earn-money div.background img.background--layer.calculator
${EARN MONEY BACKGROUND IMG4}               css = main#maincontent section.section.earn-money div.background img.background--layer.cent
${KNOW YOUR AUDIENCE HEADER}                css = main#maincontent section.section.know-your-audience h2
${KNOW YOUR AUDIENCE PARAGRAPH}             css = main#maincontent section.section.know-your-audience p
${KNOW YOUR AUDIENCE BACKGROUND IMAGES}     css = main#maincontent section.section.know-your-audience div.background img
${KNOW YOUR AUDIENCE BACKGROUND IMG1}       css = main#maincontent section.section.know-your-audience div.background img.background--layer.graphs
${KNOW YOUR AUDIENCE BACKGROUND IMG2}       css = main#maincontent section.section.know-your-audience div.background img.background--layer.infomap
${KNOW YOUR AUDIENCE BACKGROUND IMG3}       css = main#maincontent section.section.know-your-audience div.background img.background--layer.chart
${KNOW YOUR AUDIENCE BACKGROUND IMG4}       css = main#maincontent section.section.know-your-audience div.background img.background--layer.histogram
${MEMORIES HEADER}                          css = main#maincontent section.section.memories h2
${MEMORIES PARAGRAPH}                       css = main#maincontent section.section.memories p
${MEMORIES BACKGROUND IMAGES}               css = main#maincontent section.section.memories div.background img
${MEMORIES BACKGROUND IMG1}                 css = main#maincontent section.section.memories div.background img.background--layer.documents
${MEMORIES BACKGROUND IMG2}                 css = main#maincontent section.section.memories div.background img.background--layer.familyphotos
${MEMORIES BACKGROUND IMG3}                 css = main#maincontent section.section.memories div.background img.background--layer.playicon
${MILLIONS HEADER}                          css = main#maincontent section.section.millions h2
${MILLIONS PARAGRAPH}                       css = main#maincontent section.section.millions p
${MILLIONS BACKGROUND IMAGES}               css = main#maincontent section.section.millions div.background.millions__background div
${MILLIONS BACKGROUND IMG1}                 css = main#maincontent section.section.millions div.background.millions__background div.millions--map
${MILLIONS BACKGROUND IMG2}                 css = main#maincontent section.section.millions div.background.millions__background div.millions--markers
${MILLIONS CREATE BLOG BUTTON}              css = main#maincontent section.section.millions a.cta.dark.ga-map-cta
${FOOTER HEADER 1}                          css = footer.footer section ul:first-of-type li h3
${FOOTER COLUMN 1 FIRST ITEM}               css = footer.footer section:first-of-type ul:first-of-type li:first-of-type + li a
${FOOTER COLUMN 1 SECOND ITEM}              css = footer.footer section:first-of-type ul:first-of-type li:first-of-type + li + li a
${FOOTER COLUMN 1 THIRD ITEM}               css = footer.footer section:first-of-type ul:first-of-type li:first-of-type + li + li + li a
${FOOTER HEADER 2}                          css = footer.footer section ul:first-of-type + ul li h3
${FOOTER COLUMN 2 FIRST ITEM}               css = footer.footer section:first-of-type ul:first-of-type + ul li:first-of-type + li a
${FOOTER COLUMN 2 SECOND ITEM}              css = footer.footer section:first-of-type ul:first-of-type + ul li:first-of-type + li + li a
${FOOTER HEADER 3}                          css = footer.footer section ul:first-of-type + ul + ul li h3
${FOOTER COLUMN 3 FIRST ITEM}               css = footer.footer section:first-of-type ul:first-of-type + ul + ul li:first-of-type + li a
${FOOTER COLUMN 3 SECOND ITEM}              css = footer.footer section:first-of-type ul:first-of-type + ul + ul li:first-of-type + li + li a
${FOOTER META SECTION FIRST ITEM}           css = footer.footer section.meta ul li:first-of-type a
${FOOTER META SECTION SECOND ITEM}          css = footer.footer section.meta ul li:first-of-type + li a
${FOOTER META SECTION THIRD ITEM}           css = footer.footer section.meta ul li:first-of-type + li + li a
${FOOTER META LANGUAGE SWITCH}              css = section.meta select#language-switch.js-language-switch.ga-language-switch.language-switch
${LANG SELECTION OPTION}                    xpath = //select[@id="language-switch"]/option[@value="?hl=PLACEHOLDER"]   	                
