<?php
/**
 * CentralAdmin - Générateur CSS Dynamique
 * 
 * Génère les variables CSS à injecter dans le template
 * 
 * @package CentralAdmin
 * @version 3.0.0
 * @author Gotcha
 */

defined('PHPWG_ROOT_PATH') or die('Hacking attempt!');

class CA_CSSGenerator {
    
    /**
     * @var string Préfixe des variables CSS
     */
    private $prefix = '--ca-';
    
    /**
     * @var string Indentation pour le CSS généré
     */
    private $indent = '  ';
    
    /**
     * Génère le CSS complet pour un schéma donné
     * 
     * @param array $config Configuration complète
     * @param string $scheme Schéma actif ('clear' ou 'dark')
     * @return string CSS généré
     */
    public function generate($config, $scheme = 'clear') {
        $css = ":root {\n";
        $css .= $this->generateLayout($config['layout'] ?? array());
        $css .= $this->generateSchemeColors($config, $scheme);
        $css .= "}\n";
        
        return $css;
    }
    
    /**
     * Génère les variables CSS pour le layout
     * 
     * @param array $layout Configuration layout
     * @return string CSS généré
     */
    private function generateLayout($layout) {
        $css = "\n" . $this->indent . "/* Layout */\n";
        
        foreach ($layout as $key => $value) {
            // Traitement spécial pour hide_quick_sync
            if ($key === 'hide_quick_sync') {
                $displayValue = ($value === '1') ? 'none' : 'block';
                $css .= $this->indent . $this->prefix . 'layout-hide-quick-sync: ' . $displayValue . ";\n";
                continue;
            }
            
            // Autres valeurs : ajouter 'px'
            $varName = $this->prefix . 'layout-' . str_replace('_', '-', $key);
            $css .= $this->indent . $varName . ': ' . (int)$value . "px;\n";
        }
        
        return $css;
    }
        
    /**
     * Génère les variables CSS pour les couleurs du schéma actif
     * 
     * @param array $config Configuration complète
     * @param string $scheme Schéma actif
     * @return string CSS généré
     */
    private function generateSchemeColors($config, $scheme) {
        $css = "\n" . $this->indent . "/* Couleurs schéma " . $scheme . " */\n";
        
        // Fusionner les couleurs de base avec les modifications utilisateur
        $baseColors = $config['colors'][$scheme] ?? array();
        $userModifications = $config['user_modifications'][$scheme] ?? array();
        $mergedColors = array_merge($baseColors, $userModifications);
        
        foreach ($mergedColors as $key => $value) {
            $varName = $this->prefix . 'color-' . str_replace('_', '-', $key);
            $css .= $this->indent . $varName . ': ' . $this->sanitizeColor($value) . ";\n";
        }
        
        return $css;
    }
    
    /**
     * Génère uniquement les variables (pour prévisualisation JS)
     * 
     * @param array $layout Configuration layout
     * @param array $colors Configuration couleurs
     * @return string CSS variables uniquement
     */
    public function generateVariables($layout, $colors) {
        $css = '';
        
        // Layout
        foreach ($layout as $key => $value) {
            if ($key === 'hide_quick_sync') {
                $displayValue = ($value === '1') ? 'none' : 'block';
                $css .= $this->prefix . 'layout-hide-quick-sync: ' . $displayValue . ";\n";
            } else {
                $varName = $this->prefix . 'layout-' . str_replace('_', '-', $key);
                $css .= $varName . ': ' . (int)$value . "px;\n";
            }
        }
        
        // Couleurs
        foreach ($colors as $key => $value) {
            $varName = $this->prefix . 'color-' . str_replace('_', '-', $key);
            $css .= $varName . ': ' . $this->sanitizeColor($value) . ";\n";
        }
        
        return $css;
    }
    
    /**
     * Injecte le CSS dans le template
     * 
     * @param object $template Instance du template Smarty
     * @param string|array $css CSS à injecter
     * @param string $id ID du tag <style>
     */
    public function injectInTemplate($template, $css, $id = 'central-admin-vars') {

        // Sécurité : Piwigo ne sait gérer que des strings à ce stade
        if (is_array($css)) {
            $buffer = '';

            foreach ($css as $name => $value) {
                // Normalisation minimale
                if (is_scalar($value)) {
                    $buffer .= $this->indent . $this->prefix . $name . ': ' . $value . ";\n";
                }
            }

            $css = ":root {\n" . $buffer . "}\n";
        }

        // Sécurité ultime
        if (!is_string($css) || $css === '') {
            return;
        }

        $template->append('head_elements', 
            '<style id="' . htmlspecialchars($id, ENT_QUOTES) . '">' . $css . '</style>'
        );
    }
    
