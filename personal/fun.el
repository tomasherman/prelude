(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "python -m json.tool" (buffer-name) t)))

(defun punchin ()
  (interactive)
  (find-file "~/Dropbox/work/dochazka"))

; deft
(global-set-key [f8] 'deft)
(setq deft-directory "~/Dropbox/notes")
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)


(setq org-journal-dir "~/Dropbox/journal")
(setq org-journal-file-format "%Y%m%d.org") 
(setq org-journal-enable-encryption t)
(setq org-log-done 'time)


(add-hook 'org-mode-hook (lambda() (visual-line-mode 1)))
(add-hook 'org-mode-hook (lambda() (whitespace-mode 0)))
(add-hook 'org-mode-hook (lambda() (org-bullets-mode 1)))
(add-hook 'org-mode-hook (lambda() (yas-minor-mode 1)))
