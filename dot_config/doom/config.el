;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq 
  user-full-name "Chris Pecunies"
  user-login-name "clpi"
  user-mail-address "clp@clp.is"
  doom-font (font-spec :family "Iosevka Nerd Font" :size 11 :weight 'regular)
  org-directory "~/org/"
  doom-localleader-key ","
  display-line-numbers-type t
  doom-variable-pitch-font (font-spec :family "Helvetica" :size 12 :weight 'regular)
  doom-big-font (font-spec :family "Avenir Next" :size 12 :weight 'regular)
  doom-theme 'doom-horizon
  )

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq doom-theme 'doom-horizon)

;; (use-package! copilot
;;
;;
;;
;;
;;
;;
;;
;;
;;
;;
;;
;;               ("<tab>" . 'copilot-accept-completion)
;;               ("C-<tab>" . 'copilot-accept-completion-by-word)))
;;               ("C-TAB" . 'copilot-accept-completion-by-word)
;;               ("TAB" . 'copilot-accept-completion)
;;       user-mail-address "john@doe.com")
;;     (setq x y))
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   (after! PACKAGE
;;   - Setting doom variables (which start with 'doom-' or '+').
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;   :bind (:map copilot-completion-map
;;   :hook (prog-mode . copilot-mode)
;;   `require' or `use-package'.
;;   presentations or streaming.
;;   this file. Emacs searches the `load-path' when you load packages with
;; (setq user-full-name "John Doe"
;; (use-package! copilot
;; - `add-load-path!' for adding directories to the `load-path', relative to
;; - `after!' for running code after a package has loaded
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;; - `doom-font' -- the primary font to use
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;; - `doom-symbol-font' -- for symbols
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `load!' for loading external *.el files relative to this one
;; - `map!' for binding new keys
;; - `use-package!' for configuring packages
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; Here are some additional functions/macros that will help you configure Doom.
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; If you use `org' and don't want your org files in the default location below,
;; Place your private configuration here! Remember, you do not need to run 'doom
;; See 'C-h v doom-font' for documentation and more examples of what they
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; The exceptions to this rule:
;; There are two ways to load a theme. Both assume the theme is installed and
;; This determines the style of line numbers in effect. If set to `nil', line
;; This will open documentation for it, including demos of how they are used.
;; To get information about any of these functions/macros, move the cursor over
;; Whenever you reconfigure a package, make sure to wrap your config in an
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;; `load-theme' function. This is the default:
;; accept completion from copilot and fallback to company
;; accept. For example:
;; available. You can either set `doom-theme' or manually load a theme with the
;; change `org-directory'. It must be set before org loads!
;; clients, file templates and snippets. It is optional.
;; etc).
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; refresh your font settings. If Emacs still can't find your font, it likely
;; sync' after modifying this file!
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; they are implemented.
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; wasn't installed correctly. Font issues are rarely Doom issues!
;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq company-idle-delay 0
      company-box-doc-delay 0
      company-prefix-length 0
      evil-collection-company-use-tng 1
      company-tooltip-idle-delay 0
      )

(setq which-key-idle-delay 0
      ;; which-key-separator '|
      which-key-idle-secondary-delay 0)

(use-package! copilot
(after! (evil copilot)
  ;; Define the custom function that either accepts the completion or does the default behavior
  (defun my/copilot-tab-or-default ()
    (interactive)
    (if (and (bound-and-true-p copilot-mode)
             ;; Add any other conditions to check for active copilot suggestions if necessary
             )
        (copilot-accept-completion)
      (evil-insert 1))) ; Default action to insert a tab. Adjust as needed.

  ;; Bind the custom function to <tab> in Evil's insert state
  (evil-define-key 'insert 'global (kbd "<tab>") 'my/copilot-tab-or-default))
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)
              ("C-n" . 'copilot-next-completion)
              ("C-p" . 'copilot-previous-completion))

  :config
  (add-to-list 'copilot-indentation-alist '(prog-mode 2))
  (add-to-list 'copilot-indentation-alist '(org-mode 2))
  (add-to-list 'copilot-indentation-alist '(text-mode 2))
  (add-to-list 'copilot-indentation-alist '(closure-mode 2))
  (add-to-list 'copilot-indentation-alist '(emacs-lisp-mode 2)))

;; (add-hook 'prog-mode-hook 'copilot-mode)
;; (add-to-list 'load-path "/path/to/copilot.el")
;; (require 'copilot)

;; (evil-define-key)
  (evil-define-key 'normal 'global (kbd "(") '+evil/previous-frame)
  (evil-define-key 'normal 'global (kbd ")") '+evil/next-frame)
  (evil-define-key 'normal 'global (kbd "H") '+evil/previous-file)
  (evil-define-key 'normal 'global (kbd "L") '+evil/next-file)