    /**
     * Injecte un fichier CSS dans le template
     * 
     * @param object $template Instance du template Smarty
     * @param string $url URL du fichier CSS
     * @param string $id ID du tag <link>
     */
    public function injectCSSFile($template, $url, $id = null)
    {
        // 🔥 TRACE TEMPORAIRE (tu peux la garder pour debug)
        error_log('[CA][CSS] injectCSSFile(): type(url) = ' . gettype($url));
        if (is_array($url)) {
            error_log('[CA][CSS] URL ARRAY FOUND ↓↓↓');
            error_log(print_r($url, true));
            return; // ⛔ on n’injecte PAS
        }

        if (!is_string($url) || $url === '') {
            return;
        }

        $idAttr = $id ? ' id="' . htmlspecialchars($id, ENT_QUOTES) . '"' : '';

        $template->append(
            'head_elements',
            '<link rel="stylesheet" href="' . htmlspecialchars($url, ENT_QUOTES) . '"' . $idAttr . '>'
        );
    }
    
    /**
     * Sanitise une valeur de couleur hexadécimale
     * 
     * @param string $color Couleur à sanitiser
     * @return string Couleur sanitisée
     */
    private function sanitizeColor($color) {
        // Validation basique : doit être au format #XXXXXX
        if (!preg_match('/^#[0-9A-Fa-f]{6}$/', $color)) {
            trigger_error(
                'CentralAdmin: Couleur invalide détectée: ' . $color,
                E_USER_NOTICE
            );
            return '#000000'; // Fallback
        }
        
        return strtoupper($color);
    }
    
    /**
     * Génère un fichier CSS statique (pour export/backup)
     * 
     * @param array $config Configuration complète
     * @param string $scheme Schéma actif
     * @param string $outputPath Chemin de sortie
     * @return bool Succès de l'écriture
     */
    public function exportToFile($config, $scheme, $outputPath) {
        $css  = "/* ========================================\n";
        $css .= " * CentralAdmin - Export Configuration\n";
        $css .= " * Généré le : " . date('Y-m-d H:i:s') . "\n";
        $css .= " * Schéma : " . $scheme . "\n";
        $css .= " * ======================================== */\n\n";
        $css .= $this->generate($config, $scheme);
        
        return file_put_contents($outputPath, $css) !== false;
    }
    
    /**
     * Convertit une variable CSS en tableau associatif
     * 
     * @param string $css CSS contenant des variables
     * @return array Variables extraites
     */
    public function parseVariables($css) {
        $variables = array();
        
        // Extraire toutes les variables CSS
        preg_match_all('/' . preg_quote($this->prefix) . '([a-z0-9-]+)\s*:\s*([^;]+);/i', $css, $matches);
        
        if (isset($matches[1]) && isset($matches[2])) {
            foreach ($matches[1] as $index => $varName) {
                $variables[$varName] = trim($matches[2][$index]);
            }
        }
        
        return $variables;
    }
    
    /**
     * Génère un CSS minifié
     * 
     * @param array $config Configuration complète
     * @param string $scheme Schéma actif
     * @return string CSS minifié
     */
    public function generateMinified($config, $scheme = 'clear') {
        $css = $this->generate($config, $scheme);
        
        // Supprimer les commentaires
        $css = preg_replace('/\/\*.*?\*\//s', '', $css);
        
        // Supprimer les espaces superflus
        $css = preg_replace('/\s+/', ' ', $css);
        
        // Supprimer les espaces autour des accolades et deux-points
        $css = str_replace(array(' {', '{ ', ' }', ': ', '; '), array('{', '{', '}', ':', ';'), $css);
        
        return trim($css);
    }
    
    /**
     * Retourne les informations de débogage
     * 
     * @return array Informations de débogage
     */
    public function exportDebugInfo() {
        return array(
            'prefix' => $this->prefix,
            'indent' => $this->indent,
            'methods_available' => get_class_methods($this),
        );
    }
}