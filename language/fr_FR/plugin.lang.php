<?php

// ================================================
// CENTRALADMIN - TRADUCTIONS FRANÇAISES
// ================================================

// == GÉNÉRAL ==
$lang['central_admin'] = 'Skin CSS - centralAdmin';
$lang['central_admin_description'] = 'Personnalisez l\'apparence de votre interface d\'administration';
$lang['save'] = 'Enregistrer';
$lang['reset'] = 'Réinitialiser';
$lang['credits'] = 'Crédits';

// == MESSAGES ==
$lang['configuration_saved'] = 'Configuration enregistrée avec succès 👍';
$lang['configuration_reset'] = 'Configuration réinitialisée aux valeurs par défaut';
$lang['configuration_reset_error'] = 'Erreur lors de la réinitialisation de la configuration';
$lang['scheme_switch_warning'] = 'Attention : vous avez changé de thème';
$lang['user_modifications_preserved'] = 'Vos modifications pour le thème {scheme} ont été préservées';
$lang['reset_current_scheme_only'] = 'Réinitialiser uniquement le thème actuel';

// == SECTIONS ==
$lang['central_admin_layout'] = 'Paramètres de mise en page';
$lang['central_admin_tooltips'] = 'Couleurs des info-bulles';
$lang['central_admin_scheme_clear'] = 'Couleurs spécifiques au thème actuel : clair';
$lang['central_admin_scheme_dark'] = 'Couleurs spécifiques au thème actuel : sombre';
$lang['debug_infos_area'] = 'Informations de débogage';

// == ÉTATS ==
$lang['central_admin_unlocked'] = 'Paramètre déverrouillé';
$lang['central_admin_locked'] = 'Paramètre verrouillé';

// == OPTIONS HEADER ==
$lang['actual_piwigo_admin_theme'] = 'Thème admin Piwigo détecté :';
$lang['preference_browser_scheme'] = 'Affichage avec le thème neutre';
$lang['accordion_choice'] = 'Un seul panneau ouvert à la fois';

// == PARAMÈTRES LAYOUT ==
$lang['admin_width'] ='Largeur maximale de l\'administration';
$lang['admin_width_tp'] = 
  "Largeur maximale de l'interface d'administration.\n"
. "Valeur recommandée : 1600px\n"
. "Réservé aux utilisateurs avancés.";

$lang['menubar_width'] = 'Largeur de la barre latérale';
$lang['menubar_width_tp'] = 
  "Largeur de la colonne de gauche (menubar).\n"
. "Valeur recommandée : 205px\n"
. "Réservé aux utilisateurs avancés.";

$lang['align_pluginFilter_left'] = 'Page "Plugins" - Position gauche de la barre d\'actions';
$lang['align_pluginFilter_left_tp'] = 
  "Position de la barre d'actions (partie gauche).\n"
. "Doit correspondre à la largeur du menubar.\n"
. "Valeur recommandée : 225px\n"
. "Réservé aux utilisateurs avancés.";

$lang['align_pluginFilter_right'] = 'Page "Plugins" - Position droite de la barre d\'actions';
$lang['align_pluginFilter_right_tp'] = 
  "Position de la barre d'actions (partie droite).\n"
. "Valeur recommandée : 160px\n"
. "Réservé aux utilisateurs avancés.";

$lang['fade_start'] = 'Début du dégradé de couleur';
$lang['fade_start_tp'] = 
  "Distance avant laquelle la couleur reste unie à 100%.\n"
. "Valeur recommandée : 800px\n"
. "Réservé aux utilisateurs avancés.";

$lang['hide_quick_sync_button'] = 'Masquer le bouton de synchronisation rapide';
$lang['hide_quick_sync_button_tp'] = 
  "Masque le bouton « Créer un album » sur la page de synchronisation.\n"
. "Utile pour une interface plus épurée.";

// == COULEURS TOOLTIPS ==
$lang['infos_main_color'] = 'Couleur des messages informatifs';
$lang['infos_main_color_tp'] = 'Couleur de fond des bulles d\'information (vert clair par défaut)';

$lang['warning_main_color'] = 'Couleur des avertissements';
$lang['warning_main_color_tp'] = 'Couleur de fond des bulles d\'avertissement (orange par défaut)';

$lang['messages_main_color'] = 'Couleur des messages';
$lang['messages_main_color_tp'] = 'Couleur de fond des bulles de messages (bleu clair par défaut)';

$lang['error_main_color'] = 'Couleur des erreurs';
$lang['error_main_color_tp'] = 'Couleur de fond des bulles d\'erreur (rouge clair par défaut)';

// == COULEURS THÈME CLAIR ==
$lang['bg_clear_global'] = 'Arrière-plan général';
$lang['bg_clear_global_tp'] = 'Couleur des bandes latérales sur les côtés de l\'interface';

$lang['bg_clear_content2'] = 'Arrière-plan des en-têtes';
$lang['bg_clear_content2_tp'] = 'Couleur de l\'en-tête des pages (bandeau supérieur)';

$lang['bg_clear_content1'] = 'Arrière-plan du contenu principal';
$lang['bg_clear_content1_tp'] = 'Couleur de la zone de contenu utilisée par les options';

$lang['bg_clear_content3'] = 'Arrière-plan secondaire';
$lang['bg_clear_content3_tp'] = 'Couleur de la zone restante sous les options (si présente)';

