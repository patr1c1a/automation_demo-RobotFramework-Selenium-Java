*** Settings ***
Library                                 String


*** Keywords ***
#Higher level keywords used by the Home Page tests.

Open Home Page
  [Documentation]					     Home page is displayed, with its page title.
  Go To                                  ${HOMEPAGE URL}
  Maximize Browser Window
  Title Should Be				         ${HOMEPAGE TITLE}
        
Main Header Shows Up
  [Documentation]                        Blogger logo and sign in button displayed in home page.
  ...                                    "Sign in" button is not visible when the viewport is at the
  ...                                    top of the page.
  Wait Until Element Is Visible	         ${HEADER MAIN LOGO}
  ${logo link}                           Get Element Attribute  ${HEADER MAIN LOGO}@href
  Should Be True                         '${logo link}'=='${HOMEPAGE URL}/go/home'
  Page Should Contain Element	         ${HEADER SIGN IN BUTTON}
  Element Text Should Be                 ${HEADER SIGN IN BUTTON}  ${HEADER SIGN IN BUTTON TEXT}
  ${sign in link}                        Get Element Attribute  ${HEADER SIGN IN BUTTON}@href
  Should Be True                         '${sign in link}'=='${HOMEPAGE URL}/go/signin'
  Element Should Not Be Visible          ${HEADER CREATE BLOG BUTTON}
    
Main Logo Has Image And Text
  [Documentation]                        Main logo is composed of image and brand.
  Page Should Contain Element	         ${HEADER MAIN LOGO}
  Page Should Contain Element	         ${HEADER LOGO}
  Page Should Contain Element	         ${HEADER SITE BRAND}
    
Hero Section Background Displayed
  [Documentation]                        Background contains all needed images.
  Page Should Contain Element            ${HERO RED BACKGROUND IMAGES}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG1}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG2}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG3}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG4}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG5}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG6}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG7}
  Page Should Contain Element            ${HERO RED BACKGROUND IMG8}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMAGES}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG1}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG2}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG3}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG4}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG5}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG6}
  Page Should Contain Element          	 ${HERO GREEN BACKGROUND IMG7}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG8}
  Page Should Contain Element            ${HERO GREEN BACKGROUND IMG9}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMAGES}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG1}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG2}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG3}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG4}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG5}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG6}
  Page Should Contain Element            ${HERO BLUE BACKGROUND IMG7}

Hero Section Background Changes Automatically
  [Documentation]                        Background images in "Hero" section change, with red background
  ...                                    lasting longer, and there's only one active background at a time,
  ...                                    with a 15 second timeout as the red background stays for about
  ...                                    10 seconds and the other two stay for about 2 seconds each.
  Page Should Contain Element            ${HERO ACTIVE BACKGROUND}
  Wait Until Element Is Visible          ${HERO ACTIVE RED BACKGROUND}  timeout=15s
  Wait Until Element Is Visible          ${HERO ACTIVE BLUE BACKGROUND}  timeout=15s
  Wait Until Element Is Visible          ${HERO ACTIVE GREEN BACKGROUND}  timeout=15s

