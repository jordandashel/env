;; -*- mode:emacs-lisp; coding: utf-8-emacs; -*-
;; Gnus startup file.
;; Never delete this file -- if you want to force Gnus to read the
;; .newsrc file (if you have one), touch .newsrc instead.
(setq gnus-newsrc-file-version "Gnus v5.13")

(setq gnus-newsrc-last-checked-date '"Tue, 26 Jul 2016 11:36:44 -0700")

(setq gnus-newsrc-alist '(("nndraft:drafts" 1 nil nil (nndraft "") ((gnus-dummy (gnus-draft-mode)))) ("comp.emacs" 3 ((1 . 97387))) ("gnu.emacs.help" 3 ((1 . 206137)) ((unexist) (seen (206126 . 206137)))) ("alt.religion.emacs" 3 ((1 . 7106))) ("comp.lang.python" 3 ((1 . 836384)) ((unexist) (seen (836371 . 836384)))) ("comp.lang.perl" 3 ((1 . 34721))) ("comp.programming" 3 ((1 . 280301)) ((unexist) (seen (280300 . 280301)))) ("comp.os.linux.misc" 3 ((1 . 757592))) ("rec.arts.movies.past-films" 3 ((1 . 803130))) ("rec.arts.movies.current-films" 3 ((1 . 1265531)) ((unexist) (seen (1265527 . 1265531)))) ("talk.bizarre" 3 ((1 . 264468))) ("alt.zines" 3 ((1 . 75176))) ("rec.music" 3 ((1 . 4778))) ("rec.music.alternative" 3 ((1 . 4582))) ("rec.music.artists" 3 ((1 . 859))) ("rec.music.bluenote" 3 ((1 . 278871))) ("rec.music.classical" 3 ((1 . 495207))) ("rec.music.funky" 3 ((1 . 50332))) ("rec.music.hip-hop" 3 ((1 . 753441))) ("rec.music.jazz" 3 ((1 . 8621))) ("rec.music.reggae" 3 ((1 . 263868))) ("rec.music.synth" 3 ((1 . 4481)))))

(setq gnus-server-alist '(("archive" nnfolder "archive" (nnfolder-directory "~/Mail/archive") (nnfolder-active-file "~/Mail/archive/active") (nnfolder-get-new-mail nil) (nnfolder-inhibit-expiry t))))

(setq gnus-killed-list '("comp.linux" "rec.arts.tv" "de.comp.os.linux.misc"))

(setq gnus-topic-topology '(("Gnus" visible) (("misc" visible)) (("music" visible nil nil)) (("comp" visible nil nil))))

(setq gnus-topic-alist '(("comp" "comp.emacs" "gnu.emacs.help" "alt.religion.emacs" "comp.lang.python" "comp.lang.perl" "comp.programming" "comp.os.linux.misc") ("music" "rec.music.synth" "rec.music" "rec.music.alternative" "rec.music.artists" "rec.music.bluenote" "rec.music.classical" "rec.music.funky" "rec.music.hip-hop" "rec.music.jazz" "rec.music.reggae") ("misc" "nndraft:drafts" "rec.arts.movies.past-films" "rec.arts.movies.current-films" "talk.bizarre" "alt.zines") ("Gnus")))
