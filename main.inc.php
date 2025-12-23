<?php
/*
Plugin Name: Central Admin CSS
Description: Centrage de toute l'administratin sur une colonne maximun de 1600px de largeur.
Tient compte de la couleur (clair / obscure).
Corrections mineurs de divers éléments.
Injecte des feuilles CSS personnalisées uniquement !
Version: 1.0
Author: Gotcha
*/

defined('PHPWG_ROOT_PATH') or die('Hacking attempt!');

global $conf, $centralAdminDefault;


// -----------------------------
// 1) Initialisation de la config
// -----------------------------

// Valeurs par défaut du plugin
$centralAdminDefault = array(
    'admin_width'             => '1600px',
    'admin_sidebar'           => '225px',
    'align_pluginFilter_left' => '225px',
    'align_pluginFilter_right'=> '160px',
    'alignsearch_tag_left'    => '240px',
    'alignsearch_tag_right'   => '15px',
    'footer_width'            => '205px',
    'infos_main_color'        => '#c2f5c2',
    'warning_main_color'      => '#ffdd99',
    'messages_main_color'     => '#bde5f8',
    'error_main_color'        => '#ffd5dc',
    'fade_start'              => '800px'
);

// Initialisation si absente ou vide
if (!isset($conf['centralAdmin']) || !is_array($conf['centralAdmin'])) {
    global $centralAdminDefault;
    $conf['centralAdmin'] = $centralAdminDefault;
    conf_update_param('centralAdmin', $conf['centralAdmin']);
}


// -----------------------------
// 2) Menu admin
// -----------------------------

add_event_handler('get_admin_plugin_menu_links', 'central_admin_menu');

function central_admin_menu($menu)
{
    if (!is_array($menu)) {
        $menu = array();
    }

    $menu[] = array(
        'NAME' => 'Central Admin',
        'URL'  => get_admin_plugin_menu_link(dirname(__FILE__).'/admin.php')
    );

    return $menu;
}


// -----------------------------
// 3) CSS dynamique
// -----------------------------

add_event_handler('loc_begin_admin', 'central_admin_inject_css');

function central_admin_inject_css()
{
    global $template, $themeconf, $conf;

    // CSS commune
    $template->append('head_elements',
        '<link rel="stylesheet" href="plugins/centralAdmin/admin/css/admin-common.css">');

    $colorscheme = (isset($themeconf['colorscheme']) && in_array($themeconf['colorscheme'], ['clear','dark']))
        ? $themeconf['colorscheme']
        : 'clear';

    $template->append('head_elements',
        '<link rel="stylesheet" href="plugins/centralAdmin/admin/css/admin-'.$colorscheme.'.css">');

    // Variables CSS dynamiques
    if (!is_array($conf['centralAdmin'])) return;

    $css = ":root {\n";
    foreach ($conf['centralAdmin'] as $key => $value)
    {
        $css .= '  --'.str_replace('_','-',$key).': '.$value.";\n";
    }
    $css .= "}\n";

    $template->append('head_elements', '<style id="central-admin-vars">'.$css.'</style>');
}
