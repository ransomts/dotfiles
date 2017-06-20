
(defun is-exwm ()
  (string= "exec dbus-launch --exit-with-session emacs" line))

(defun is-awesome ()
  (string= "exec awesome" line))

(defun trim (str)
  "Trim leading and tailing whitespace from STR."
  (replace-regexp-in-string (rx (or (: bos (* (any " \t\n")))
				    (: (* (any " \t\n")) eos)))
			    ""
			    str))

(setq line (trim (shell-command-to-string "grep '^exec' ~/.xinitrc")))

;; Use these to replace the grep call up above, if it really matters that much
(defun filter (condp list)
  "Why doesn't elisp have a filter built in?"
  (delq nil
	(mapcar (lambda (x) (and (funcall condp x) x)) list)))

(defun read-lines (filePath)
  "Return a list of lines of a file at filePath."
  (with-temp-buffer
    (insert-file-contents filePath)
    (split-string (buffer-string) "\n" t)))

(provide 'choose-init)
