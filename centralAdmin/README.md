# centralAdmin — Free Edition

A Piwigo plugin that **centers the admin panel** on a configurable column width and offers **full color control** by theme (light/dark), without modifying the Piwigo core.

On large screens (27" 4K, ultrawide…), the Piwigo admin stretches across the full width: your eyes travel large distances to find buttons and information. centralAdmin constrains the display to a maximum width (1600 px by default) while preserving 100% of functionality.

This is the **Free Edition**, freely distributed under GPL v2+.

---

## 🖥️ Screenshots

<!-- Screenshots on GitHub CDN: drag and drop the image in an issue at
     https://github.com/Gotcha26/piwigo-plugin-centralAdmin/issues , copy the generated
     user-images.githubusercontent.com URL and paste it below.
     (Old postimg URLs reusable from git history of the main README.) -->

| Before | After |
|---|---|
| ![Before](REPLACE_URL_BEFORE) | ![After](REPLACE_URL_AFTER) |

![Administration](REPLACE_URL_ADMIN)

---

## 🎁 Free & Pro Editions

| Feature | **Free** | **Pro** |
|---|:---:|:---:|
| Configurable column layout (centered, width) | ✅ | ✅ |
| Light/dark theme detection | ✅ | ✅ |
| Theme-adaptive color picker | ✅ | ✅ |
| Custom CSS injection | ✅ | ✅ |
| Batch Manager extensions (BM01-BM09) | — | ✅ |
| Modules support (ca-patcher, metaog, skyline) | — | ✅ |
| Self-update from server | — | ✅ |
| Priority support | — | ✅ |

👉 **[Get Pro License](https://pro.julien-moreau.fr/products/centraladmin/)** — Support development, unlock advanced features.

---

## ✨ Why centralAdmin?

- **Ergonomics**: centered interface, less eye strain on large screens, faster navigation.
- **Customization**: fully adjustable colors per theme (light/dark), preserved separately.
- **Risk-free**: CSS only, no modification to Piwigo core, can be disabled at any time.
- **Compatibility**: Piwigo 14+, Clear & Roma (Dark) themes, modern browsers.

---

## Installation

1. Upload this ZIP via **Plugins → Manage plugins → Install via ZIP**.
2. Activate the plugin from **Plugins → Manage plugins**.
3. Configure via **Plugins → centralAdmin**.

---

## Pro Edition only

- Batch Manager extensions: image rotation, batch rename, descriptions, prefilters, "added by" management, fsrmp, thumbnail size, posted dates
- Modules: ca-patcher (code editor), metaog (OpenGraph), skyline (footer)
- Automatic updates (one-click from the licensing server)

To unlock the Pro Edition: <https://pro.julien-moreau.fr/products/centraladmin/>

---

## Repository & support

- Free Edition (public): <https://github.com/Gotcha26/piwigo-plugin-centralAdmin>
- Bugs / requests: <https://github.com/Gotcha26/piwigo-plugin-centralAdmin/issues>
- Documentation (wiki): <https://github.com/Gotcha26/piwigo-plugin-centralAdmin/wiki>

## License

GPL v2+ — © Julien Moreau (Gotcha)

<!-- jm-conformite-lot-commun -->

---

## 🔒 Network & privacy

This extension uses a **shared components bundle** — display libraries and fonts, all free and open source — which is not included in this archive.

- **On activation and on every update**, the extension downloads it from `https://pro.julien-moreau.fr/commons/`, verifies its cryptographic signature (Ed25519) and its SHA-256 digest, then installs it into `local/jm-commons/` in your gallery — **outside the extension's own folder**, because it is shared by all our extensions and is therefore downloaded only once.
- **No data is submitted** during that download: the request is anonymous, with no identifier, no domain name and no parameter. As with any download, our server sees your gallery's **public IP address** and the time of the request.
- **That bundle is requested at those two moments only**: no periodic check concerns it, and downloading it feeds no audience measurement.
- **As long as no licence is active**, the purchase screen shown in the admin panel occasionally queries `pro.julien-moreau.fr`: at most once every 6 hours for its content, and — to detect that the order completed — at most once an hour in the background, or as often as every 20 seconds for the 10 minutes following a click on "Buy". What is sent: the extension's name and, in that second case, the gallery's domain name.
- **Without Internet access** the extension still works: missing components fall back to a simplified version. The bundle can also be installed by hand — see the FAQ: <https://pro.julien-moreau.fr/legal/faq.php>
