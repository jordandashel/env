(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 8)
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(c-tab-always-indent nil)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("b6d649c9f972b491686e7fa634535653e6222c1faca1ab71b3117854470a79ae" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(emms-mode-line-icon-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(evil-want-C-u-scroll t)
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#49483E")
 '(flycheck-checkers
   (quote
    (ada-gnat asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine coffee coffee-coffeelint coq css-csslint d-dmd emacs-lisp emacs-lisp-checkdoc erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy jade javascript-eslint javascript-jshint javascript-gjslint javascript-jscs javascript-standard json-jsonlint json-python-json less luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint rst-sphinx rst ruby-rubocop ruby-rubylint ruby ruby-jruby rust-cargo rust sass scala scala-scalastyle scss-lint scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim sql-sqlint tex-chktex tex-lacheck texinfo verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby)))
 '(gnus-logo-colors (quote ("#528d8d" "#c0c0c0")))
 '(gnus-mode-line-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")))
 '(helm-dash-browser-func (quote eww))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#49483E" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(magit-diff-use-overlays nil)
 '(mode-icons
   (quote
    (("\\`CSS\\'" "css" xpm)
     ("\\`Coffee\\'" "coffee" xpm-bw)
     ("\\`Compilation\\'" "compile" xpm)
     ("\\`Emacs-Lisp\\'" "emacs" xpm)
     ("\\`Lisp Interaction\\'" "emacs" xpm)
     ("\\`HTML\\'" "html" xpm)
     ("\\`Haml\\'" "haml" xpm)
     ("\\`Image\\[imagemagick\\]\\'" "svg" xpm)
     ("\\`Inf-Ruby\\'" "infruby" xpm)
     ("\\`Java[Ss]cript\\'" "js" xpm)
     ("\\`Lisp\\'" "cl" xpm)
     ("\\`nXML\\'" "xml" xpm)
     ("\\`Org\\'" "org" xpm)
     ("\\`PHP\\(\\|/.*\\)\\'" "php" xpm)
     ("\\`Projectile Rails Server\\'" "rails" xpm)
     ("\\`Python\\'" "python" xpm)
     ("\\`\\(Enh\\)?Ruby\\'" "ruby" xpm)
     ("\\`ESS\\[S\\]\\'" "R" xpm)
     ("\\`ESS\\[SAS\\]\\'" "sas" xpm)
     ("\\`ESS\\[BUGS\\]\\'" 61832 FontAwesome)
     ("\\`iESS\\'" "R" xpm)
     ("\\`SCSS\\'" "sass" xpm)
     ("\\`Sass\\'" "sass" xpm)
     ("\\`Scheme" "scheme" xpm-bw)
     ("\\`Shell-script" "bash" xpm-bw)
     ("\\`Slim" "slim" xpm-bw)
     ("\\`Snippet" "yas" xpm)
     ("\\`Term\\'" "term" xpm)
     ("\\`Web\\'" "html" xpm)
     ("\\`XML\\'" "xml" xpm)
     ("\\`YAML\\'" "yaml" xpm)
     ("\\` ?YASnippet\\'" "yas" xpm)
     ("\\` ?yas\\'" "yas" xpm)
     ("\\` ?hs\\'" "hs" xpm)
     ("\\`Markdown\\'" 61641 github-octicons)
     ("\\`GFM\\'" 61641 github-octicons)
     ("\\`Scala\\'" 61787 font-mfizz)
     ("\\`Magit\\'" 61906 FontAwesome)
     ("\\` Pulls\\'" 61586 FontAwesome)
     ("\\`Zip-Archive\\'" 61894 FontAwesome)
     ("\\` ARev\\'" 61473 FontAwesome)
     ("\\`Calc\\(ulator\\)?\\'" 61932 FontAwesome)
     ("\\`Debug.*\\'" 61832 FontAwesome)
     ("\\`Debug.*\\'" 61832 FontAwesome)
     ("\\`Calendar\\'" 61555 FontAwesome)
     ("\\`Help\\'" 61529 FontAwesome)
     ("\\`WoMan\\'" 61530 FontAwesome)
     ("\\`C\\(/.*\\|\\)\\'" 61703 font-mfizz)
     ("\\`Custom\\'" 61459 FontAwesome)
     ("\\`Go\\'" "go" xpm)
     ("\\` ?Rbow\\'" "rainbow" xpm)
     ("\\` ?ICY\\'" "icy" xpm)
     ("\\` ?Golden\\'" "golden" xpm-bw)
     ("\\`BibTeX\\'\\'" "bibtex" xpm-bw)
     ("\\`C[+][+]\\(/.*\\|\\)\\'" 61708 font-mfizz)
     ("\\`C[#]\\(/.*\\|\\)\\'" 61709 font-mfizz)
     ("\\`Elixir\\'" 61717 font-mfizz)
     ("\\`Erlang\\'" 61718 font-mfizz)
     ("\\`Haskell\\'" 61734 font-mfizz)
     ("\\`Clojure\\'" 61706 font-mfizz)
     ("\\`Java\\(/.*\\|\\)\\'" 61739 font-mfizz)
     ("\\`C?Perl\\'" 61768 font-mfizz)
     ("\\`Octave\\'" "octave" xpm)
     ("\\`AHK\\'" "autohotkey" xpm)
     ("\\`Info\\'" 61530 FontAwesome)
     ("\\` ?Narrow\\'" 61542 FontAwesome)
     ("\\`Dockerfile\\'" "docker" xpm)
     ("\\`Spacemacs buffer\\'" "spacemacs" png)
     ("\\` ?emoji\\'" "emoji" png)
     (read-only 61475 FontAwesome)
     (writable 61596 FontAwesome)
     (save 61639 FontAwesome)
     (saved "" nil)
     (modified-outside 61553 FontAwesome)
     (steal 61979 FontAwesome)
     (apple 60095 IcoMoon-Free)
     (apple 61817 FontAwesome)
     (win 61818 FontAwesome)
     (unix 60093 IcoMoon-Free)
     (unix 61798 font-mfizz)
     (unix 61820 FontAwesome)
     (undecided 61736 FontAwesome)
     ("Text\\'" 61686 FontAwesome)
     ("\\` ?company\\'" 61869 FontAwesome)
     ("\\` ?AC\\'" 61838 FontAwesome)
     ("\\` ?Fly\\'" 59922 IcoMoon-Free)
     ("\\` ?Ergo" 61724 FontAwesome)
     ("\\` ?drag\\'" 61511 FontAwesome)
     ("\\` ?Helm\\'" "helm" xpm-bw)
     ("\\`Messages\\'" 62075 FontAwesome)
     ("\\`Conf" 61918 FontAwesome)
     ("\\`Fundamental\\'" 61462 FontAwesome)
     ("\\`Javascript-IDE\\'" "js" xpm)
     ("\\` Undo-Tree\\'" ":palm_tree:" emoji)
     ("\\`LaTeX\\'" "tex" ext)
     ("\\`Image\\[xpm\\]\\'" "xpm" ext)
     ("\\`Image\\[png\\]\\'" "png" ext)
     ("\\` ?AI\\'" 61500 FontAwesome)
     ("\\` ?Isearch\\'" 61442)
     ("\\` ?\\(?:ElDoc\\|Anzu\\|SP\\|Guide\\|PgLn\\|Undo-Tree\\|Ergo.*\\|,\\|Isearch\\|Ind\\)\\'" nil nil))))
 '(mode-icons-mode t)
 '(neo-persist-show nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(python-shell-interpreter "python3")
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(shift-select-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(tab-always-indent nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
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
   (unspecified "#272822" "#49483E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
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
			      (info-mode . emacs)
			      (shell-mode . emacs)
			      (eshell-mode . emacs)
			      (eww-mode . emacs)
			      (comint-mode . emacs)
			      (lisp-mode . emacs)
			      (calendar-mode . emacs)
			      (inferior-lisp-mode . emacs)
			      (diary-mode . emacs)
			      (neotree-mode . emacs)
			      (term-mode . emacs)
			      (minesweeper-mode . emacs)
			      (xkcd-mode . emacs)
			      (help-mode . emacs)
			      (dired-mode . emacs))
      do (evil-set-initial-state mode state))
(require 'evil-surround)
(global-evil-surround-mode 1)
(evil-mode 1)

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

;;Bind search tags
(global-set-key (kbd "C-c t") 'find-tag)
(global-set-key (kbd "C-c T") 'find-tag-other-window)

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
;(require 'monokai-theme)

(require 'flycheck)
(global-flycheck-mode)

(require 'speed-type)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-mode-bullets 1)))

(require 'discover-my-major)
(global-set-key (kbd "C-h C-m") 'discover-my-major)
(global-set-key (kbd "C-h M-m") 'discover-my-mode)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(require 'auto-complete)
(ac-config-default)

(global-set-key (kbd "C-c n") 'nosetests-all)
(require 'nose)
(defvar nose-use-verbose nil)

(require 'rainbow-delimiters)

(remove-hook 'enh-ruby-mode-hook 'erm-define-faces)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

(setq inferior-lisp-program (executable-find "/usr/bin/clisp"))

(global-set-key (kbd "C-c d") 'define-word-at-point)
(global-set-key (kbd "C-c D") 'define-word)

;; fontify code in code blocks
(setq org-src-fontify-natively t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(mode-icons-mode) 

(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'base16-mocha-dark-theme)
