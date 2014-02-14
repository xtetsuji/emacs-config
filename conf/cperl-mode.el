;; -*- emacs-lisp -*-
;; cperl - 2004/09/15(Wed)
;;         2008/05/24(Sat)
;;         2011/02/03(Thu) from cvs:dot/daichi/.emacs
;;         2012/07/21(Sat) from http://tech.lampetty.net/tech/index.php/archives/384

(defvar my-cperl-current-flavor nil
  "my-cperl-* にて使用している現在の設定名の確保用です")

(defun my-cperl-g4 ()
  "g4のコーディングルールに cperl-mode を準拠します"
  (interactive)
  (setq my-cperl-current-flavor "g4"
	cperl-close-paren-offset -8
	cperl-continued-statement-offset 8
	cperl-indent-level 8
	cperl-indent-parens-as-block t
	cperl-tab-always-indent t
        indent-tabs-mode t))

(defun my-cperl-pbp ()
  "Perl Best Practice コーディングルールに cperl-mode を準拠します"
  (interactive)
  (setq my-cperl-current-flavor "pbp"
	cperl-close-paren-offset -4
	cperl-continued-statement-offset 4
	cperl-indent-level 4
	cperl-indent-parens-as-block t
	cperl-tab-always-indent t
	indent-tabs-mode nil))

(defun my-toggle-miyagawa ()
  "miyagawa さんのコーディングルールに cperl-mode を準拠します"
  (interactive)
  (setq my-cperl-current-flavor "miyagawa"
	cperl-close-paren-offset -2
	cperl-continued-statement-offset 2
	cperl-indent-level 2
	cperl-indent-parens-as-block t
	cperl-tab-always-indent t
	indent-tabs-mode nil))

(defun my-toggle-cperl ()
  "cperl-mode の設定をトグルします"
  (interactive)
  (cond ((string= my-cperl-current-flavor "g4")
	 (progn (my-cperl-pbp) (message "change pbp style")))
	((string= my-cperl-current-flavor "pbp")
	 (progn (my-cperl-g4) (message "change g4 style")))
	(t (my-cperl-pbp) (message "change pbp style"))))
;;; 書き方がダサい...

(defun my-view-cperl-current-flavor ()
  "cperl の現在の設定をモードラインに出力します"
  (interactive)
  (message "current mode is %s" my-cperl-current-flavor))

;; my-cperl-rename-buffer
;; これ cperl-mode の hook として追加してもよいかも?
(defvar my-cperl-rename-buffer-elscreen-rename nil "バッファ名だけでなく elscreen nickname もパッケージ名に変更する")
(setq my-cperl-rename-buffer-elscreen-rename nil) ;; elscreen は対象としない
(defun my-cperl-rename-buffer ()
  "現在編集中のPerlプログラムに合わせてバッファ名を変更します"
  (interactive)
  (save-excursion
    (let (package-name (nickname-rename-p (and (fboundp 'elscreen-screen-nickname) my-cperl-rename-buffer-elscreen-rename)))
      (goto-char (point-min))
      (if (re-search-forward "\\<package\\s +\\([a-zA-Z0-9:]+\\)" nil t)
	  (setq package-name (buffer-substring (match-beginning 1) (match-end 1)))
        (setq package-name "(not found)"))
      (message (concat "matched package name is " package-name))
      (if (y-or-n-p (concat "Package name is " package-name "? "))
          (progn (rename-buffer package-name)
                 (if nickname-rename-p
                     (elscreen-screen-nickname package-name))
                 (message (concat "Change buffer name to " package-name)))
        (message "Buffer name is not changed.")))))

(setq perl-mode-hook
      '(lambda ()(cperl-mode)))

;(autoload 'perl-debug "perl-debug" nil t)
;(autoload 'perl-debug-lint "perl-debug" nil t)
(add-hook 'cperl-mode-hook
          (lambda ()
            ;(require 'perl-debug)
            ;(perl-debug-set-coding-system)
            ;(define-key cperl-mode-map "\C-cc" 'perl-debug-lint)
            ;(define-key cperl-mode-map "\C-cd" 'perl-debug)
	    (define-key cperl-mode-map "\C-cs" 'my-toggle-cperl)
            (define-key cperl-mode-map "\C-cv" 'my-view-cperl-current-flavor)
            (define-key cperl-mode-map "\C-cA"  'my-cperl-rename-buffer)
            (setq-default indent-tabs-mode nil)))

;; ; PBP Style
;; (custom-set-variables
;;  '(cperl-close-paren-offset -4)
;;  '(cperl-continued-statement-offset 4)
;;  '(cperl-indent-level 4)
;;  '(cperl-indent-parens-as-block t)
;;  '(cperl-tab-always-indent t))

;; 初期設定は PBP Style
(my-cperl-pbp)



;;;
;;; see: http://tech.lampetty.net/tech/index.php/archives/384
;;;
; 2012/07/21(Sat)
(autoload 'cperl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
(add-to-list 'auto-mode-alist '("\\.\\([pP][LlMm]\\|al\\|t\\|cgi\\|x\\|psgi\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
