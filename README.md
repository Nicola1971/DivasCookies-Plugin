# DivasCookies Plugin
## DivasCookies EU Cookie Law Policy Banner for MODX Evolution

http://www.tattoocms.it/extras/plugins/divascookies-plugin.html

#### Version 1.0.6 RC (Divas js version 0.6)

### Plugin Author: Nicola Lambathakis

http://www.tattoocms.it/

### DivasCookies script by Coding Divas

http://www.codingdivas.net/

http://www.codingdivas.net/divascookies/

# Installation

Install with Package Manager https://github.com/Jako/PackageManager

# Requires

***Use FriendlyURLs*** enabled 

# Plugin Configuration

##Divas Configuration Options (more infos at http://www.codingdivas.net/divascookies/)

* Banner Text: text for the Divas Cookies banner
* Policy Link: link to the extended cookie policy
* Policy Link Text: text for the link to the extended cookie policy
* Third Party Policy Widget: if set to "iubenda" tries to use the Iubenda widget
* Accept Button Text: text for the close button
* Accept Button Src: source for the close button image
* Open Effect: opening effect for Divas Cookies banner ["fade", "slideUp", "slideDown", "slideLeft", "slideRight"]
* Open Effect Duration: duration of the opening effect (msec)
* Open Effect Easing: easing for the opening effect
* Close Effect: closing effect for Divas Cookies banner ["fade", "slideUp", "slideDown", "slideLeft", "slideRight"]
* Close Effect Duration: duration of the closing effect (msec)
* Close Effect Easing: easing for the closing effect
* Use Debug Mode: if true, the options are checked and warnings are shown
* Save User Preferences: if true, sets a cookie after the Divas Cookies is closed the first time and never shows it again
* Cookie Duration (days): number of days after which the Divas Cookie technical cookie will expire (default 365 days)
* Block Scripts: set this to true if you blocked scripts by wrapping them with if($.DivasCookies.optedIn())
* Page Reload: if true reloads the actual page after opt-in to show the previuosly inline blocked scripts
* Accept On Scroll: if true sets the Divas Cookie technical cookie on page scroll for cookies agreement
* Accept On Click: if true sets the Divas Cookie technical cookie on click on any  in the page except that on Divas Cookies banner for cookies agreement
* excludePolicyPage: If true excludes the policy page specified in cookiePolicyLink parameter is excluded from the acceptOnScroll and acceptOnClick rules

###Additional MODX Evolution Configuration Options

* Place Divas js code before closing tag: place divas js inside HEAD or BODY
* Load jQuery js: load jQuery (if you don't use jQuery in your templates)
* jQuery Path: path to jQuery library
* Divas Js Path: path to Divas Js 
* Load Divas Skin css: to disable divas ccs skin (so you can add Divas styles inside your default css) 
* Divas Skin path: path to Divas CSS Skin
* Static js Configuration file: Static js configuration file (overwite plugin configuration)
* Static Configuration file path: path to js configuration file

# Plugin Updates

### 1.0.6 RC2
* Moved Divas package from **assets/plugin** to **assets/js** (because MODX robot.txt disallow assets/plugin and Google can not index Divas css and js)
* New plugin option **Load Divas Skin css** to disable divas ccs skin (so you can add Divas styles inside your default css)

####Basic divas styles
```
/**
 * Custom styles for Divas Cookies jquery plugin for Cookie Policy banner stylesheet
 */

.divascookies {
	position: fixed;
	width: 100%;
	background: rgba(0, 0, 0, 0.8);
	color: #f9fafc;
	display: none;
	z-index: 999999;
}

.divascookies > .divascookies-banner-container {
	position: relative;
	padding: 2px 5px;
	overflow: hidden;
	text-align: center;
}

.divascookies p.divascookies-banner-text {
	position: relative;
	line-height: 1.1em;
	font-size: 14px;
	display: inline-block;
	padding: 0 10px 0 0;
	color:#FFFFFF;
}

span.divascookies-policy-link {
} 

span.divascookies-policy-link a {
	white-space: nowrap;	
	color: #afeeee;
	text-decoration: none;
}

span.divascookies-policy-link a:hover {
	text-decoration: underline;
	color: #5cdbdc;
    transition: all 0.4s ease 0s;
}

.divascookies-banner-container > .divascookies-accept-button-container {
	display: inline-block;
	margin-top: 5px;
}

.divascookies-accept-button-container > .divascookies-accept-button-img {
	
}

.divascookies-accept-button-container > .divascookies-accept-button-text {
	font-size: 14px;
	cursor: pointer;
	background: #72c02c;
	color: #FFFFFF;
	padding: 3px 7px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;	
    transition: all 0.3s ease 0s;
}

.divascookies-accept-button-container > .divascookies-accept-button-text:hover {
	background: #adff2f;
	color: #313131;
}
```

### 1.0.6 RC
* Updated to **Divas Cookies 0.6**
* New Divas **excludePolicyPage** parameter:

> If true excludes the policy page specified in cookiePolicyLink parameter is excluded from the acceptOnScroll and acceptOnClick rules (because the user should read the whole policy without being forced to accept on scroll or clicking any link in that page)



