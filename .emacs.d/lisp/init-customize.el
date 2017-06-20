
(require 'fill-column-indicator)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(calendar-latitude 34.67)
 '(calendar-location-name "Boone, NC")
 '(calendar-longitude -82.84)
 '(column-number-mode t)
 '(custom-file "init-customize.el")
 '(dired-listing-switches "-alh")
 '(erc-hide-list (quote ("JOIN" "NICK" "QUIT")))
 '(erc-hide-timestamps t)
 '(erc-log-channels-directory "~/.erc_log")
 '(erc-log-mode t)
 '(erc-log-write-after-insert t)
 '(erc-log-write-after-send t)
 '(erc-nick "Timzi")
 '(erc-prompt "<Timzi>")
 '(erc-sound-mode t)
 '(fci-rule-column 80)
 '(fill-column 80)
 '(message-directory "~/.emacs.d/Mail/")
 '(package-selected-packages
   (quote
    (erc-colorize erc-tweet erc-twitch erc-youtube erc-yt exwm exwm-x fill-column-indicator helm slime lua-mode magit emms emms-info-mediainfo)))
 '(sentence-end-double-space nil)
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable the fill line to show up in source code files, along with hiding
(add-hook 'prog-mode-hook #'fci-mode)
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; Really topic mode is best gnus
(add-hook 'gnus-group-mode-hook #'gnus-topic-mode)

;; Has gnus check for updates every 2 minutes, if gnus is idle
;(require 'gnus)
;(gnus-demon-add-handler #'gnus-demon-scan-news 2 t)

(provide 'init-customize)
