{* ================================================
   CENTRALADMIN - TEMPLATE PRINCIPAL
   Version: 3.0.0
   ================================================ *}

{* Variables CSS dynamiques - Injection *}
<style id="central-admin-vars-preview">
{$dynamic_css}
</style>

{* DEBUG : Vérifier l'injection *}
<script>
console.log('[CentralAdmin] Style tag chargé:', document.getElementById('central-admin-vars-preview') ? 'OUI' : 'NON');
if (document.getElementById('central-admin-vars-preview')) {
  console.log('[CentralAdmin] Contenu CSS initial:', document.getElementById('central-admin-vars-preview').textContent.substring(0, 200));
}
</script>

{* === CSS CORE === *}
<link rel="stylesheet" href="{$CA_ADMIN_LAYOUT_CSS}">
<link rel="stylesheet" href="{$CA_ADMIN_OVERRIDE_CSS}">
<link rel="stylesheet" href="{$CA_COLORS_UNIFIED_CSS}">

{* === CSS FORM === *}
<link rel="stylesheet" href="{$CA_FORM_BASE_CSS}">
<link rel="stylesheet" href="{$CA_FORM_COMPONENTS_CSS}">
<link rel="stylesheet" href="{$CA_FORM_THEMES_CSS}">

{* === CSS MODULES === *}
<link rel="stylesheet" href="{$CA_DEBUG_CSS}">
<link rel="stylesheet" href="{$CA_MODAL_CSS}">

<div class="centralAdmin-container">
  
  <header class="ca-header">
    <div class="ca-header-main">
      <div class="ca-header-left">
        <h2>{'central_admin'|@translate} <small style="color: #999; font-size: 0.6em;">v{$theme_debug.plugin_version}</small></h2>
        <p class="ca-subtitle">{'central_admin_description'|@translate}</p>
      </div>
      <div class="ca-header-right">
        <div class="ca-options-group">
          <div class="ca-option-info">
            <span class="ca-option-label-info">{'actual_piwigo_admin_theme'|@translate}</span>
            <span class="ca-option-value">{$current_scheme|upper}</span>
          </div>
          <label class="ca-option-item">
            <input type="checkbox" id="ca-browser-theme" class="ca-option-checkbox">
            <span class="ca-option-label">{'preference_browser_scheme'|@translate}</span>
          </label>
          <label class="ca-option-item">
            <input type="checkbox" id="ca-single-accordion" class="ca-option-checkbox" checked>
            <span class="ca-option-label">{'accordion_choice'|@translate}</span>
          </label>
        </div>
      </div>
    </div>
  </header>

  {if isset($page.infos)}
  <div class="ca-notification ca-notification-success">
    {foreach from=$page.infos item=info}
      <p>{$info}</p>
    {/foreach}
  </div>
  {/if}

  {if isset($page.errors)}
  <div class="ca-notification ca-notification-error">
    {foreach from=$page.errors item=error}
      <p>{$error}</p>
    {/foreach}
  </div>
  {/if}

  <form method="post" class="ca-form" id="centralAdminForm">
    
    {* 1. Section Général (layout simplifié) *}
    {include file=$LAYOUT_SECTION_TPL}
    
    {* 2. Section Couleurs du Thème (clear & dark unifiés) *}
    {include file=$COLORS_UNIFIED_SECTION_TPL}
    
    {* 3. Section Couleurs des Messages (tooltips unifiés) *}
    {include file=$TOOLTIPS_UNIFIED_SECTION_TPL}
    
    {* 4. Section Paramètres Avancés *}
    {include file=$ADVANCED_PARAMS_SECTION_TPL}

    {* SECTION DEBUG - Accordion replié par défaut *}
    {* ================================================
      SECTION DEBUG SIMPLIFIÉE v3.1.0
      ================================================ *}

    {* 5. SECTION DEBUG - Accordion replié par défaut *}
    <div class="ca-section" data-section="debug">
      <div class="ca-section-header">
        <h3 class="ca-section-title">
          <span class="ca-icon">🐛</span>
          {'debug_infos_area'|@translate}
        </h3>
        <button type="button" class="ca-toggle" aria-expanded="false">
          <span class="ca-chevron">▼</span>
        </button>
      </div>
      
      <div class="ca-section-content" style="display: none;">
        <div class="ca-debug-info">
          
          {* ========================================
            SECTION 1 : VERSIONS DES COMPOSANTS
            ======================================== *}
          <h4>{'versions'|@translate}</h4>
          <table class="ca-debug-table">
            <tr>
              <td><strong>{'plugin_internal_version'|@translate}</strong></td>
              <td>{$theme_debug.plugin_version}</td>
            </tr>
            <tr>
              <td><strong>jQuery :</strong></td>
              <td><span id="jquery-version">{'verification_'|@translate}</span></td>
            </tr>
            <tr>
              <td><strong>jQuery Confirm :</strong></td>
              <td><span id="jquery-confirm-status">{'verification_'|@translate}</span></td>
            </tr>
            <tr>
              <td><strong>Smarty :</strong></td>
              <td>{$theme_debug.smarty_version}</td>
            </tr>
          </table>
          
          {* ========================================
            SECTION 2 : DÉTECTION THÈME PHP
            ======================================== *}
          <h4 style="margin-top: 20px;">{'theme_detection_php'|@translate}</h4>
          <table class="ca-debug-table">
            <tr>
              <td><strong>{'detection_method'|@translate}</strong></td>
              <td><span class="ca-debug-badge ca-badge-info">{$theme_debug.detection_method}</span></td>
            </tr>
            <tr>
              <td><strong>{'raw_value_userprefs'|@translate}</strong></td>
              <td><span class="ca-debug-badge ca-badge-warning">{$theme_debug.admin_theme_value}</span></td>
            </tr>
            <tr>
              <td><strong>{'normalized_value'|@translate}</strong></td>
              <td>{$theme_debug.normalized}</td>
            </tr>
            <tr>
              <td><strong>{'theme_applied'|@translate}</strong></td>
              <td><span class="ca-debug-value">{$theme_debug.theme_final}</span></td>
            </tr>
            <tr>
              <td><strong>{'is_roma_check'|@translate}</strong></td>
              <td>{if $theme_debug.is_roma}✅ Oui{else}❌ Non{/if}</td>
            </tr>
            <tr>
              <td><strong>{'is_clear_check'|@translate}</strong></td>
              <td>{if $theme_debug.is_clear}✅ Oui{else}❌ Non{/if}</td>
            </tr>
          </table>
          
          {* ========================================
            SECTION 3 : CONSOLE NAVIGATEUR
            ======================================== *}
          <h4 style="margin-top: 20px;">{'browser_console'|@translate}</h4>
          <p style="color: #666; font-size: 13px; line-height: 1.6;">
            {'open_console_f12'|@translate}
          </p>
          
          {* ========================================
            SECTION 4 : DEMANDE D'AIDE (NOUVELLE)
            ======================================== *}
          <h4 style="margin-top: 20px;">{'help_section_title'|@translate}</h4>
          <div class="ca-help-links">
            <p style="margin-bottom: 15px; color: #666;">{'help_section_description'|@translate}</p>
            <ul class="ca-debug-list" style="list-style: none; padding-left: 0;">
              <li style="margin-bottom: 10px;">
                <a href="https://github.com/Gotcha26/centralAdmin/wiki" target="_blank" style="color: #3498db; text-decoration: none; font-weight: 600;">
                  📚 {'help_link_wiki'|@translate}
                </a>
              </li>
              <li style="margin-bottom: 10px;">
                <a href="https://github.com/Gotcha26/centralAdmin/discussions" target="_blank" style="color: #3498db; text-decoration: none; font-weight: 600;">
                  💬 {'help_link_forum'|@translate}
                </a>
              </li>
              <li style="margin-bottom: 10px;">
                <a href="https://github.com/Gotcha26/centralAdmin/issues" target="_blank" style="color: #3498db; text-decoration: none; font-weight: 600;">
                  🐛 {'help_link_issues'|@translate}
                </a>
              </li>
              <li style="margin-bottom: 10px;">
                <a href="https://github.com/Gotcha26/centralAdmin/blob/main/docs/TECHNICAL-DOCUMENTATION.md" target="_blank" style="color: #3498db; text-decoration: none; font-weight: 600;">
                  📖 {'help_link_documentation'|@translate}
                </a>
              </li>
            </ul>
          </div>
          
        </div>
      </div>
    </div>

    {* Lien crédits *}
    <div style="text-align: right; margin-bottom: 10px; padding-right: 5px;">
      <a href="#" id="ca-credits-link" style="color: #999; font-size: 13px; text-decoration: none;">
        {'credits'|@translate} : Gotcha
      </a>
    </div>

    <div class="ca-actions">
      <button type="submit" name="save" class="ca-btn ca-btn-primary">
        <span class="ca-icon">💾</span>
        {'save'|@translate}
      </button>
      <button type="submit" name="reset" class="ca-btn ca-btn-secondary">
        <span class="ca-icon">♻</span>
        {'reset'|@translate}
      </button>
    </div>
  </form>
  
</div>

{* === JAVASCRIPT - Ordre d'exécution important === *}

{* 1. Core - Détection thème (doit être en premier) [OBSOLETE sur DOM, PHP était la solution] *}

{* 2. Modules - Debug (avant form pour être disponible) *}
<script src="{$CA_DEBUG_JS}"></script>

{* 3. Form - Contrôles et couleurs *}
<script src="{$CA_FORM_CONTROLS_JS}"></script>
<script src="{$CA_FORM_COLORS_JS}"></script>
<script src="{$CA_FORM_PREVIEW_JS}"></script>

{* 4. Modules - Modal *}
<script src="{$CA_MODAL_JS}"></script>

{* 5. Core - Initialisation (en dernier pour coordonner tout) *}
<script src="{$CA_INIT_JS}"></script>