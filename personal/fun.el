(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "python -m json.tool" (buffer-name) t)))

(defun punchin ()
  (interactive)
  (find-file "~/Dropbox/work/dochazka"))
