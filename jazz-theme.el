;;; jazz-theme.el --- A warm color theme for Emacs 24+.

;; Copyright (C) 2012-2014 Roman Parykin, Bozhidar Batsov

;; Author: Roman Parykin <donderom@ymail.com>
;; URL: https://github.com/donderom/jazz-theme
;; Version: 1.0

;; Based on zenburn-theme.el
;; Author: Bozhidar Batsov <bozhidar.batsov@gmail.com>
;; URL: http://github.com/bbatsov/zenburn-emacs
;; Version: 1.5

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;;   Drop the theme in a folder that is on `custom-theme-load-path'
;; and enjoy
;;
;; or
;;
;; (load-file "path/to/jazz-theme.el")
;; (load-theme 'jazz t)
;;
;; Don't forget that the theme requires Emacs 24+.
;;
;; The more information on the project page at https://github.com/donderom/jazz-theme
;;
;;; Credits
;;
;; Jani Nurminen (zenburn theme for vim)
;; Bozhidar Batsov (zenburn theme port for Emacs),
;; Christian Brassat <crshd@mail.com> (jazz theme initial colors inspiration)
;;
;;; Code:
(deftheme jazz "The Jazz color theme")

(let ((class '((class color) (min-colors 89)))
      ;; Jazz palette
      ;; colors with +x are lighter, colors with -x are darker
      (jazz-fg         "#c6a57b")

      (jazz-bg+3       "#606060")
      (jazz-bg+2       "#505050")
      (jazz-bg+1       "#202020")
      (jazz-bg         "#151515")
      (jazz-bg-1       "#101010")

      (jazz-bg-blue    "#272A36")
      (jazz-bg-green   "#121c16")
      (jazz-bg-green+1 "#253529")
      (jazz-bg-red     "#3e2022")

      (jazz-red+1      "#a43836")
      (jazz-red        "#953331")
      (jazz-red-1      "#862e2c")

      (jazz-orange+1   "#c36a44")
      (jazz-orange     "#ba5b34")
      (jazz-orange-1   "#a54500")

      (jazz-yellow+1   "#96a62d")
      (jazz-yellow     "#909737")
      (jazz-yellow-1   "#828932")

      (jazz-green+1    "#7e9960")
      (jazz-green      "#5e7531")
      (jazz-green-1    "#546a29")

      (jazz-cyan+1     "#3a737c")
      (jazz-cyan       "#34676f")
      (jazz-cyan-1     "#2e5b62")

      (jazz-blue+1     "#5c737c")
      (jazz-blue       "#385e6b")
      (jazz-blue-1     "#31535e")

      (jazz-violet+1   "#6c6c8c")
      (jazz-violet     "#5e5e7a")
      (jazz-violet-1   "#515169")

      (jazz-magenta+1  "#8d3b68")
      (jazz-magenta    "#7f355e")
      (jazz-magenta-1  "#712f54"))

  (custom-theme-set-faces
   'jazz
   ;;; Built-in
   ;;; basic coloring
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,jazz-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,jazz-yellow-1 :underline t :weight normal))))
   `(default ((,class (:foreground ,jazz-fg :background ,jazz-bg))))
   `(cursor ((,class (:foreground ,jazz-fg :background ,jazz-fg))))
   `(escape-glyph ((,class (:foreground ,jazz-fg :background ,jazz-red))))
   `(escape-glyph-face ((,class (:foreground ,jazz-fg :background ,jazz-red))))
   `(homoglyph ((,class (:foreground ,jazz-fg :background ,jazz-red))))
   `(nobreak-hyphen ((,class (:foreground ,jazz-fg :background ,jazz-red))))
   `(fringe ((,class (:foreground ,jazz-bg+2 :background ,jazz-bg))))
   `(header-line ((,class (:foreground ,jazz-yellow
                                       :background ,jazz-bg-1
                                       :box (:line-width -1 :color ,jazz-bg :style released-button)))))
   `(highlight ((,class (:background ,jazz-bg+1))))
   `(error ((,class (:foreground ,jazz-fg :background ,jazz-red))))
   `(success ((,class (:foreground ,jazz-green))))
   `(warning ((,class (:foreground ,jazz-orange))))
   `(shadow ((,class (:foreground ,jazz-cyan))))

   ;; bookmark
   `(bookmark-face ((,class (:foreground ,jazz-orange))))
   `(bookmark-menu-bookmark ((,class (:weight normal))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,jazz-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,jazz-green))))
   `(compilation-error-face ((,class (:foreground ,jazz-red :weight bold :underline t))))
   `(compilation-error ((,class (:foreground ,jazz-red :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,jazz-fg))))
   `(compilation-info-face ((,class (:foreground ,jazz-blue))))
   `(compilation-info ((,class (:foreground ,jazz-blue))))
   `(compilation-leave-directory-face ((,class (:foreground ,jazz-green))))
   `(compilation-line-face ((,class (:foreground ,jazz-yellow))))
   `(compilation-line-number ((,class (:foreground ,jazz-yellow))))
   `(compilation-message-face ((,class (:foreground ,jazz-blue))))
   `(compilation-warning-face ((,class (:foreground ,jazz-orange :weight bold :underline t))))
   `(compilation-warning ((,class (:foreground ,jazz-orange :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,jazz-fg))))
   `(grep-error-face ((,class (:foreground ,jazz-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,jazz-blue))))
   `(grep-match-face ((,class (:foreground ,jazz-orange :weight bold))))
   `(match ((,class (:background ,jazz-bg-1 :foreground ,jazz-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,jazz-yellow :background ,jazz-bg-1))))
   `(isearch-fail ((,class (:foreground ,jazz-fg :background ,jazz-red-1))))
   `(lazy-highlight ((,class (:foreground ,jazz-yellow :background ,jazz-bg+2))))

   `(menu ((,class (:foreground ,jazz-fg :background ,jazz-bg))))
   `(minibuffer-prompt ((,class (:foreground ,jazz-blue))))
   `(mode-line
     ((,class (:foreground ,jazz-bg+3
                           :background ,jazz-bg+1
                           :box (:line-width 5 :color ,jazz-bg+1)))))
   `(mode-line-buffer-id ((,class (:foreground ,jazz-yellow))))
   `(mode-line-highlight ((,class (:inverse-video t))))
   `(mode-line-inactive
     ((,class (:foreground ,jazz-bg+2
                        :background ,jazz-bg-1
                        :box (:line-width 5 :color ,jazz-bg-1)))))

   `(region ((,class (:background ,jazz-fg :foreground ,jazz-blue))))
   `(secondary-selection ((,class (:background ,jazz-bg+2))))
   `(trailing-whitespace ((,class (:background ,jazz-red))))
   `(vertical-border ((,class (:foreground ,jazz-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,jazz-blue))))
   `(font-lock-comment-face ((,class (:foreground ,jazz-bg+2))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,jazz-bg+2))))
   `(font-lock-constant-face ((,class (:foreground ,jazz-magenta))))
   `(font-lock-doc-face ((,class (:foreground ,jazz-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,jazz-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,jazz-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,jazz-yellow))))
   `(font-lock-negation-char-face ((,class (:foreground ,jazz-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,jazz-blue))))
   `(font-lock-string-face ((,class (:foreground ,jazz-red))))
   `(font-lock-type-face ((,class (:foreground ,jazz-yellow))))
   `(font-lock-variable-name-face ((,class (:foreground ,jazz-orange))))
   `(font-lock-warning-face ((,class (:foreground ,jazz-yellow-1 :weight bold :underline t))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;; help
   `(help-key-binding ((,class (:foreground ,jazz-blue+1 :background ,jazz-bg :box nil))))

   ;; line-number-mode
   `(line-number ((,class (:foreground ,jazz-bg+2 :background ,jazz-bg-1))))
   `(line-number-current-line ((,class (:foreground ,jazz-blue :background ,jazz-bg-1))))

   ;;; Third-party (first level support)

   ;; all-the-icons
   ;; red
   `(all-the-icons-red ((,class (:foreground ,jazz-red))))
   `(all-the-icons-lred ((,class (:foreground ,jazz-red+1))))
   `(all-the-icons-dred ((,class (:foreground ,jazz-red-1))))
   `(all-the-icons-red-alt ((,class (:foreground ,jazz-red))))
   ;; green
   `(all-the-icons-green ((,class (:foreground ,jazz-green))))
   `(all-the-icons-lgreen ((,class (:foreground ,jazz-green+1))))
   `(all-the-icons-dgreen ((,class (:foreground ,jazz-green-1))))
   ;; yellow
   `(all-the-icons-yellow ((,class (:foreground ,jazz-yellow))))
   `(all-the-icons-lyellow ((,class (:foreground ,jazz-yellow+1))))
   `(all-the-icons-dyellow ((,class (:foreground ,jazz-yellow-1))))
   ;; blue
   `(all-the-icons-blue ((,class (:foreground ,jazz-blue))))
   `(all-the-icons-blue-alt ((,class (:foreground ,jazz-blue))))
   `(all-the-icons-lblue ((,class (:foreground ,jazz-blue+1))))
   `(all-the-icons-dblue ((,class (:foreground ,jazz-blue-1))))
   ;; maroon
   `(all-the-icons-maroon ((,class (:foreground ,jazz-red-1))))
   `(all-the-icons-lmaroon ((,class (:foreground ,jazz-red))))
   `(all-the-icons-dmaroon ((,class (:foreground ,jazz-red-1))))
   ;; purple
   `(all-the-icons-purple ((,class (:foreground ,jazz-violet))))
   `(all-the-icons-purple-alt ((,class (:foreground ,jazz-magenta))))
   `(all-the-icons-lpurple ((,class (:foreground ,jazz-violet+1))))
   `(all-the-icons-dpurple ((,class (:foreground ,jazz-violet-1))))
   ;; orange
   `(all-the-icons-orange ((,class (:foreground ,jazz-orange))))
   `(all-the-icons-lorange ((,class (:foreground ,jazz-orange+1))))
   `(all-the-icons-dorange ((,class (:foreground ,jazz-orange-1))))
   ;; cyan
   `(all-the-icons-cyan ((,class (:foreground ,jazz-cyan))))
   `(all-the-icons-cyan-alt ((,class (:foreground ,jazz-cyan))))
   `(all-the-icons-lcyan ((,class (:foreground ,jazz-cyan+1))))
   `(all-the-icons-dcyan ((,class (:foreground ,jazz-cyan-1))))
   ;; pink
   `(all-the-icons-pink ((,class (:foreground ,jazz-magenta))))
   `(all-the-icons-lpink ((,class (:foreground ,jazz-magenta+1))))
   `(all-the-icons-dpink ((,class (:foreground ,jazz-magenta-1))))
   ;; silver
   `(all-the-icons-silver ((,class (:foreground ,jazz-bg+2))))
   `(all-the-icons-lsilver ((,class (:foreground ,jazz-bg+3))))
   `(all-the-icons-dsilver ((,class (:foreground ,jazz-bg+2))))

   ;; company
   `(company-echo-common ((,class (:foreground ,jazz-red))))
   `(company-preview ((,class (:background ,jazz-blue :foreground ,jazz-fg))))
   `(company-preview-common ((,class (:inherit company-preview))))
   `(company-preview-search ((,class (:inherit company-preview :background ,jazz-blue+1))))
   `(company-scrollbar-fg ((,class (:background ,jazz-bg+1))))
   `(company-scrollbar-bg ((,class (:background ,jazz-bg+2))))
   `(company-template-field ((,class (:background ,jazz-yellow :foreground ,jazz-bg))))
   `(company-tooltip ((,class (:background ,jazz-bg+1 :foreground ,jazz-fg))))
   `(company-tooltip-annotation ((,class (:background nil :foreground ,jazz-yellow))))
   `(company-tooltip-common ((,class (:foreground ,jazz-bg+3 :underline t))))
   `(company-tooltip-common-selection ((,class (:background ,jazz-blue-1 :foreground ,jazz-fg :underline t))))
   `(company-tooltip-selection ((,class (:background ,jazz-blue-1 :foreground ,jazz-fg))))

   ;; dashboard
   `(dashboard-items-face ((,class (:weight normal))))
   `(dashboard-no-items-face ((,class (:weight normal))))
   `(dashboard-text-banner ((,class :inherit font-lock-builtin-face)))

   ;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-red)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,jazz-red :weight bold :underline t))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-green)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,jazz-red :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-orange)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,jazz-orange :weight bold :underline t))))
   `(flycheck-fringe-error ((,class (:foreground ,jazz-red :background ,jazz-bg))))
   `(flycheck-fringe-info ((,class (:foreground ,jazz-green :background ,jazz-bg))))
   `(flycheck-fringe-warning ((,class (:foreground ,jazz-orange :background ,jazz-bg))))
   `(flycheck-error-list-column-number ((,class (:foreground ,jazz-cyan :background ,jazz-bg))))
   `(flycheck-error-list-line-number ((,class (:foreground ,jazz-cyan :background ,jazz-bg))))
   `(flycheck-error-list-filename ((,class (:foreground ,jazz-fg :background ,jazz-bg))))
   `(flycheck-error-list-highlight ((,class (:foreground ,jazz-fg :background ,jazz-bg))))

   ;; hydra
   `(hydra-face-red ((,class (:foreground ,jazz-red :bold t))))
   `(hydra-face-blue ((,class (:foreground ,jazz-blue :bold t))))
   `(hydra-face-amaranth ((,class (:foreground ,jazz-red+1 :bold t))))
   `(hydra-face-pink ((,class (:foreground ,jazz-magenta+1 :bold t))))
   `(hydra-face-teal ((,class (:foreground ,jazz-cyan+1 :bold t))))

   ;; ivy-mode
   `(ivy-confirm-face ((,class (:foreground ,jazz-green))))
   `(ivy-current-match ((,class (:foreground ,jazz-bg :background ,jazz-fg))))
   `(ivy-cursor ((,class (:foreground ,jazz-bg :background ,jazz-fg))))
   `(ivy-match-required-face ((,class (:foreground ,jazz-red))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,jazz-bg :background ,jazz-bg+3))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,jazz-fg :background ,jazz-blue))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,jazz-fg :background ,jazz-magenta))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,jazz-fg :background ,jazz-bg+2))))
   `(ivy-remote ((,class (:foreground ,jazz-magenta))))

   ;; lsp-mode
   `(lsp-face-semhl-deprecated ((,class (:underline (:color ,jazz-yellow :style wave)))))
   `(lsp-flycheck-info-unnecessary-face ((,class (:foreground ,jazz-bg+3
                                                              :underline (:color ,jazz-green :style wave)))))
   `(lsp-headerline-breadcrumb-deprecated-face ((,class (:foreground ,jazz-yellow :strike-through t))))
   `(lsp-headerline-breadcrumb-path-face ((,class :inherit font-lock-keyword-face)))
   `(lsp-headerline-breadcrumb-path-error-face ((,class (:inherit lsp-headerline-breadcrumb-path-face
                                                                  :underline (:color ,jazz-red :style wave)))))
   `(lsp-headerline-breadcrumb-path-hint-face ((,class (:inherit lsp-headerline-breadcrumb-path-face
                                                                 :underline (:color ,jazz-green :style wave)))))
   `(lsp-headerline-breadcrumb-path-info-face ((,class (:inherit lsp-headerline-breadcrumb-path-face
                                                                 :underline (:color ,jazz-green :style wave)))))
   `(lsp-headerline-breadcrumb-path-warning-face ((,class (:inherit lsp-headerline-breadcrumb-path-face
                                                                    :underline (:color ,jazz-orange :style wave)))))
   `(lsp-headerline-breadcrumb-symbols-face ((,class (:foreground ,jazz-violet))))
   `(lsp-headerline-breadcrumb-symbols-error-face ((,class (:inherit lsp-headerline-breadcrumb-symbols-face
                                                                     :underline (:color ,jazz-red :style wave)))))
   `(lsp-headerline-breadcrumb-symbols-hint-face ((,class (:inherit lsp-headerline-breadcrumb-symbols-face
                                                                    :underline (:color ,jazz-green :style wave)))))
   `(lsp-headerline-breadcrumb-symbols-info-face ((,class (:inherit lsp-headerline-breadcrumb-symbols-face
                                                                    :underline (:color ,jazz-green :style wave)))))
   `(lsp-headerline-breadcrumb-symbols-warning-face ((,class (:inherit lsp-headerline-breadcrumb-symbols-face
                                                                       :underline (:color ,jazz-orange :style wave)))))

   ;; lsp-ui
   `(lsp-ui-doc-header ((,class (:foreground ,jazz-cyan :background ,jazz-bg+1))))
   `(lsp-ui-peek-filename ((,class (:foreground ,jazz-blue))))
   `(lsp-ui-peek-header ((,class (:foreground ,jazz-bg :background ,jazz-bg+3))))
   `(lsp-ui-peek-highlight ((,class (:foreground ,jazz-bg+1
                                                 :distant-foreground ,jazz-fg
                                                 :background ,jazz-fg
                                                 :box (:line-width -1 :color ,jazz-fg)))))
   `(lsp-ui-peek-line-number ((,class (:foreground ,jazz-bg+2))))
   `(lsp-ui-peek-list ((,class (:background ,jazz-bg+1))))
   `(lsp-ui-peek-peek ((,class (:background ,jazz-bg+1))))
   `(lsp-ui-peek-selection ((,class (:foreground ,jazz-bg+1 :background ,jazz-fg))))
   `(lsp-ui-sideline-code-action ((,class (:foreground ,jazz-cyan :background ,jazz-fg))))
   `(lsp-ui-sideline-current-symbol ((,class (:foreground ,jazz-fg :box (:line-width -1 :color ,jazz-fg)))))
   `(lsp-ui-sideline-symbol ((,class (:foreground ,jazz-bg+3 :box (:line-width -1 :color ,jazz-bg+3)))))

   ;; typit
   `(typit-correct-char ((,class (:foreground ,jazz-yellow))))
   `(typit-statistic ((,class (:foreground ,jazz-blue))))

   ;;; external

   ;; ace-jump
   `(ace-jump-face-background ((,class (:foreground ,jazz-bg+2))))
   `(ace-jump-face-foreground ((,class (:foreground ,jazz-yellow+1 :underline nil))))

   ;; anzu
   `(anzu-mode-line ((,class (:foreground ,jazz-orange :weigth bold))))
   `(anzu-replace-to ((,class :foreground ,jazz-orange)))

   ;; full-ack
   `(ack-separator ((,class (:foreground ,jazz-fg))))
   `(ack-file ((,class (:foreground ,jazz-blue))))
   `(ack-line ((,class (:foreground ,jazz-yellow))))
   `(ack-match ((,class (:foreground ,jazz-orange :background ,jazz-bg-1 :weigth bold))))

   ;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,jazz-yellow :weight bold ))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))

   ;; popup
   `(popup-summary-face ((,class (:background ,jazz-bg+3 :foreground ,jazz-bg+1))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,jazz-bg+1))))
   `(popup-scroll-bar-background-face ((,class (:background ,jazz-bg+2))))
   `(popup-menu-mouse-face ((,class (:background ,jazz-yellow+1 :foreground ,jazz-bg))))
   `(popup-tip-face ((,class (:background ,jazz-bg+3 :foreground ,jazz-bg))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,jazz-bg+3 :foreground "black"))))
   `(ac-selection-face ((,class (:background ,jazz-blue-1 :foreground ,jazz-fg))))
   `(popup-tip-face ((,class (:background ,jazz-yellow-1 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,jazz-blue-1))))
   `(popup-scroll-bar-background-face ((,class (:background ,jazz-bg-1))))
   `(popup-isearch-match ((,class (:background ,jazz-bg :foreground ,jazz-fg))))

   ;; cheatsheet
   `(cheatsheet-group-face ((,class (:foreground ,jazz-blue))))
   `(cheatsheet-key-face ((,class (:foreground ,jazz-yellow))))

   ;; diff
   `(diff-added ((,class (:foreground ,jazz-green+1))))
   `(diff-changed ((,class (:foreground ,jazz-yellow))))
   `(diff-file-header
     ((,class (:background ,jazz-bg+2 :foreground ,jazz-fg :bold t))))
   `(diff-header ((,class (:background ,jazz-bg+1))))
   `(diff-removed ((,class (:foreground ,jazz-red))))
   `(diff-refine-added ((,class (:background ,jazz-bg-green+1))))
   `(diff-refine-removed ((,class (:background ,jazz-red-1))))

   ;; diff-hl
   `(diff-hl-insert ((,class (:foreground ,jazz-green))))
   `(diff-hl-delete ((,class (:foreground ,jazz-red))))
   `(diff-hl-change ((,class (:foreground ,jazz-blue))))

   ;; ein
   `(ein:cell-input-area ((,class (:background ,jazz-bg+1))))

   ;; ert
   `(ert-test-result-expected ((,class (:foreground ,jazz-green+1 :background ,jazz-bg))))
   `(ert-test-result-unexpected ((,class (:foreground ,jazz-red :background ,jazz-bg))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,jazz-yellow))))
   `(eshell-ls-archive ((,class (:foreground ,jazz-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,jazz-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,jazz-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,jazz-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,jazz-yellow))))
   `(eshell-ls-symlink ((,class (:foreground ,jazz-cyan :weight bold))))

   ;; flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-red)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,jazz-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-orange)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,jazz-orange :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-blue)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,jazz-blue :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-yellow-1) :inherit unspecified))
      (t (:foreground ,jazz-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,jazz-red-1) :inherit unspecified))
      (t (:foreground ,jazz-red-1 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,jazz-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,jazz-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,jazz-yellow))))
   `(erc-keyword-face ((,class (:foreground ,jazz-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,jazz-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,jazz-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,jazz-green))))
   `(erc-pal-face ((,class (:foreground ,jazz-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,jazz-orange :background ,jazz-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,jazz-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-from))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((,class (:foreground ,jazz-orange))))
   `(gnus-summary-high-ancient ((,class (:foreground ,jazz-blue))))
   `(gnus-summary-high-read ((,class (:foreground ,jazz-green :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,jazz-orange :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,jazz-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,jazz-blue))))
   `(gnus-summary-low-read ((t (:foreground ,jazz-green))))
   `(gnus-summary-low-ticked ((,class (:foreground ,jazz-orange :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,jazz-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,jazz-blue))))
   `(gnus-summary-normal-read ((,class (:foreground ,jazz-green))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,jazz-orange :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,jazz-fg))))
   `(gnus-summary-selected ((,class (:foreground ,jazz-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,jazz-blue))))
   `(gnus-cite-10 ((,class (:foreground ,jazz-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,jazz-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,jazz-blue-1))))
   `(gnus-cite-3 ((,class (:foreground ,jazz-blue-1))))
   `(gnus-cite-4 ((,class (:foreground ,jazz-green+1))))
   `(gnus-cite-5 ((,class (:foreground ,jazz-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,jazz-green))))
   `(gnus-cite-7 ((,class (:foreground ,jazz-red))))
   `(gnus-cite-8 ((,class (:foreground ,jazz-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,jazz-red-1))))
   `(gnus-group-news-1-empty ((,class (:foreground ,jazz-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,jazz-green+1))))
   `(gnus-group-news-3-empty ((,class (:foreground ,jazz-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,jazz-blue-1))))
   `(gnus-group-news-5-empty ((,class (:foreground ,jazz-blue-1))))
   `(gnus-group-news-6-empty ((,class (:foreground ,jazz-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,jazz-bg+2))))
   `(gnus-signature ((,class (:foreground ,jazz-yellow))))
   `(gnus-x ((,class (:background ,jazz-fg :foreground ,jazz-bg))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,jazz-green
                           :background ,jazz-bg
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,jazz-yellow
                           :background ,jazz-bg-1
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,jazz-bg+1))))
   `(helm-selection-line ((,class (:background ,jazz-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,jazz-bg :background ,jazz-yellow-1))))
   `(helm-candidate-number ((,class (:foreground ,jazz-green+1 :background ,jazz-bg-1))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,jazz-bg-1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,jazz-yellow :weight normal))))
   `(ido-only-match ((,class (:foreground ,jazz-orange :weight normal))))
   `(ido-subdir ((,class (:foreground ,jazz-red))))

   ;; iedit
   `(iedit-occurrence ((,class (:foreground ,jazz-fg :background ,jazz-blue))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,jazz-orange))))
   `(js2-error-face ((,class (:foreground ,jazz-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,jazz-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,jazz-green+1))))
   `(js2-jsdoc-value-face ((,class (:foreground ,jazz-green+1))))
   `(js2-function-param-face ((,class (:foreground, jazz-green+1))))
   `(js2-external-variable-face ((,class (:foreground ,jazz-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,jazz-green+1))))
   `(jabber-roster-user-online ((,class (:foreground ,jazz-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,jazz-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,jazz-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,jazz-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,jazz-red+1))))
   `(jabber-activity-face((,class (:foreground ,jazz-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,jazz-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,jazz-bg+2 :background ,jazz-bg-1))))

   ;; magit
   `(magit-blame-highlight ((,class (:foreground ,jazz-bg :background ,jazz-blue+1))))
   `(magit-branch-local ((,class (:foreground ,jazz-blue+1))))
   `(magit-branch-current ((,class (:inherit magit-branch-local :box 1))))
   `(magit-branch-remote ((,class (:foreground ,jazz-green+1))))
   `(magit-branch-remote-head ((,class (:inherit magit-branch-remote :box 1))))
   `(magit-cherry-equivalent ((,class (:foreground ,jazz-magenta))))
   `(magit-cherry-unmatched ((,class (:foreground ,jazz-cyan))))
   `(magit-diff-added ((,class (:background ,jazz-bg-green :extend t))))
   `(magit-diff-added-highlight ((,class (:background ,jazz-bg-green :extend t))))
   `(magit-diff-context ((,class (:foreground ,jazz-fg :extend t))))
   `(magit-diff-context-highlight ((,class (:inherit magit-diff-context :background ,jazz-bg+1))))
   `(magit-diff-file-heading ((,class (:weight normal :extend t))))
   `(magit-diff-file-heading-highlight ((,class (:inherit magit-section-highlight))))
   `(magit-diff-file-heading-selection ((,class (:inherit region :extend t))))
   `(magit-diff-hunk-heading ((,class (:foreground ,jazz-bg+2 :background ,jazz-bg :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,jazz-bg+1 :extend t))))
   `(magit-diff-hunk-heading-selection ((,class (:inherit region :extend t))))
   `(magit-diff-our ((,class (:background ,jazz-bg-red :extend t))))
   `(magit-diff-our-highlight ((,class (:background ,jazz-bg-red :extend t))))
   `(magit-diff-removed ((,class (:background ,jazz-bg-red :extend t))))
   `(magit-diff-removed-highlight ((,class (:background ,jazz-bg-red :extend t))))
   `(magit-diff-their ((,class (:background ,jazz-bg-green :extend t))))
   `(magit-diff-their-highlight ((,class (:background ,jazz-bg-green :extend t))))
   `(magit-diffstat-added ((,class (:foreground ,jazz-green))))
   `(magit-diffstat-removed ((,class (:foreground ,jazz-red))))
   `(magit-log-author ((,class (:foreground ,jazz-blue))))
   `(magit-log-date ((,class (:foreground ,jazz-bg+3))))
   `(magit-log-graph ((,class (:foreground ,jazz-bg+3))))
   `(magit-process-ng ((,class (:inherit magit-section-heading :foreground ,jazz-red))))
   `(magit-process-ok ((,class (:inherit magit-section-heading :foreground ,jazz-green))))
   `(magit-reflog-amend ((,class (:foreground ,jazz-magenta))))
   `(magit-reflog-checkout ((,class (:foreground ,jazz-blue))))
   `(magit-reflog-cherry-pick ((,class (:foreground ,jazz-yellow))))
   `(magit-reflog-commit ((,class (:foreground ,jazz-yellow))))
   `(magit-reflog-merge ((,class (:foreground ,jazz-yellow))))
   `(magit-reflog-other ((,class (:foreground ,jazz-violet))))
   `(magit-reflog-rebase ((,class (:foreground ,jazz-magenta+1))))
   `(magit-reflog-remote ((,class (:foreground ,jazz-cyan))))
   `(magit-reflog-reset ((,class (:foreground ,jazz-red))))
   `(magit-section-heading ((,class (:weight normal :foreground ,jazz-yellow :extend t))))
   `(magit-section-highlight ((,class (:background ,jazz-bg+1 :extend t :weight normal))))
   `(magit-section-heading-selection ((,class (:inherit region :extend t))))

   ;; markdown
   `(markdown-header-face ((,class (:inherit variable-pitch))))
   `(markdown-header-face-1 ((,class (:height 1.8 :inherit markdown-header-face))))
   `(markdown-header-face-2 ((,class (:height 1.4 :inherit markdown-header-face))))
   `(markdown-header-face-3 ((,class (:height 1.2 :inherit markdown-header-face))))
   `(markdown-header-face-4 ((,class (:height 1.0 :inherit markdown-header-face))))

   ;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,jazz-green+1))))
   `(message-header-other ((,class (:foreground ,jazz-green))))
   `(message-header-to ((,class (:foreground ,jazz-yellow :weight bold))))
   `(message-header-from ((,class (:foreground ,jazz-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,jazz-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,jazz-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,jazz-orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,jazz-green))))
   `(message-mml ((,class (:foreground ,jazz-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,jazz-orange))))
   `(mew-face-header-from ((,class (:foreground ,jazz-yellow))))
   `(mew-face-header-date ((,class (:foreground ,jazz-green))))
   `(mew-face-header-to ((,class (:foreground ,jazz-red))))
   `(mew-face-header-key ((,class (:foreground ,jazz-green))))
   `(mew-face-header-private ((,class (:foreground ,jazz-green))))
   `(mew-face-header-important ((,class (:foreground ,jazz-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,jazz-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,jazz-red))))
   `(mew-face-header-xmew ((,class (:foreground ,jazz-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,jazz-red))))
   `(mew-face-body-url ((,class (:foreground ,jazz-orange))))
   `(mew-face-body-comment ((,class (:foreground ,jazz-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,jazz-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,jazz-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,jazz-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,jazz-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,jazz-red))))
   `(mew-face-mark-review ((,class (:foreground ,jazz-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,jazz-green))))
   `(mew-face-mark-delete ((,class (:foreground ,jazz-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,jazz-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,jazz-green))))
   `(mew-face-mark-unread ((,class (:foreground ,jazz-red-1))))
   `(mew-face-eof-message ((,class (:foreground ,jazz-green))))
   `(mew-face-eof-part ((,class (:foreground ,jazz-yellow))))

   ;; minimap
   `(minimap-font-face ((default (:height 30 :family "Anka/Coder")) (nil nil)))
   `(minimap-semantic-function-face ((((background dark)) (:inherit (font-lock-function-name-face minimap-font-face) :background "gray10"))))
   `(minimap-semantic-type-face ((,class (:inherit (font-lock-type-face minimap-font-face) :background "gray10"))))
   `(minimap-semantic-variable-face ((,class (:inherit (font-lock-variable-name-face minimap-font-face) :background "gray10"))))

   ;; mic-paren
   `(paren-face-match ((,class (:foreground ,jazz-cyan :background ,jazz-bg :weight bold :underline t))))
   `(paren-face-mismatch ((,class (:foreground ,jazz-bg :background ,jazz-magenta :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,jazz-bg :background ,jazz-red :weight bold))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,jazz-yellow))))
   `(nav-face-button-num ((,class (:foreground ,jazz-cyan))))
   `(nav-face-dir ((,class (:foreground ,jazz-green))))
   `(nav-face-hdir ((,class (:foreground ,jazz-red))))
   `(nav-face-file ((,class (:foreground ,jazz-fg))))
   `(nav-face-hfile ((,class (:foreground ,jazz-red-1))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,jazz-fg :weight bold))))
   `(org-checkbox ((,class (:background ,jazz-bg+2 :foreground "white"
                                        :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,jazz-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,jazz-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,jazz-green+1))))
   `(org-formula ((,class (:foreground ,jazz-yellow-1))))
   `(org-headline-done ((,class (:foreground ,jazz-green+1))))
   `(org-hide ((,class (:foreground ,jazz-bg-1))))
   `(org-level-1 ((,class (:foreground ,jazz-orange))))
   `(org-level-2 ((,class (:foreground ,jazz-green+1))))
   `(org-level-3 ((,class (:foreground ,jazz-blue-1))))
   `(org-level-4 ((,class (:foreground ,jazz-yellow-1))))
   `(org-level-5 ((,class (:foreground ,jazz-cyan))))
   `(org-level-6 ((,class (:foreground ,jazz-green-1))))
   `(org-level-7 ((,class (:foreground ,jazz-red-1))))
   `(org-level-8 ((,class (:foreground ,jazz-blue-1))))
   `(org-link ((,class (:foreground ,jazz-yellow-1 :underline t))))
   `(org-scheduled ((,class (:foreground ,jazz-green+1))))
   `(org-scheduled-previously ((,class (:foreground ,jazz-red-1))))
   `(org-scheduled-today ((,class (:foreground ,jazz-blue+1))))
   `(org-special-keyword ((,class (:foreground ,jazz-yellow-1))))
   `(org-table ((,class (:foreground ,jazz-green+1))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,jazz-orange))))
   `(org-todo ((,class (:bold t :foreground ,jazz-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,jazz-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,jazz-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,jazz-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,jazz-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,jazz-red+1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,jazz-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,jazz-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,jazz-green+1))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,jazz-red-1))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,jazz-yellow-1))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,jazz-green+1))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,jazz-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,jazz-red-1))))

   ;; rcirc
   `(rcirc-my-nick ((,class (:foreground ,jazz-blue))))
   `(rcirc-other-nick ((,class (:foreground ,jazz-orange))))
   `(rcirc-bright-nick ((,class (:foreground ,jazz-blue+1))))
   `(rcirc-dim-nick ((,class (:foreground ,jazz-blue-1))))
   `(rcirc-server ((,class (:foreground ,jazz-green))))
   `(rcirc-server-prefix ((,class (:foreground ,jazz-green+1))))
   `(rcirc-timestamp ((,class (:foreground ,jazz-green+1))))
   `(rcirc-nick-in-message ((,class (:foreground ,jazz-yellow))))
   `(rcirc-nick-in-message-full-line ((,class (:bold t))))
   `(rcirc-prompt ((,class (:foreground ,jazz-yellow :bold t))))
   `(rcirc-track-nick ((,class (:inverse-video t))))
   `(rcirc-track-keyword ((,class (:bold t))))
   `(rcirc-url ((,class (:bold t))))
   `(rcirc-keyword ((,class (:foreground ,jazz-yellow :bold t))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,jazz-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,jazz-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,jazz-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,jazz-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,jazz-red))))
   `(rpm-spec-package-face ((,class (:foreground ,jazz-red))))
   `(rpm-spec-section-face ((,class (:foreground ,jazz-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,jazz-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,jazz-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,jazz-orange))))
   `(rst-level-2-face ((,class (:foreground ,jazz-green+1))))
   `(rst-level-3-face ((,class (:foreground ,jazz-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,jazz-yellow-1))))
   `(rst-level-5-face ((,class (:foreground ,jazz-cyan))))
   `(rst-level-6-face ((,class (:foreground ,jazz-green-1))))

   ;; sbt-mode
   `(sbt:error ((,class (:foreground ,jazz-red))))
   `(sbt:info ((,class (:foreground ,jazz-green))))
   `(sbt:warning ((,class (:foreground ,jazz-orange))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,jazz-red-1 :background ,jazz-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,jazz-blue-1 :background ,jazz-bg :weight bold :underline t))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,jazz-red))))

   ;; term
   `(term ((,class (:foreground ,jazz-fg))))
   `(term-color-black ((,class (:foreground ,jazz-bg))))
   `(term-color-blue ((,class (:foreground ,jazz-blue))))
   `(term-color-cyan ((,class (:foreground ,jazz-cyan))))
   `(term-color-green ((,class (:foreground ,jazz-green))))
   `(term-color-magenta ((,class (:foreground ,jazz-magenta))))
   `(term-color-red ((,class (:foreground ,jazz-red))))
   `(term-color-white ((,class (:foreground ,jazz-fg))))
   `(term-color-yellow ((,class (:foreground ,jazz-yellow))))

   ;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,jazz-blue))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,jazz-red :weight bold))))
   `(undo-tree-visualizer-default-face ((,class (:foreground ,jazz-fg))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,jazz-yellow))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground, jazz-fg))))

   ;; visual-regexp
   `(vr/match-separator-face ((,class (:foreground ,jazz-red))))
   `(vr/match-0 ((,class (:background ,jazz-cyan))))
   `(vr/match-1 ((,class (:background ,jazz-blue))))
   `(vr/group-0 ((,class (:background ,jazz-green-1))))
   `(vr/group-1 ((,class (:background ,jazz-magenta))))
   `(vr/group-2 ((,class (:background ,jazz-bg+2))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,jazz-bg :foreground ,jazz-bg+1))))
   `(whitespace-hspace ((,class (:background ,jazz-bg :foreground ,jazz-bg+1))))
   `(whitespace-tab ((,class (:background ,jazz-bg :foreground ,jazz-red))))
   `(whitespace-newline ((,class (:foreground ,jazz-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,jazz-red :background ,jazz-bg))))
   `(whitespace-line ((,class (:background ,jazz-bg :foreground ,jazz-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,jazz-orange :foreground ,jazz-orange))))
   `(whitespace-indentation ((,class (:background ,jazz-yellow :foreground ,jazz-red))))
   `(whitespace-empty ((,class (:background ,jazz-yellow :foreground ,jazz-red))))
   `(whitespace-space-after-tab ((,class (:background ,jazz-yellow :foreground ,jazz-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,jazz-red-1))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,jazz-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,jazz-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,jazz-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,jazz-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,jazz-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,jazz-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,jazz-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,jazz-green+1))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,jazz-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,jazz-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,jazz-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,jazz-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,jazz-green+1))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,jazz-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,jazz-green+1))))
   `(wl-highlight-message-signature ((,class (:foreground ,jazz-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,jazz-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,jazz-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,jazz-fg
                                                              :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,jazz-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,jazz-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,jazz-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,jazz-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,jazz-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; ensime
   `(ensime-errline-highlight ((,class (:background ,jazz-red :foreground ,jazz-fg))))
   `(ensime-warnline ((,class (:background ,jazz-bg+1))))

   ;; coffee-mode
   `(coffee-mode-function-param ((,class (:foreground ,jazz-blue+1))))
   `(coffee-mode-class-name ((,class (:foreground ,jazz-blue))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,jazz-green+1)))))

  ;;; custom theme variables
  (custom-theme-set-variables
   'jazz
   `(ansi-color-names-vector [,jazz-bg ,jazz-red ,jazz-green ,jazz-yellow
                                       ,jazz-blue ,jazz-magenta ,jazz-cyan ,jazz-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,jazz-bg)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'jazz)

;;; jazz-theme.el ends here.
