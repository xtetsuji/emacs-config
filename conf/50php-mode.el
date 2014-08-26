;;; 2011/02/03(Thu) from cvs:dot/daichi/.emacs

;;; php-mode
;(add-hook 'php-mode-user-hook
;	  '(lambda ()
;	     (setq-default tab-width 8)
;	     (setq indent-tabs-mode nil)
;	     (setq c-basic-offset 8)))
(defun php-mode-hook ()
  (setq tab-width 4
        c-basic-offset 4
        c-hanging-comment-ender-p nil
	indent-tabs-mode
	(not
	 (and (string-match "/\\(PEAR\\|pear\\)/" (buffer-file-name))
	      (string-match "\.php$" (buffer-file-name))))))

; http://blog.asial.co.jp/190
;(autoload 'php-mode "php-mode")
;(setq auto-mode-alist
;      (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
(add-hook 'php-mode-user-hook
  '(lambda ()
     (setq php-manual-url "http://www.php.gr.jp/phpmanual/")
     (setq php-manual-path "/home/ogata/php_manual_ja/")))

