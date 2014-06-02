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
                 "popwin.el"
                 "quickrun.el"
                 ;;"helm-project.el"
                 "server.el"
                 "misc.el"
                 "my.el" ;;; add at 2014/02/03
                 "elscreen.el"
                 "wanderlust.el"
                 "cperl-mode.el"
                 "10keyboard.el"
                 "50cperl-mode.el"
                 "50css-mode.el"
                 "50php-mode.el"
                 )))
  (dolist (conf conf-list)
    (load (concat user-emacs-directory "conf/" conf))))
