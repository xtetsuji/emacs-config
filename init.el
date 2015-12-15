;; laad-path
(add-to-list 'load-path "~/.emacs.d/elisp")

;; specify alternate packages
;(load "pukiwiki-mode.el")

(let*
    ((user-emacs-directory
      (substring (or load-file-name "~/.emacs.d/init.el") 0 -7))
     (conf-list (list
                 "exec-path.el"
                 "el-get.el"
                 ;;"helm.el"
                 ;;"auto-complete.el"
                 "perl-mode.el"
                 ;;"perl-completion.el"
                 ;;"perl-flymake.el"
                 ;;"popwin.el"
                 ;;"quickrun.el"
                 ;;"helm-project.el"
                 "server.el"
                 "misc.el"
                 "my.el" ;;; add at 2014/02/03
                 "elscreen.el"
                 "wanderlust.el"
                 "cperl-mode.el"
                 ;"emoji-fontset.el"
                 "00setting.el"
                 "10keyboard.el"
                 "50cperl-mode.el"
                 "50css-mode.el"
                 "50php-mode.el"
                 )))
  (dolist (conf conf-list)
    (load (concat user-emacs-directory "conf/" conf))))

;;; 暫定的なフォント設定 on Mac OS X Emacs 24
;;; see: http://blog.livedoor.jp/tek_nishi/archives/8590439.html

;; (set-face-attribute 'default nil :family "Menlo" :height 140)
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'japanese-jisx0208
;;                   (font-spec :family "Hiragino Kaku Gothic ProN" :size 12))

;;; see: http://blog.livedoor.jp/tek_nishi/archives/8590439.html
(progn
  (set-face-attribute 'default nil :family "Menlo" :height 120)
  (set-fontset-font (frame-parameter nil 'font)
                    'japanese-jisx0208
                    (font-spec :family "Hiragino Kaku Gothic ProN"))
  (add-to-list 'face-font-rescale-alist
               '(".*Hiragino Kaku Gothic ProN.*" . 1.2)))

; あ い う え お
; aa ii uu ee oo
