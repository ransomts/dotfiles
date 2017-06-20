
;; These used to work, but started bonking out by not knowing what class-v is
;;(require 'helm-config)

;;(global-set-key (kbd "M-x") #'helm-M-x)
;;(global-set-key (kbd "C-x C-f") #'helm-find-files)

(global-set-key (kbd "C-x e") #'eshell)
(global-set-key (kbd "C-M-g") #'gnus)
(global-set-key (kbd "M-o") #'other-window)
(global-set-key (kbd "C-x k") #'kill-this-buffer)
(global-set-key (kbd "C-c C-c") #'compile)
(global-set-key (kbd "C-x O") #'previous-multiframe-window)
(global-set-key (kbd "C-x G") #'magit-status)
(global-set-key (kbd "C-x g") #'magit-status)
(global-set-key (kbd "M-h") #'mark-paragraph)
(global-set-key (kbd "C-h") #'delete-backward-char)
(global-set-key (kbd "M-h") #'backward-kill-word)
;(global-set-key (kbd "\C-c a") 'org-agenda)
(global-set-key (kbd "\C-x 2")
		(lambda ()
		  (interactive)
		  (split-window-vertically)
		  (other-window 1)))

(global-set-key (kbd "<C-f10>") #'emms-previous)
(global-set-key (kbd "<C-f11>") #'emms-pause)
(global-set-key (kbd "<C-f12>") #'emms-next)
(global-set-key (kbd "C-c <C-f11>") #'emms-stop)
(global-set-key (kbd "<C-s-f11>") #'emms-play-dired)

(defun dired-dotfiles-toggle ()
  "Show/hide dot-files."
  (interactive)
  (when (equal major-mode 'dired-mode)
    (if (or (not (boundp 'dired-dotfiles-show-p)) dired-dotfiles-show-p) ; if currently showing
	(progn
	  (set (make-local-variable 'dired-dotfiles-show-p) nil)
	  (message "h")
	  (dired-mark-files-regexp "^\\\.")
	  (dired-do-kill-lines))
      (progn (revert-buffer) ; otherwise just revert to re-show
	     (set (make-local-variable 'dired-dotfiles-show-p) t)))))

(define-key dired-mode-map (kbd "M-h") #'dired-dotfiles-toggle)

(provide 'init-keybindings)
