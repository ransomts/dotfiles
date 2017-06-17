;;; exwm-x.el --- Addition tools for exwm (emacs x window manager)

;; * Header
;; Copyright 2016-2017 Feng Shu

;; Author: Feng Shu <tumashu@163.com>
;; URL: https://github.com/tumashu/exwm-x
;; Version: 1.0
;; Package-Requires: ((cl-lib "0.5")(exwm "0.1")(switch-window "0.10")(swiper "0.9.0"))
;; Keywords: window-manager, exwm

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; * Exwm-X                                                         :README:doc:

;; ** What is Exwm-X

;; Exwm-X is an extension of exwm (emacs x window manager), which can
;; make exwm easier for Mouse-Control-People to use.

;; ** Feature
;; 1. Window operate buttons in mode-line.
;; 2. Move or resize a floating-window without press WIN key.
;; 3. Jump-or-exec, which will switch to an exist app instead of launch it again.
;; 4. Dmenu, just dynamic menu
;; 5. Emacs's kill-ring integration

;; ** Pictures
;; 1. Tilling windows

;;    [[./snapshots/tilling-window.png]]

;; 2. Floating windows

;;    [[./snapshots/floating-window.png]]

;; ** Install
;; 1. Config melpa repository, please see：http://melpa.org/#/getting-started
;; 2. M-x package-install RET exwm-x RET

;; ** Configure

;; *** Add exwm-x directory to emacs's load-path
;; Pasting the below line to "~/.emacs" is a simple way.

;; #+BEGIN_EXAMPLE
;; (add-to-list 'load-path "/path/to/exwm-x")
;; #+END_EXAMPLE

;; *** Edit "~/.initrc" file or "~/.xsession" file
;; You should edit "~/.initrc" file or "~/.xsession" file like below example:

;; #+BEGIN_EXAMPLE

;; # Fallback cursor
;; # xsetroot -cursor_name left_ptr

;; # Keyboard repeat rate
;; # xset r rate 200 60

;; xhost +SI:localuser:$USER

;; exec dbus-launch --exit-with-session emacs --eval '(require (quote exwmx-loader))'
;; #+END_EXAMPLE

;; *** Make "~/.initrc" or "~/.xsession" excutable

;; #+BEGIN_EXAMPLE
;; chmod a+x ~/.xsession
;; #+END_EXAMPLE

;; or

;; #+BEGIN_EXAMPLE
;; chmod a+x ~/.initrc
;; #+END_EXAMPLE

;; *** Edit "~/.exwm-x"
;; Add your exwm config to this file, for example:

;; #+BEGIN_EXAMPLE
;; (require 'exwm)
;; (require 'exwm-x)
;; (require 'exwmx-xfce)
;; (require 'exwmx-example)
;; (exwm-input-set-key (kbd "C-t v") 'exwmx:file-browser)
;; (exwm-input-set-key (kbd "C-t f") 'exwmx:web-browser)
;; (exwm-input-set-key (kbd "C-t c") 'exwmx-xfce-terminal)
;; (exwm-input-set-key (kbd "C-t C-c") 'exwmx-xfce-new-terminal)
;; #+END_EXAMPLE

;; Note: Package "exwmx-example" is Exwm-X buildin example, user can use it to test Exwm-X's
;; features. If it doesn't suit for your need, just copy and paste its useful pieces
;; to your own exwm config :-)


;;; Code:

;; * Code                                                                 :code:
(require 'exwmx-core)
(require 'exwmx-appconfig)
(require 'exwmx-button)
(require 'exwmx-dmenu)
(require 'exwmx-sendstring)

;; * Footer
(provide 'exwm-x)

;;; exwm-x.el ends here
