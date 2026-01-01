{* ================================================
   SECTION TOOLTIPS UNIFIÉE - CLEAR & DARK
   Affichage côte à côte des deux thèmes
   ================================================ *}

<div class="ca-section" data-section="tooltips-unified">
  <div class="ca-section-header">
    <h3 class="ca-section-title">
      <span class="ca-icon">💬</span>
      {'central_admin_messages_colors'|@translate}
    </h3>
    <button type="button" class="ca-toggle" aria-expanded="false">
      <span class="ca-chevron">▼</span>
    </button>
  </div>
  
  <div class="ca-section-content" style="display: none;">
    
    {* Info thème actif *}
    <div class="ca-theme-info">
      <p>{'active_theme_info'|@translate} <strong class="ca-theme-badge ca-theme-badge-{$current_scheme}">{$current_scheme|upper}</strong></p>
      <p class="ca-theme-note">{'theme_preview_note'|@translate}</p>
    </div>

    {* PARAMÈTRE COMMUN - fade_start centré en haut *}
    <div class="ca-common-param">
      <div class="ca-field">
        <div class="ca-field-header">
          <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
            <span class="ca-lock-icon">🔓</span>
          </button>
          <label class="ca-label">
            {'fade_start'|@translate}
            <span class="ca-help-container">
              <button type="button" class="ca-help">ⓘ</button>
              <span class="help-tooltip">{'fade_start_tp'|@translate}</span>
            </span>
          </label>
        </div>
        <div class="ca-field-controls">
          <input type="range" 
                 class="ca-slider"
                 id="fade_start_range"
                 name="layout[fade_start]"
                 min="800" max="1600" step="25"
                 value="{$centralAdmin.layout.fade_start}"
                 data-output="fade_start_value">
          <div class="ca-value-group">
            <input type="number" 
                   class="ca-input-number"
                   id="fade_start_value"
                   min="800" max="1600" step="25"
                   value="{$centralAdmin.layout.fade_start}">
            <span class="ca-unit">px</span>
          </div>
        </div>
      </div>
    </div>

    {* Container grille 2 colonnes *}
    <div class="ca-colors-grid">
      
      {* ========================================
         COLONNE GAUCHE - THÈME CLAIR
         ======================================== *}
      <div class="ca-theme-column ca-theme-clear {if $current_scheme == 'clear'}ca-theme-active{/if}">
        
        {* En-tête colonne *}
        <div class="ca-theme-column-header">
          <span class="ca-icon">☀️</span>
          <h4>{'theme_clear_title'|@translate}</h4>
          {if $current_scheme == 'clear'}
            <span class="ca-active-badge">{'active'|@translate}</span>
          {/if}
        </div>

        {* Couleurs tooltips Clear *}

        {* infos_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'infos_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'infos_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="infos_main_color_clear_picker"
                    value="{$centralAdmin.colors.clear.infos_main_color}"
                    {if $current_scheme != 'clear'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="infos_main_color_clear_text"
                    name="colors[clear][infos_main_color]"
                    value="{$centralAdmin.colors.clear.infos_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'clear'}disabled{/if}>
            </div>
          </div>
        </div>

        {* warning_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'warning_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'warning_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="warning_main_color_clear_picker"
                    value="{$centralAdmin.colors.clear.warning_main_color}"
                    {if $current_scheme != 'clear'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="warning_main_color_clear_text"
                    name="colors[clear][warning_main_color]"
                    value="{$centralAdmin.colors.clear.warning_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'clear'}disabled{/if}>
            </div>
          </div>
        </div>

        {* messages_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'messages_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'messages_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="messages_main_color_clear_picker"
                    value="{$centralAdmin.colors.clear.messages_main_color}"
                    {if $current_scheme != 'clear'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="messages_main_color_clear_text"
                    name="colors[clear][messages_main_color]"
                    value="{$centralAdmin.colors.clear.messages_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'clear'}disabled{/if}>
            </div>
          </div>
        </div>

        {* error_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'error_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'error_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="error_main_color_clear_picker"
                    value="{$centralAdmin.colors.clear.error_main_color}"
                    {if $current_scheme != 'clear'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="error_main_color_clear_text"
                    name="colors[clear][error_main_color]"
                    value="{$centralAdmin.colors.clear.error_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'clear'}disabled{/if}>
            </div>
          </div>
        </div>

      </div>  {* ← FIN COLONNE CLEAR *}

      {* ========================================
         COLONNE DROITE - THÈME SOMBRE
         ======================================== *}
      <div class="ca-theme-column ca-theme-dark {if $current_scheme == 'dark'}ca-theme-active{/if}">
        
        {* En-tête colonne *}
        <div class="ca-theme-column-header">
          <span class="ca-icon">🌙</span>
          <h4>{'theme_dark_title'|@translate}</h4>
          {if $current_scheme == 'dark'}
            <span class="ca-active-badge">{'active'|@translate}</span>
          {/if}
        </div>

        {* Couleurs tooltips Dark *}

        {* infos_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'infos_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'infos_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="infos_main_color_dark_picker"
                    value="{$centralAdmin.colors.dark.infos_main_color}"
                    {if $current_scheme != 'dark'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="infos_main_color_dark_text"
                    name="colors[dark][infos_main_color]"
                    value="{$centralAdmin.colors.dark.infos_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'dark'}disabled{/if}>
            </div>
          </div>
        </div>

        {* warning_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'warning_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'warning_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="warning_main_color_dark_picker"
                    value="{$centralAdmin.colors.dark.warning_main_color}"
                    {if $current_scheme != 'dark'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="warning_main_color_dark_text"
                    name="colors[dark][warning_main_color]"
                    value="{$centralAdmin.colors.dark.warning_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'dark'}disabled{/if}>
            </div>
          </div>
        </div>

        {* messages_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'messages_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'messages_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="messages_main_color_dark_picker"
                    value="{$centralAdmin.colors.dark.messages_main_color}"
                    {if $current_scheme != 'dark'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="messages_main_color_dark_text"
                    name="colors[dark][messages_main_color]"
                    value="{$centralAdmin.colors.dark.messages_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'dark'}disabled{/if}>
            </div>
          </div>
        </div>

        {* error_main_color *}
        <div class="ca-field">
          <div class="ca-field-header">
            <button type="button" class="ca-lock" data-locked="false" title="{'central_admin_unlocked'|@translate}">
              <span class="ca-lock-icon">🔓</span>
            </button>
            <label class="ca-label">
              {'error_main_color'|@translate}
              <span class="ca-help-container">
                <button type="button" class="ca-help">ⓘ</button>
                <span class="help-tooltip">{'error_main_color_tp'|@translate}</span>
              </span>
            </label>
          </div>
          <div class="ca-field-controls ca-field-controls-color">
            <div class="ca-color-picker-wrapper">
              <input type="color" 
                    class="ca-color-picker"
                    id="error_main_color_dark_picker"
                    value="{$centralAdmin.colors.dark.error_main_color}"
                    {if $current_scheme != 'dark'}disabled{/if}>
              <input type="text" 
                    class="ca-color-input"
                    id="error_main_color_dark_text"
                    name="colors[dark][error_main_color]"
                    value="{$centralAdmin.colors.dark.error_main_color}"
                    pattern="^#[0-9A-Fa-f]{literal}{{/literal}6{literal}}{/literal}$"
                    maxlength="7"
                    {if $current_scheme != 'dark'}disabled{/if}>
            </div>
          </div>
        </div>

      </div>  {* ← FIN COLONNE DARK *}

    </div>  {* ← FIN ca-colors-grid *}
  </div>  {* ← FIN ca-section-content *}
</div>  {* ← FIN ca-section *}