Hero Section Text Displayed
  [Documentation]                        Text from "Hero" section is displayed.
  Wait Until Element Is Visible          ${HERO HEADER}
  ${stripped text}                       Strip String  ${HERO HEADER TEXT}
  Element Text Should Be                 ${HERO HEADER}  ${stripped text}
  Wait Until Element Is Visible          ${HERO PARAGRAPH}
  ${stripped text}                       Get Text  ${HERO PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${HERO PARAGRAPH TEXT}'=='${stripped text}'

Hero Section Buttons Displayed
  [Documentation]                        Buttons from "Hero" section are displayed and linking to their
  ...                                    expected actions.
  Wait Until Element Is Visible          ${HERO CREATE BLOG BUTTON}
  ${stripped text}                       Get Text  ${HERO CREATE BLOG BUTTON}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${HERO CREATE BLOG BUTTON TEXT}'=='${stripped text}'
  ${create blog link}                    Get Element Attribute  ${HERO CREATE BLOG BUTTON}@href          
  Should Be True                         '${create blog link}'=='${HOMEPAGE URL}/go/createyourblog'
  Wait Until Element Is Visible          ${HERO DOWN BUTTON}
  ${down link}                           Get Element Attribute  ${HERO DOWN BUTTON}@href          
  Should Match Regexp                    ${down link}  ${APPENDED URL REGEX}#choose-design$

Navigate To Choose Design Section
  [Documentation]                        Navigation to "Choose Design" section is possible.
  ...                                    When page is scrolled, header changes to include
  ...                                    a "create blog" button.
  Click Element                    	     ${HERO DOWN BUTTON}
  Wait Until Element Is Visible          ${HEADER CREATE BLOG BUTTON}
    
Choose Design Section Background Displayed
  [Documentation]                        Background in "Choose Design" section contains all needed
  ...                                    images.
  Page Should Contain Element            ${CHOOSE DESIGN BACKGROUND IMAGES}
  Page Should Contain Element     	     ${CHOOSE DESIGN BACKGROUND IMG1}
  Page Should Contain Element            ${CHOOSE DESIGN BACKGROUND IMG2}
  Page Should Contain Element            ${CHOOSE DESIGN BACKGROUND IMG3}    
    
Choose Design Section Text Displayed
  [Documentation]                        Text from "Choose Design" section is displayed.
  Page Should Contain Element            ${CHOOSE DESIGN HEADER}
  ${stripped text}                       Get Text  ${CHOOSE DESIGN HEADER}
  ${stripped text}                       Strip String  ${stripped text}  
  Should Be True                         '${CHOOSE DESIGN HEADER TEXT}'=='${stripped text}'
  Page Should Contain Element            ${CHOOSE DESIGN PARAGRAPH}
  ${stripped text}                       Get Text  ${CHOOSE DESIGN PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text} 
  Should Be True                         '${CHOOSE DESIGN PARAGRAPH TEXT}'=='${stripped text}'

Free Domain Section Background Displayed
  [Documentation]                        Background in "Free Domain" section contains all needed
  ...                                    images.
  Page Should Contain Element            ${FREE DOMAIN BACKGROUND IMAGES}
  Page Should Contain Element            ${FREE DOMAIN BACKGROUND IMG1}
  Page Should Contain Element            ${FREE DOMAIN BACKGROUND IMG2}
  Page Should Contain Element            ${FREE DOMAIN BACKGROUND IMG3}
  Page Should Contain Element            ${FREE DOMAIN BACKGROUND IMG4} 

Free Domain Section Text Displayed
  [Documentation]                        Text from "Free Domain" section is displayed.
  Page Should Contain Element            ${FREE DOMAIN HEADER}
  ${stripped text}                       Get Text  ${FREE DOMAIN HEADER}
  ${stripped text}                       Strip String  ${stripped text}  
  Should Be True                         '${FREE DOMAIN HEADER TEXT}'=='${stripped text}'
  Page Should Contain Element            ${FREE DOMAIN PARAGRAPH}
  ${stripped text}                       Get Text  ${FREE DOMAIN PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${FREE DOMAIN PARAGRAPH TEXT}'=='${stripped text}'

Earn Money Section Background Displayed
  [Documentation]                        Background in "Earn Money" section contains all needed
  ...                                    images.
  Page Should Contain Element            ${EARN MONEY BACKGROUND IMAGES}
  Page Should Contain Element            ${EARN MONEY BACKGROUND IMG1}
  Page Should Contain Element            ${EARN MONEY BACKGROUND IMG2}
  Page Should Contain Element            ${EARN MONEY BACKGROUND IMG3}
  Page Should Contain Element            ${EARN MONEY BACKGROUND IMG4} 

Earn Money Section Text Displayed
  [Documentation]                        Text from "Earn Money" section is displayed.
  Page Should Contain Element            ${EARN MONEY HEADER}
  ${stripped text}                       Get Text  ${EARN MONEY HEADER}
  ${stripped text}                       Strip String  ${stripped text}  
  Should Be True                         '${EARN MONEY HEADER TEXT}'=='${stripped text}'
  Page Should Contain Element            ${EARN MONEY PARAGRAPH}
  ${stripped text}                       Get Text  ${EARN MONEY PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${EARN MONEY PARAGRAPH TEXT}'=='${stripped text}'

Know Your Audience Section Background Displayed
  [Documentation]                        Background in "Know Your Audience" section contains all
  ...                                    needed images.
  Page Should Contain Element            ${KNOW YOUR AUDIENCE BACKGROUND IMAGES}
  Page Should Contain Element            ${KNOW YOUR AUDIENCE BACKGROUND IMG1}
  Page Should Contain Element            ${KNOW YOUR AUDIENCE BACKGROUND IMG2}
  Page Should Contain Element            ${KNOW YOUR AUDIENCE BACKGROUND IMG3}
  Page Should Contain Element            ${KNOW YOUR AUDIENCE BACKGROUND IMG4} 

Know Your Audience Section Text Displayed
  [Documentation]                        Text from "Know Your Audience" section is displayed.
  Page Should Contain Element            ${KNOW YOUR AUDIENCE HEADER}
  ${stripped text}                       Get Text  ${KNOW YOUR AUDIENCE HEADER}
  ${stripped text}                       Strip String  ${stripped text}  
  Should Be True                         '${KNOW YOUR AUDIENCE HEADER TEXT}'=='${stripped text}'
  Page Should Contain Element            ${KNOW YOUR AUDIENCE PARAGRAPH}
  ${stripped text}                       Get Text  ${KNOW YOUR AUDIENCE PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${KNOW YOUR AUDIENCE PARAGRAPH TEXT}'=='${stripped text}'

Memories Section Background Displayed
  [Documentation]                        Background in "Memories" section contains all needed images.
  Page Should Contain Element            ${MEMORIES BACKGROUND IMAGES}
  Page Should Contain Element            ${MEMORIES BACKGROUND IMG1}
  Page Should Contain Element            ${MEMORIES BACKGROUND IMG2}
  Page Should Contain Element            ${MEMORIES BACKGROUND IMG3} 

Memories Section Text Displayed
  [Documentation]                        Text from "Memories" section is displayed.
  Page Should Contain Element            ${MEMORIES HEADER}
  ${stripped text}                       Get Text  ${MEMORIES HEADER}
  ${stripped text}                       Strip String  ${stripped text}  
  Should Be True                         '${MEMORIES HEADER TEXT}'=='${stripped text}'
  Page Should Contain Element            ${MEMORIES PARAGRAPH}
  ${stripped text}                       Get Text  ${MEMORIES PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${MEMORIES PARAGRAPH TEXT}'=='${stripped text}'

Millions Section Background Displayed
  [Documentation]                        Background in "Millions" section contains all needed images.
  Page Should Contain Element            ${MILLIONS BACKGROUND IMAGES}
  Page Should Contain Element            ${MILLIONS BACKGROUND IMG1}
  Page Should Contain Element            ${MILLIONS BACKGROUND IMG2} 

Millions Section Text Displayed
  [Documentation]                        Text from "Millions" section is displayed.
  Page Should Contain Element            ${MILLIONS HEADER}
  ${stripped text}                       Get Text  ${MILLIONS HEADER}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${MILLIONS HEADER TEXT}'=='${stripped text}'
  Page Should Contain Element            ${MILLIONS PARAGRAPH}
  ${stripped text}                       Get Text  ${MILLIONS PARAGRAPH}
  ${stripped text}                       Strip String  ${stripped text}
  Should Be True                         '${MILLIONS PARAGRAPH TEXT}'=='${stripped text}'

Millions Create Blog Button Displayed
  [Documentation]                        "Create Blog" button in "Millions" section is displayed.
  Page Should Contain Element            ${MILLIONS CREATE BLOG BUTTON}
  Element Text Should Be                 ${MILLIONS CREATE BLOG BUTTON}  ${MILLIONS CREATE BLOG BUTTON TEXT}
  ${create blog link}                    Get Element Attribute  ${MILLIONS CREATE BLOG BUTTON}@href
  Should Be True                         '${create blog link}'=='${HOMEPAGE URL}/go/createyourblog'

Footer Section Columns Displayed
  [Documentation]                        Text and links in footer section columns are displayed.
  Page Should Contain Element            ${FOOTER HEADER 1}
  Element Text Should Be                 ${FOOTER HEADER 1}  ${FOOTER HEADER 1 TEXT}
  Page Should Contain Element            ${FOOTER COLUMN 1 FIRST ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 1 FIRST ITEM}  ${FOOTER COLUMN 1 FIRST ITEM TEXT}
  ${column 1 item 1 link}                Get Element Attribute  ${FOOTER COLUMN 1 FIRST ITEM}@href
  Should Be True                         '${column 1 item 1 link}'=='${HOMEPAGE URL}/go/helpcenter'
  Page Should Contain Element            ${FOOTER COLUMN 1 SECOND ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 1 SECOND ITEM}  ${FOOTER COLUMN 1 SECOND ITEM TEXT}
  ${column 1 item 2 link}                Get Element Attribute  ${FOOTER COLUMN 1 SECOND ITEM}@href
  Should Be True                         '${column 1 item 2 link}'=='${HOMEPAGE URL}/go/helpforum'
  Page Should Contain Element            ${FOOTER COLUMN 1 THIRD ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 1 THIRD ITEM}  ${FOOTER COLUMN 1 THIRD ITEM TEXT}
  ${column 1 item 3 link}                Get Element Attribute  ${FOOTER COLUMN 1 THIRD ITEM}@href
  Should Be True                         '${column 1 item 3 link}'=='${HOMEPAGE URL}/go/tutorials'  
  Page Should Contain Element            ${FOOTER HEADER 2}
  Element Text Should Be                 ${FOOTER HEADER 2}  ${FOOTER HEADER 2 TEXT}
  Page Should Contain Element            ${FOOTER COLUMN 2 FIRST ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 2 FIRST ITEM}  ${FOOTER COLUMN 2 FIRST ITEM TEXT}
  ${column 2 item 1 link}                Get Element Attribute  ${FOOTER COLUMN 2 FIRST ITEM}@href
  Should Be True                         '${column 2 item 1 link}'=='${HOMEPAGE URL}/go/buzz'
  Page Should Contain Element            ${FOOTER COLUMN 2 SECOND ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 2 SECOND ITEM}  ${FOOTER COLUMN 2 SECOND ITEM TEXT}
  ${column 2 item 2 link}                Get Element Attribute  ${FOOTER COLUMN 2 SECOND ITEM}@href
  Should Be True                         '${column 2 item 2 link}'=='${HOMEPAGE URL}/go/bloggerpluspage'
  Page Should Contain Element            ${FOOTER HEADER 3}
  Element Text Should Be                 ${FOOTER HEADER 3}  ${FOOTER HEADER 3 TEXT}
  Page Should Contain Element            ${FOOTER COLUMN 3 FIRST ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 3 FIRST ITEM}  ${FOOTER COLUMN 3 FIRST ITEM TEXT}
  ${column 3 item 1 link}                Get Element Attribute  ${FOOTER COLUMN 3 FIRST ITEM}@href
  Should Be True                         '${column 3 item 1 link}'=='${HOMEPAGE URL}/go/devapi'
  Page Should Contain Element            ${FOOTER COLUMN 3 SECOND ITEM}
  Element Text Should Be                 ${FOOTER COLUMN 3 SECOND ITEM}  ${FOOTER COLUMN 3 SECOND ITEM TEXT}
  ${column 3 item 2 link}                Get Element Attribute  ${FOOTER COLUMN 3 SECOND ITEM}@href
  Should Be True                         '${column 3 item 2 link}'=='${HOMEPAGE URL}/go/devforum'
  
Footer Meta Section Displayed 
  [Documentation]                        Text and links in footer "meta" section are displayed.
  Page Should Contain Element            ${FOOTER META SECTION FIRST ITEM}
  Element Text Should Be                 ${FOOTER META SECTION FIRST ITEM}  ${FOOTER META SECTION FIRST ITEM TEXT}
  ${meta 1 link}                         Get Element Attribute  ${FOOTER META SECTION FIRST ITEM}@href
  Should Be True                         '${meta 1 link}'=='${HOMEPAGE URL}/go/terms'
  Page Should Contain Element            ${FOOTER META SECTION SECOND ITEM}
  Element Text Should Be                 ${FOOTER META SECTION SECOND ITEM}  ${FOOTER META SECTION SECOND ITEM TEXT}
  ${meta 2 link}                         Get Element Attribute  ${FOOTER META SECTION SECOND ITEM}@href
  Should Be True                         '${meta 2 link}'=='${HOMEPAGE URL}/go/privacy'
  Page Should Contain Element            ${FOOTER META SECTION THIRD ITEM}
  Element Text Should Be                 ${FOOTER META SECTION THIRD ITEM}  ${FOOTER META SECTION THIRD ITEM TEXT}
  ${meta 3 link}                         Get Element Attribute  ${FOOTER META SECTION THIRD ITEM}@href
  Should Be True                         '${meta 3 link}'=='${HOMEPAGE URL}/go/contentpolicy'
  
Language Selection Displayed
  [Documentation]                        Language selection is available in footer section.
  Page Should Contain Element            ${FOOTER META LANGUAGE SWITCH}
  
Get Dropdown Language Locator  
  [Documentation]                        Allows to pass language to be selected from dropdown as an argument 
  ...                                    and get the the actual locator for the language option in the dropdown.
  [Arguments]                            ${language}
  ${xpath}                               Replace String  ${LANG SELECTION OPTION}    PLACEHOLDER    ${language}
  [Return]                               ${xpath}
  
Current Language Is Disabled From Selection
  [Documentation]                        Language switch shows current language as disabled.
  ${current language}                    Get Element Attribute  ${DOCUMENT}@lang
  ${language selector option}            Get Dropdown Language Locator  ${current language}
  Element Should Be Selected             ${language selector option}             
  Element Should Be Disabled             ${language selector option}
  
Verify Language
  [Documentation]                        Validates the page language is the one passed as an argument.
  [Arguments]                            ${language}
  ${actual page language}                Get Element Attribute  ${DOCUMENT}@lang
  Should Be True                         '${actual page language}'=='${language}'
  
Change Language  
  [Documentation]                        Switch site language according to the argument.
  [Arguments]                            ${language}
  Select From List By Value              ${FOOTER META LANGUAGE SWITCH}  ?hl=${language}
  Wait For Condition                     return document.readyState=="complete"  
  Wait Until Keyword Succeeds            5  5s  Verify Language  ${language}
  
Change To Each Available Language
  [Documentation]                        Each available language can be selected and applied.
  Change Language                        ${AFRIKAANS}
  Change Language                        ${AMHARIC}
  Change Language                        ${ARABIC}
  Change Language                        ${BASQUE}
  Change Language                        ${BENGALI}
  Change Language                        ${BULGARIAN}
  Change Language                        ${CATALAN}
  Change Language                        ${CHINESE HONG KONG}
  Change Language                        ${CHINESE SIMPLIFIED}
  Change Language                        ${CHINESE TRADITIONAL}
  Change Language                        ${CROATIAN}
  Change Language                        ${CZECH}
  Change Language                        ${DANISH}
  Change Language                        ${DUTCH}
  Change Language                        ${ENGLISH}
  Change Language                        ${ENGLISH UK}
  Change Language                        ${ESTONIAN}
  Change Language                        ${FILIPINO}
  Change Language                        ${FINNISH}
  Change Language                        ${FRENCH CANADA}
  Change Language                        ${FRENCH FRANCE}
  Change Language                        ${GALICIAN}
  Change Language                        ${GERMAN}
  Change Language                        ${GREEK}
  Change Language                        ${GUJARATI}
  #Change Language                        ${HEBREW}  #failing due to a bug: the new code for Hebrew is 'he', but the selector uses deprecated 'iw' while the document language switches to 'he'.
  Change Language                        ${HINDI}
  Change Language                        ${HUNGARIAN}
  Change Language                        ${ICELANDIC}
  Change Language                        ${INDONESIAN}
  Change Language                        ${ITALIAN}
  Change Language                        ${JAPANESE}
  Change Language                        ${KANNADA}
  Change Language                        ${KOREAN}
  Change Language                        ${LATVIAN}
  Change Language                        ${LITHUANIAN}
  Change Language                        ${MALAY}
  Change Language                        ${MALAYALAM}
  Change Language                        ${MARATHI}
  Change Language                        ${NORWEGIAN}
  Change Language                        ${PERSIAN}
  Change Language                        ${POLISH}
  Change Language                        ${PORTUGUESE BRAZIL}
  Change Language                        ${PORTUGUESE PORTUGAL}
  Change Language                        ${ROMANIAN}
  Change Language                        ${RUSSIAN}
  Change Language                        ${SERBIAN}
  Change Language                        ${SLOVAK}
  Change Language                        ${SLOVENIAN}
  Change Language                        ${SPANISH LATIN AMERICA}
  Change Language                        ${SPANISH SPAIN}
  Change Language                        ${SWAHILI}
  Change Language                        ${SWEDISH}
  Change Language                        ${TAMIL}
  Change Language                        ${TELUGU}
  Change Language                        ${THAI}
  Change Language                        ${TURKISH}
  Change Language                        ${UKRAINIAN}
  Change Language                        ${URDU}
  Change Language                        ${VIETNAMESE}
  Change Language                        ${ZULU}
  