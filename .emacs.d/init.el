(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(require 'package)
(package-initialize)

(add-to-list 'load-path "/home/tim/.emacs.d/lisp/")

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(require 'choose-init)

(if (is-exwm)
    (require 'init-exwm)
  (require 'init-default-wm))

(require 'init-customize)
(require 'init-emms)
(require 'init-keybindings)
(require 'init-themes)
