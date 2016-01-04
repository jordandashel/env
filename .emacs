(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" "0fb6369323495c40b31820ec59167ac4c40773c3b952c264dd8651a3b704f6b5" default)))
 '(fci-rule-color "#49483E")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(magit-diff-use-overlays nil)
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(sentence-end-double-space nil)
 '(shift-select-mode nil)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(ensure-package-installed
 'magit
 'evil
 'discover
 'powerline
 'zenburn-theme
 'monokai-theme
 'farmhouse-theme
 ) ;  --> (nil nil) if iedit and magit are already installed

;; activate installed packages
(package-initialize)

(setq package-archives
 '(("gnu" . "http://elpa.gnu.org/packages/")
  ("marmalade" . "http://marmalade-repo.org/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Sort the results of apropos by relevance
;(setq apropos-sort-by-scores t)

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

;; Theme
(require 'monokai-theme)

;; Powerline
(require 'powerline)
(powerline-default-theme)
