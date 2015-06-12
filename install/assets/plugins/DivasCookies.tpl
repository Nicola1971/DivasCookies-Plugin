//<?php
/**
 * DivasCookies
 *
 * EU Cookie Law Policy Banner for MODX Evolution
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.0.5  RC
 * @internal    @events OnWebPagePrerender
 * @internal    @installset base
 * @internal    @disabled 1
 * @internal    @modx_category Cookies
 * @internal    @properties  &bannerText= Banner Text:;textarea;This website uses cookies in order to improve your web experience. &cookiePolicyLink= Policy Link:;string;cookie-policy.html &cookiePolicyLinkText= Policy Link Text:;string;More info &thirdPartyPolicyWidget= Third Party Policy Widget:;string; &acceptButtonText= Accept Button Text:;string;OK &acceptButtonSrc= Accept Button Src:;string; &openEffect= Open  Effect:;list;slideUp,slideDown,slideLeft,slideRight,fade;slideDown &openEffectDuration= Open Effect Duration:;string;1000 &openEffectEasing= Open Effect Easing:;list;swing,linear;swing &closeEffect= Close Effect:;list;slideUp,slideDown,slideLeft,slideRight,fade;slideUp &closeEffectDuration= Close Effect Duration:;string;1000 &closeEffectEasing= Close Effect Easing:;list;swing,linear;swing &debugMode= Use Debug Mode:;list;false,true;false &saveUserPreferences= Save User Preferences:;list;true,false;true &cookieDuration= Cookie Duration (days):;string;30 &blockScripts= Block Scripts:;list;true,false;true &pageReload= Page Reload:;list;true,false;true &acceptOnScroll= Accept On Scroll:;list;true,false;false &acceptOnClick= Accept On Click:;list;true,false;true &codePosition=Place Divas js code before closing tag;list;head,body;body &LoadJQuery= Load jQuery js:;list;yes,no;no &jQueryPath= jQuery Path:;string;assets/plugins/divascookies/js/jquery-2.1.4.min.js &DivasPath= Divas Js Path:;string;assets/plugins/divascookies/js/jquery.divascookies-0.5.min.js &divasSkin= Divas Skin path:;string;assets/plugins/divascookies/css/divascookies_style_custom.css &FileConf= Static js Configuration file:;list;yes,no;no &FileConfPath= Static Configuration file path:;string;assets/plugins/divascookies/config/divas.conf.js
 */

/*
###DivasCookies - UEU Cookie Law Policy Banner for MODX Evolution###
Plugin Author: Nicola Lambathakis.
http://www.tattoocms.it/
DivasCookies script by Coding Divas
http://www.codingdivas.net/
http://www.codingdivas.net/divascookies/

Version 1.0.5 RC
Events: OnWebPagePrerender

 */

/**
&bannerText= Banner Text:;textarea;This website uses cookies in order to improve your web experience. &cookiePolicyLink= Policy Link:;string;cookie-policy.html &cookiePolicyLinkText= Policy Link Text:;string;More info &thirdPartyPolicyWidget= Third Party Policy Widget:;string; &acceptButtonText= Accept Button Text:;string;OK &acceptButtonSrc= Accept Button Src:;string; &openEffect= Open  Effect:;list;slideUp,slideDown,slideLeft,slideRight,fade;slideDown &openEffectDuration= Open Effect Duration:;string;1000 &openEffectEasing= Open Effect Easing:;list;swing,linear;swing &closeEffect= Close Effect:;list;slideUp,slideDown,slideLeft,slideRight,fade;slideUp &closeEffectDuration= Close Effect Duration:;string;1000 &closeEffectEasing= Close Effect Easing:;list;swing,linear;swing &debugMode= Use Debug Mode:;list;false,true;false &saveUserPreferences= Save User Preferences:;list;true,false;true &cookieDuration= Cookie Duration (days):;string;30 &blockScripts= Block Scripts:;list;true,false;true &pageReload= Page Reload:;list;true,false;true &acceptOnScroll= Accept On Scroll:;list;true,false;false &acceptOnClick= Accept On Click:;list;true,false;true &codePosition=Place Divas js code before closing tag;list;head,body;body &LoadJQuery= Load jQuery js:;list;yes,no;no &jQueryPath= jQuery Path:;string;assets/plugins/divascookies/js/jquery-2.1.4.min.js &DivasPath= Divas Js Path:;string;assets/plugins/divascookies/js/jquery.divascookies-0.5.min.js &divasSkin= Divas Skin path:;string;assets/plugins/divascookies/css/divascookies_style_custom.css &FileConf= Static js Configuration file:;list;yes,no;no &FileConfPath= Static Configuration file path:;string;assets/plugins/divascookies/config/divas.conf.js
*/

$codePosition = isset($codePosition)? $codePosition: 'body';

$e= & $modx->Event;
switch ($e->name) {

case "OnWebPagePrerender" :
// Divas Cookies skin
	$modx->documentOutput= str_replace('</head>', '<link rel="stylesheet" type="text/css" media="screen" href="'.$divasSkin.'" /></head>', $modx->documentOutput);

//  jQuery 2.1.4
if ($LoadJQuery == 'yes') {
	$modx->documentOutput= str_replace('</'.$codePosition.'>', '<script src="'.$jQueryPath.'"></script></'.$codePosition.'>', $modx->documentOutput);
}
//  Divas Cookies js plugin version
	$modx->documentOutput= str_replace('</'.$codePosition.'>', '<script src="'.$DivasPath.'"></script></'.$codePosition.'>', $modx->documentOutput);

//  Divas Cookies js static configuration file
if ($FileConf == 'yes') {
	$modx->documentOutput= str_replace('</'.$codePosition.'>', '<script src="'.$FileConfPath.'"></script></'.$codePosition.'>', $modx->documentOutput);
}
	else {
//  your Divas Cookies js plugin configuration file
	$modx->documentOutput= str_replace('</'.$codePosition.'>', '
<script>
   (function($) {
$.DivasCookies({
	bannerText				: "'.$bannerText.'",
	cookiePolicyLink		: "'.$cookiePolicyLink.'",
	cookiePolicyLinkText	: "'.$cookiePolicyLinkText.'",
	thirdPartyPolicyWidget	: "'.$thirdPartyPolicyWidget.'",
	acceptButtonText		: "'.$acceptButtonText.'",
	acceptButtonSrc			: "'.$acceptButtonSrc.'",
	openEffect				: "'.$openEffect.'",
	openEffectDuration		: '.$openEffectDuration.',
	openEffectEasing		: "'.$openEffectEasing.'",
	closeEffect				: "'.$closeEffect.'",
	closeEffectDuration		: '.$closeEffectDuration.',
	closeEffectEasing		: "'.$closeEffectEasing.'",
	debugMode				: '.$debugMode.',
	saveUserPreferences		: '.$saveUserPreferences.',
	cookieDuration			: '.$cookieDuration.',
	blockScripts			: '.$blockScripts.',
	pageReload				: '.$pageReload.',
	acceptOnScroll			: '.$acceptOnScroll.',
	acceptOnClick			: '.$acceptOnClick.'
});
}(jQuery));

</script>
</'.$codePosition.'>', $modx->documentOutput);
	}
		break;
   default :
       return; // stop.
}