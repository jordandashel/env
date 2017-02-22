;;; package -- summary

; Jordan Dashel's init.el version 1.0
;	replacing my now deprecated .emacs
;
; This file is licenced under the GNU GPLv3 ;-D

;;; commentary:

; I would like to eliminate requires.  I've seen that online and
; should give it a shot.

; I'd also like to continue to improve organization of this file.

; I'd also like to get flycheck to shut up about some of these
; warnings.  Like needing to have these sections.

;;; code:

(if (file-readable-p "~/local-emacs-settings.el")
    (load "~/local-emacs-settings.el"))

;-------------------	Packages	--------------------;

(package-initialize)
(setq package-archives
 '(("gnu" . "http://elpa.gnu.org/packages/")
  ("marmalade" . "http://marmalade-repo.org/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")))

(require 'ace-window)
(require 'auto-complete)
(require 'dired-x)
(require 'discover)
(require 'discover-my-major)
;; (require 'evil)
;; (require 'evil-commentary)
;; (require 'evil-surround)
(require 'flycheck)
(require 'helm-config)
(require 'magit)
(require 'mode-icons)
(require 'nose)
(require 'org)
(require 'rainbow-delimiters)
(require 'xkcd)
(require 'org-bullets)


;-------------------	   Hooks    	--------------------;

; text-mode hooks
;;; auto fill
(add-hook 'text-mode-hook 'turn-on-auto-fill)
; prog mode
;;; rainbow delims
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
; org hooks
;;; unicode org bullets
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;-------------------	Key bindings	--------------------;

;; Allow Meta to be used for window movement
(global-set-key (kbd "M-o") 'other-window)
;; Bind imenu to M-i
(global-set-key (kbd "M-i") 'imenu)
;; Org-mode shortcuts courtesy David O'Toole
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
;; Easily find tags
(global-set-key (kbd "C-c t") 'find-tag)
(global-set-key (kbd "C-c T") 'find-tag-other-window)
;; Chord for magit-status
(global-set-key (kbd "C-x G") 'magit-status)
;; Easy compile/recompile
(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c r") 'recompile)
;; run nose tests
(global-set-key (kbd "C-c n") 'nosetests-all)
;; map ace window and use home row
(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;-------------------	Settings	--------------------;

;--> mac specific settings
(when (eq system-type 'darwin) 
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  ;; mac specific bin locations
  (setq ispell-program-name "/usr/local/bin/ispell")
  (setq inferior-lisp-program (executable-find "/usr/local/bin/clisp"))
  )

;; fontify code in code blocks
(setq org-src-fontify-natively t)

;; -- disable TMM --
(setq transient-mark-mode nil)

;; -- always display columns --
(column-number-mode)
;; -- things to hide --
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; --------------------
;; default mode is text-mode
(setq major-mode 'text-mode)
;; turn on flycheck
(setq-default flyspell-mode t)
;; enable ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
; don't confirm when making a new buffer
(setq ido-create-new-buffer 'always)
;; Directional window movement
(windmove-default-keybindings)
;; Global line numbers
(global-linum-mode 1)
;; Disable startup screen
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)
;; org-mode settings
;(setq org-log-done 'time)
(setq org-startup-indented t)
;--> Evil customizations
;; (setq evil-shift-width 8)
;; (setq evil-default-cursor 'box)
;; (setq evil-insert-state-cursor 'box)
;; (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
;; (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
;; ; space enters ex-mode
;; (define-key evil-normal-state-map " " 'evil-ex)
;; ; all the modes I don't want to be evil
;; (cl-loop for (mode . state) in '((calendar-mode . emacs)
;; 				 (comint-mode . emacs)
;; 				 (diary-mode . emacs)
;; 				 (dired-mode . emacs)
;; 				 (eshell-mode . emacs)
;; 				 (eww-mode . emacs)
;; 				 (help-mode . emacs)
;; 				 (inferior-emacs-lisp-mode . emacs)
;; 				 (inferior-lisp-mode . emacs)
;; 				 (info-mode . emacs)
;; 				 (lisp-mode . emacs)
;; 				 (minesweeper-mode . emacs)
;; 				 (org-mode . emacs)
;; 				 (shell-mode . emacs)
;; 				 (simple-mode . emacs)
;; 				 (term-mode . emacs)
;; 				 (xkcd-mode . emacs))
;;       do (evil-set-initial-state mode state))
;; (global-evil-surround-mode 1)
;; (evil-mode 1)
;; Follow sym-links to git repositories automatically
(setq vc-follow-symlinks t)
;; enable flycheck everywhere
(global-flycheck-mode)
;; discover my mode everywhere
(global-discover-mode 1)
(global-set-key (kbd "C-h C-m") 'discover-my-major)
(global-set-key (kbd "C-h M-m") 'discover-my-mode)
;; configure auto complete
(ac-config-default)
;; use dots in nose
(defvar nose-use-verbose nil)
;; use enh-ruby-mode
(remove-hook 'enh-ruby-mode-hook 'erm-define-faces)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
;; fontify code in code blocks
(setq org-src-fontify-natively t)
;; hide backup files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
;; use mode icons
(mode-icons-mode) 
;; easy window resizing
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)
; Set up org-mode capture
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
 (quote (("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
    "* TODO %?\n  %i\n  %a")
   ("j" "Journal" entry (file+datetree "~/org/journal.org")
    "* %?\nEntered on %U\n  %i\n  %a"))))
;; sentances have one space between them
(setq entence-end-double-space nil)


;-------------------	Custom Funcs	--------------------;

;; increment a number, like C-a in vim
(defun increment-number-at-point ()
  (interactive)
  (skip-chars-backward "0-9")
  (or (looking-at "[0-9]+")
      (error "No number at point"))
  (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))

(global-set-key (kbd "C-+") 'increment-number-at-point)


;; Set TODO to DONE when children are complete
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; Search upwards for TAG table
(defun find-file-upwards (file-to-find)
  "Recursively searches each parent directory starting from the default-directory.
looking for a file with name file-to-find.  Returns the path to it
or nil if not found."
  (cl-labels
      ((find-file-r (path)
		    (let* ((parent (file-name-directory path))
			   (possible-file (concat parent file-to-find)))
		      (cond
		       ((file-exists-p possible-file) possible-file) ; Found
		       ;; The parent of ~ is nil and the parent of / is itself.
		       ;; Thus the terminating condition for not finding the file
		       ;; accounts for both.
		       ((or (null parent) (equal parent (directory-file-name parent))) nil) ; Not found
		       (t (find-file-r (directory-file-name parent))))))) ; Continue
    (find-file-r default-directory)))
(let ((my-tags-file (find-file-upwards "TAGS")))
  (when my-tags-file
    (message "Loading tags file: %s" my-tags-file)
    (visit-tags-table my-tags-file)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(evil-want-C-u-scroll t)
 '(evil-want-Y-yank-to-eol t)
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default)
     (t . emacs))))
 '(package-selected-packages
   (quote
    (json-mode xkcd rainbow-delimiters org-bullets nose mode-icons markdown-mode magit helm goto-last-change flycheck evil-surround evil-commentary discover-my-major discover auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

(diary)

(provide 'init.el)
;;; init.el ends here
