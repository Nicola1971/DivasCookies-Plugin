# DivasCookies Plugin
## DivasCookies EU Cookie Law Policy Banner for MODX Evolution

http://www.tattoocms.it/extras/plugins/divascookies-plugin.html

#### Version 1.0.6 RC (Divas js version 0.6)

### Plugin Author: Nicola Lambathakis

http://www.tattoocms.it/

### DivasCookies script by Coding Divas

http://www.codingdivas.net/

http://www.codingdivas.net/divascookies/

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
* Divas Skin path: path to Divas CSS Skin
* Static js Configuration file: Static js configuration file (overwite plugin configuration)
* Static Configuration file path: path to js configuration file




# Plugin Updates

### 1.0.6 RC
* Updated to **Divas Cookies 0.6**
* New Divas **excludePolicyPage** parameter:

> If true excludes the policy page specified in cookiePolicyLink parameter is excluded from the acceptOnScroll and acceptOnClick rules (because the user should read the whole policy without being forced to accept on scroll or clicking any link in that page)



