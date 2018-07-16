;; 定义一些启动目录，方便下次迁移修改
(defvar lazycat-emacs-root-dir (file-truename "~/lazycat-emacs/site-lisp"))
(defvar lazycat-emacs-config-dir (concat lazycat-emacs-root-dir "/config"))
(defvar lazycat-emacs-extension-dir (concat lazycat-emacs-root-dir "/extensions"))
(defvar lazycat-emacs-sdcv-data-dir (concat lazycat-emacs-root-dir "/sdcv-dict"))

(with-temp-message ""                   ;抹掉插件启动的输出
  ;; 必须加载的
  (require 'theme)
  (require 'init-startup)
  (require 'init-flycheck)
  (require 'lazy-set-key)
  (require 'one-key)
  (require 'paredit)
  (require 'paredit-extension)
  (require 'tabbar)
  (require 'basic-toolkit)
  (require 'redo)
  (require 'highlight-parentheses)

  (require 'init-backup)
  (require 'init-smex)
  (require 'init-linum)
  (require 'init-auto-save)
  (require 'init-tabbar)
  (require 'init-mode)
  (require 'init-qt)
  (require 'init-ruby)
  (require 'init-dired)
  (require 'init-session)
  (require 'init-paredit)
  (require 'init-indent)
  (require 'init-company-mode)
  (require 'init-one-key)
  (require 'init-iedit)
  (require 'init-visual-regexp)
  (require 'init-key)
  (require 'init-generic)
  (require 'init-auto-indent-mode)
  (unless (featurep 'cocoa)
    (require 'init-minibuffer-tray))

  ;; 可以延后加载的
  (run-with-idle-timer
   1 nil
   #'(lambda ()
       (require 'pretty-lambdada)
       (require 'browse-kill-ring)
       (require 'elf-mode)

       (require 'init-tempbuf)
       (require 'init-eldoc)
       (require 'init-doxymacs)
       (require 'init-yasnippet)
       (require 'init-package)
       (require 'init-smooth-scrolling)
       (require 'init-cursor-chg)
       (require 'init-winpoint)
       (require 'init-benchmark)
       (require 'init-info)
       (require 'init-aggressive-indent)
       (require 'init-auto-sudoedit)
       (require 'init-pdf-tools)

       (require 'init-idle)
       )))

(provide 'init)
