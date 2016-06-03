(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(c-basic-offset 8)
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(c-tab-always-indent nil)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("a802c77b818597cc90e10d56e5b66945c57776f036482a033866f5f506257bca" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "70340909b0f7e75b91e66a02aa3ad61f3106071a1a4e717d5cdabd8087b47ec4" "8f0334c430540bf45dbcbc06184a2e8cb01145f0ae1027ce6b1c40876144c0c9" "8e7ca85479dab486e15e0119f2948ba7ffcaa0ef161b3facb8103fb06f93b428" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "51277c9add74612c7624a276e1ee3c7d89b2f38b1609eed6759965f9d4254369" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "e8825f26af32403c5ad8bc983f8610a4a4786eb55e3a363fa9acb48e0677fe7e" "df3e05e16180d77732ceab47a43f2fcdb099714c1c47e91e8089d2fcf5882ea3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8577da1641ed4bdf255341ca92e3d0e49c9f4d574458f09ce78159690442cade" "405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" "38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" "0fb6369323495c40b31820ec59167ac4c40773c3b952c264dd8651a3b704f6b5" default)))
 '(evil-want-C-u-scroll t)
 '(evil-want-Y-yank-to-eol t)
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(powerline-default-separator (quote arrow))
 '(powerline-gui-use-vcs-glyph nil)
 '(python-shell-interpreter "python3")
 '(sentence-end-double-space nil)
 '(shift-select-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/theme (quote dark))
 '(tab-always-indent nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(when
      (or
       (not
	(boundp
	 (quote ansi-term-color-vector)))
       (not
	(facep
	 (aref ansi-term-color-vector 0)))) t)
 '(winner-mode t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)

;; Set text-mode as the default
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Allow C-x C-u for quick undos
(define-key global-map "\C-x\C-u" 'undo)


;; Default flymode
(setq-default flyspell-mode t)

;; Default abbreviations
(setq-default abbrev-mode t)
(read-abbrev-file "~/.abbrev_defs")
(setq save-abbrevs t)

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  (setq ispell-program-name "/usr/local/bin/ispell") ;; Where is ispell?
  )

(setq package-archives
 '(("gnu" . "http://elpa.gnu.org/packages/")
  ("marmalade" . "http://marmalade-repo.org/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Sort the results of apropos by relevance
;(setq apropos-sort-by-scores t)

(require 'cc-mode)

;; Enable ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;; Ido don't confirm new buffer
(setq ido-create-new-buffer 'always)

;; Allow Meta to be used for window movement
(global-set-key (kbd "M-o") 'other-window)

;; Directional window movement
(windmove-default-keybindings)

;; Bind imenu to M-i
(global-set-key (kbd "M-i") 'imenu)

;; helm!
(require 'helm-config)

;; Use hippie-expand
(global-set-key [remap dabbrev-expand] 'hippie-expand)

;; Global line numbers
(global-linum-mode 1)

;; Disable startup screen
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; Enable dired-x
(require 'dired-x)

;; Discover
(require 'discover)
(global-discover-mode 1)

;; Powerline
;(require 'powerline)
;(powerline-default-theme)
;(require 'powerline-evil)
(sml/setup)

;; Theme
;(require 'farmhouse-dark-theme)

;; Org-mode shortcuts courtesy David O'Toole
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)
(setq org-startup-indented t)

;; Re-builder
;(require 're-builder)
;(setq reb-re-syntax 'string)

;; Evil customizations
(require 'evil)
(setq evil-shift-width 8)
(setq evil-default-cursor 'box)
(setq evil-insert-state-cursor 'box)
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

(define-key evil-normal-state-map " " 'evil-ex)
;; Evil modes
(cl-loop for (mode . state) in '((inferior-emacs-lisp-mode . emacs)
			      (markdown-mode . normal)
			      (git-commit-mode . insert)
			      (org-mode . emacs)
			      (shell-mode . emacs)
			      (term-mode . emacs)
			      (help-mode . emacs)
			      (dired-mode . emacs))
      do (evil-set-initial-state mode state))
(require 'evil-surround)
(global-evil-surround-mode 1)
(evil-mode 1)

;; Enable magit
(require 'magit)
;; Chord for magit-status
(global-set-key (kbd "C-x G") 'magit-status)

;; Follow sym-links to git repositories automatically
(setq vc-follow-symlinks t)

;; Markdown highlighting
(require 'mmm-mode)
(defun my-mmm-markdown-auto-class (lang &optional submode)
  "Define a mmm-mode class for LANG in `markdown-mode' using SUBMODE.
If SUBMODE is not provided, use `LANG-mode' by default."
  (let ((class (intern (concat "markdown-" lang)))
	(submode (or submode (intern (concat lang "-mode"))))
	(front (concat "^```" lang "[\n\r]+"))
	(back "^```"))
    (mmm-add-classes (list (list class :submode submode :front front :back back)))
    (mmm-add-mode-ext-class 'markdown-mode nil class)))

;; Mode names that derive directly from the language name
(mapc 'my-mmm-markdown-auto-class
      '("awk" "bibtex" "c" "cpp" "css" "html" "latex" "lisp" "makefile"
	"markdown" "python" "r" "ruby" "sql" "stata" "xml"))

(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c r") 'recompile)


;; Theme
(require 'monokai-theme)

(require 'flycheck)
(global-flycheck-mode)

(require 'speed-type)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-mode-bullets 1)))

(require 'discover-my-major)
(global-set-key (kbd "C-h C-m") 'discover-my-major)
(global-set-key (kbd "C-h M-m") 'discover-my-mode)

(require 'rainbow-mode)

;(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(require 'auto-complete)
(ac-config-default)

(global-set-key (kbd "C-c n") 'nosetests-all)
(require 'nose)
(defvar nose-use-verbose nil)

(setq inferior-lisp-program (executable-find "/usr/local/bin/sbcl"))

(global-set-key (kbd "C-c d") 'define-word-at-point)
(global-set-key (kbd "C-c D") 'define-word)

;; fontify code in code blocks
(setq org-src-fontify-natively t)
