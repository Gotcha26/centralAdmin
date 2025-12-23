<?php
defined('PHPWG_ROOT_PATH') or die('Hacking attempt!');

global $template, $conf, $page, $centralAdminDefault;

// Vérification que les valeurs par défaut existent
if (!isset($centralAdminDefault) || !is_array($centralAdminDefault)) {
    die('Erreur : centralAdminDefault non défini');
}

// Fusion valeurs existantes + défaut
$centralAdmin = array_merge($centralAdminDefault, (array) $conf['centralAdmin']);

// Traitement du formulaire
if (isset($_POST['save'])) {
    foreach ($centralAdminDefault as $key => $default) {
        if (isset($_POST[$key])) {
            $centralAdmin[$key] = trim($_POST[$key]);
        }
    }
    $conf['centralAdmin'] = $centralAdmin;
    conf_update_param('centralAdmin', $conf['centralAdmin']);
    $page['infos'][] = 'Configuration enregistrée 👍';
}

// Assignation à Smarty
$template->assign('centralAdmin', $centralAdmin);

// Charger le template admin
$template->set_filenames(array(
    'plugin_admin_content' => dirname(__FILE__).'/admin.tpl'
));
$template->assign_var_from_handle('ADMIN_CONTENT', 'plugin_admin_content');
