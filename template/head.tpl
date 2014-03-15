    <title>{if $title}{$title|escape:"html"} - {/if}{$appName}</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <link rel="SHORTCUT ICON" href="template/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="static/css/basic.css?{$AOWOW_REVISION}" />
    <link rel="stylesheet" type="text/css" href="static/css/global.css?{$AOWOW_REVISION}" />
    <link rel="stylesheet" type="text/css" href="static/css/locale_{$user.language}.css?{$AOWOW_REVISION}" />
    <!--[if IE]><link rel="stylesheet" type="text/css" href="static/css/global_ie.css?{$AOWOW_REVISION}" /><![endif]-->
    <!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="static/css/global_ie6.css?{$AOWOW_REVISION}" /><![endif]-->
    <!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="static/css/global_ie67.css?{$AOWOW_REVISION}" /><![endif]-->
{foreach from=$reqCSS item=css}
{if isset($css.string)}
    <style type="text/css">{$css.string}</style>
{else}
    {if isset($css.ieCond)}<!--[if {$css.ieCond}]>{/if}<link rel="stylesheet" type="text/css" href="{$css.path}?{$AOWOW_REVISION}" />{if isset($css.ieCond)}<![endif]-->{/if}
{/if}
{/foreach}
    <script type="text/javascript">
        var g_serverTime = new Date('{$smarty.now|date_format:"%Y/%m/%d %H:%M:%S"}');
        var g_staticUrl = "{$smarty.const.STATIC_URL}";
        var g_host = "{$smarty.const.HOST_URL}";
    </script>
    <script src="static/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="static/js/basic.js?{$AOWOW_REVISION}" type="text/javascript"></script>
    <script src="power/aowowPower.js?lang={$user.language|substr:2}" type="text/javascript"></script>
    <script src="static/js/locale_{$user.language}.js?{$AOWOW_REVISION}" type="text/javascript"></script>
    <script src="static/js/global.js?{$AOWOW_REVISION}" type="text/javascript"></script>
    <script src="static/js/Markup.js?{$AOWOW_REVISION}" type="text/javascript"></script>
{foreach from=$reqJS item=file}
    <script src="{$file}{*?$AOWOW_REVISION*}" type="text/javascript"></script>
{/foreach}
    <script type="text/javascript">
        var g_locale = {ldelim} id:{$user.locale}, name:'{$user.language}' {rdelim};
        var g_user = {ldelim} {strip}
            commentban:false,
            ratingban:false,
            id:{$user.id},
            name:'{$user.name|escape:"quotes"}',
            roles:{$user.roles},
            permissions:{$user.perms},
            cookies: {$user.cookies}
            {if isset($user.chars)}, characters: {$user.chars} {/if}
            {if isset($user.profiles)}, profiles: {$user.profiles}{/if}
            {if isset($user.weights)}, weightscales: {$user.weights}{/if}
       {/strip} {rdelim};
    </script>
