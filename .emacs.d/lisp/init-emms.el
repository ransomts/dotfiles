
(require 'cl)

(require 'emms-setup)
(emms-all)
(emms-default-players)
(require 'emms-player-mpd)

(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")

(add-to-list 'emms-info-functions 'emms-info-mpd)
(add-to-list 'emms-info-functions 'emms-info-metaflac)
(add-to-list 'emms-player-list 'emms-player-mpd)

(provide 'init-emms)
