;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; essential
(setq visible-bell nil)
;(menu-bar-mode -1)
(tool-bar-mode -1)
(setq cursor-in-non-selected-windows nil)
(setq query-replace-highlight t)
(setq vc-follow-symlinks t)
(blink-cursor-mode 0)

;(set-language-environment "Japanese")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 雑多な setq
(setq make-backup-files nil)
(setq require-final-newline t) ;; Always end a file with a newline
(setq next-line-add-newlines nil) ;; Stop at the end of the file, not just add lines
(setq scroll-conservatively 1) ;; 画面端でカーソルを一行だけスクロール
(setq kill-ring-max 10)

;; chmod +x
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; 大文字小文字同一視補完 http://d.hatena.ne.jp/hirose31/20130304/1362372183
(setq completion-ignore-case t)


;; TODO: misc.el や my.el と重複している設定があるかもしれないので整理
