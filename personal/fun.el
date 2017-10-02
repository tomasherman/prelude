(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "python -m json.tool" (buffer-name) t)))

(defun punchin ()
  (interactive)
  (find-file "~/Dropbox/work/dochazka"))

(defun ar ()
  (interactive)
  (find-file "~/Dropbox/results/index.org"))

(defun ar/daily ()
  (interactive)
  (find-file "~/Dropbox/results/daily.org"))

(defun ar/daily-work ()
  (interactive)
  (find-file "~/Dropbox/results/daily-work.org"))

(setq epa-pinentry-mode 'loopback)

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

(set-face-attribute 'default nil
                    :family "Monaco" :height 135 :weight 'normal)

(setq org-src-fontify-natively t)
