; http://www.gfd-dennou.org/member/uwabami/cc-env/emacs/el-get_config.html
(unless (locate-library "emu")
  (el-get 'sync '(apel)))
(el-get 'sync '(elscreen))
(setq elscreen-prefix-key (kbd "C-z"))
(setq elscreen-display-tab 4)
(when (require 'elscreen nil 'noerror)
  (elscreen-start))
