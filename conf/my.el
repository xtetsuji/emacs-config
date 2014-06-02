;; font
;; add at 2014/02/03
(create-fontset-from-ascii-font "Menlo-12:weight=normal:slant=normal" nil "menlokakugo")
(set-fontset-font "fontset-menlokakugo"
                  'unicode
                  (font-spec :family "Hiragino Kaku Gothic ProN" :size 13)
                  nil
                  'append)
(add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))

;; ツールバーは表示しない
(tool-bar-mode 0)

;; カーソルのブリンクは抑止
(blink-cursor-mode -1)


