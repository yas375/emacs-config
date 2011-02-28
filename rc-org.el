(setq load-path (cons "vendor/org-mode/lisp" load-path))
(setq load-path (cons "vendor/org-mode/contrib/lisp" load-path))
(require 'org-install)

(setq org-special-ctrl-k t
      org-completion-use-ido t
      org-support-shift-select t)

(setq org-log-done t)

(setq org-directory "~/Dropbox/org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-agenda-files (list "~/Dropbox/org/work.org"
                             "~/Dropbox/org/zachet.org"
                             "~/Dropbox/org/home.org"))
(setq org-mobile-inbox-for-pull "~/Dropbox/org/inbox.org")

(defun my-org ()
  "Create org-mode windows open files"
  (interactive)
  (setq default-frame-alist
	`((width . ,140)
	  (height . ,45)
	  (top . ,5)
	  (left . ,5)
	  (user-position . t)
	  ))
  (delete-other-windows)
  (split-window-horizontally)
  (setq eik-links-win-w 60)
  (shrink-window-horizontally 32)
  (find-file "~/Dropbox/org/links.org")
  (dedicated-mode)
  (other-window 1)
  (find-file "~/Dropbox/org/daily.org")
  (split-window-vertically)
  (split-window-horizontally)
  (other-window 1)
  (find-file "~/")
  (other-window 1)
  (find-file "~/")
  (other-window 1)
  (other-window 1)
  (dedicated-mode)
  (end-of-buffer)                       ; Go to the end of buffer
  (outline-previous-visible-heading 1)  ; Find the last heading
  (org-cycle)                           ; Make subtree visible
  )