// == COULEURS THÈME SOMBRE ==
$lang['bg_dark_global'] = 'Arrière-plan général';
$lang['bg_dark_global_tp'] = 'Couleur des bandes latérales sur les côtés de l\'interface';

$lang['bg_dark_content2'] = 'Arrière-plan des en-têtes';
$lang['bg_dark_content2_tp'] = 'Couleur de l\'en-tête des pages (bandeau supérieur)';

$lang['bg_dark_content1'] = 'Arrière-plan du contenu principal';
$lang['bg_dark_content1_tp'] = 'Couleur de la zone de contenu utilisée par les options';

$lang['bg_dark_content3'] = 'Arrière-plan secondaire';
$lang['bg_dark_content3_tp'] = 'Couleur de la zone restante sous les options (si présente)';

// == DEBUG - VERSIONS ==
$lang['versions'] = 'Versions des composants';
$lang['plugin_internal_version'] = 'Version du plugin :';
$lang['verification_'] = 'Vérification en cours...';

// == DEBUG - DÉTECTION THÈME ==
$lang['spectrum_suspending'] = 'Retiré (natif v2.9+)';
$lang['theme_detection_php'] = 'Détection du thème (côté serveur - PHP)';
$lang['theme_detection_js'] = 'Détection du thème (côté client - JavaScript) [OBSOLETE]';
$lang['detection_method'] = 'Méthode de détection';
$lang['raw_value_userprefs'] = 'Valeur brute (base de données)';
$lang['normalized_value'] = 'Valeur normalisée';
$lang['theme_applied'] = 'Thème final appliqué';
$lang['is_roma_check'] = 'Est-ce le thème Roma (sombre) ?';
$lang['is_clear_check'] = 'Est-ce le thème Clear (clair) ?';

// == DEBUG - DÉTECTION JS ==
$lang['js_detected_scheme'] = 'Schéma détecté (JavaScript)';
$lang['html_classes'] = 'Classes CSS de <html>';
$lang['body_classes'] = 'Classes CSS de <body>';
$lang['body_bgcolor'] = 'Couleur de fond de <body>';
$lang['php_js_concordance'] = 'Concordance PHP/JS';

// == DEBUG - INFOS COMPLÉMENTAIRES ==
$lang['additional_info'] = 'Informations complémentaires';
$lang['gallery_theme'] = 'Thème de la galerie publique';

// == DEBUG - FICHIERS ==
$lang['files_charged'] = 'Fichiers CSS et JavaScript chargés';
$lang['css_principal'] = 'CSS principal :';
$lang['css_rebuild'] = 'CSS rebuild (structure) :';
$lang['css_form'] = 'CSS formulaire :';
$lang['css_admin_theme'] = 'CSS thème admin :';
$lang['css_spectrum'] = 'Spectrum CSS :';
$lang['spectrum_js'] = 'Spectrum JavaScript :';
$lang['js_form'] = 'JavaScript formulaire :';
$lang['js_preview'] = 'JavaScript prévisualisation :';

// == DEBUG - CONSOLE ==
$lang['browser_consol'] = 'Console du navigateur';
$lang['open_console_f12'] = 'Ouvrez les outils de développement (F12) > Console pour voir les détails :';

// == PRÉVISUALISATION ==
$lang['css_vars_injected'] = 'Variables CSS injectées';
$lang['css_preview_active'] = 'Prévisualisation en temps réel active';
$lang['css_applying_scheme'] = 'Application du schéma : {scheme}';
$lang['color_preview_active'] = 'Prévisualisation des couleurs active';
$lang['color_updated_realtime'] = 'Couleur mise à jour en temps réel';

// == MODALE CRÉDITS ==
$lang['credits_modal_title'] = 'Crédits - centralAdmin';
$lang['version_number'] = 'Version';
$lang['jquery_not_loaded'] = 'jQuery non chargé';
$lang['jquery_confirm_available'] = 'jQuery Confirm disponible';
$lang['credits_loading_error'] = 'Impossible de charger les crédits';

// == CONSOLE NAVIGATEUR (mise à jour) ==
$lang['browser_console'] = 'Console du navigateur';  // Correction orthographe
$lang['open_console_f12'] = 'Ouvrez les outils de développement (F12) > Console pour voir les détails de la détection du thème et du chargement des composants.';

// == NOUVELLE SECTION : DEMANDE D'AIDE ==
$lang['help_section_title'] = 'Demande d\'aide relative au plugin';
$lang['help_section_description'] = 'Besoin d\'aide ou vous souhaitez signaler un problème ? Consultez les ressources suivantes :';
$lang['help_link_wiki'] = 'Documentation Wiki';
$lang['help_link_forum'] = 'Forum de discussion';
$lang['help_link_issues'] = 'Signaler un bug ou suggérer une amélioration';
$lang['help_link_documentation'] = 'Documentation technique complète';

// == BROWSER CONSOLE (update) ==
$lang['browser_console'] = 'Browser Console';
$lang['open_console_f12'] = 'Open developer tools (F12) > Console to see theme detection details and component loading information.';

// == NEW SECTION: HELP REQUEST ==
$lang['help_section_title'] = 'Plugin Help & Support';
$lang['help_section_description'] = 'Need help or want to report an issue? Check out these resources:';
$lang['help_link_wiki'] = 'Documentation Wiki';
$lang['help_link_forum'] = 'Discussion Forum';
$lang['help_link_issues'] = 'Report a bug or suggest an improvement';
$lang['help_link_documentation'] = 'Complete Technical Documentation';