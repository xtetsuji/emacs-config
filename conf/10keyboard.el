;;; match-paren
;(define-key emacs-lisp-mode-map "%" 'match-paren)
(global-set-key [?\C-:] 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))
(show-paren-mode 1)

(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)
(global-set-key [f1]    'help-for-help) ;; 端末上だときかない
(global-set-key "\M-?" 'help-for-help)
(global-set-key "\C-x!" 'quickrun)
(global-set-key "\C-x\M-g" 'grep-find)
(global-set-key "C-x/" 'comment-region)
(auto-compression-mode t) ;; これでinfoが文字化けしない
;(delete-selection-mode t) ;; これでリージョン部を入力で置き換えられる
(column-number-mode 1)    ;; 列数の表示
(global-set-key [C-tab] 'dabbrev-expand) ;; バッファから素早く文字を補完
;(global-set-key "\C-xw" 'woman)
(global-set-key [S-iso-lefttab] "\C-q\t")
(global-set-key "\C-x%" 'toggle-read-only)

;(global-set-key "\C-o" 'toggle-input-method) ;; 標準では \C-[backslash]

;;;;;;;;;;;;;;;;;;;;;;
;;; ショートカット ;;;
;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-x,w" 'wl) ; revert of wl-folder-suspend
;; ↓C-c r で統合してみた
;(global-set-key "\C-x,r" 'riece-command-configure-windows)
;(global-set-key "\C-x,\C-r" 'riece) ; ふたつ統合したいな
(global-set-key "\C-x,2" 'navi2ch)
(global-set-key "\C-x,s" 'speedbar)

(global-set-key "\C-x,A" 'rename-buffer)
(global-set-key "\C-x,p" 'pukiwiki-index)
(global-set-key "\C-x,l" 'setnu-mode)
(global-set-key "\C-x,k" 'browse-kill-ring)
;; (global-set-key "\C-x,nv" 'newsticker-show-news)
;; (global-set-key "\C-x,nx" 'newsticker-start-ticker)
;; (global-set-key "\C-x,nz" 'newsticker-stop-ticker)

(global-set-key "\C-x,m" 'woman)

(global-set-key "\C-x,d" 'find-dired)

(global-set-key "\C-x\C-c" (lambda ()
  (interactive)
  (message "enter \"M-x save-buffers-kill-emacs\" by hand.")))
