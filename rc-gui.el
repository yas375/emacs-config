;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-standart)

;; turn on column number mode
(column-number-mode t)

;; highlight brackets
(show-paren-mode t)

;; frame size
(setq default-frame-alist
      (append default-frame-alist
	      '((width . 200)
		(height . 52))))
(setq initial-frame-alist (copy-alist default-frame-alist))

(setq split-width-threshold nil)

;; remove splash screen
(setq inhibit-splash-screen t)

;; highlight current line
(global-hl-line-mode t)

;; light colors
(custom-set-faces
 '(default ((t (:background "grey90" :foreground "black"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light))
                            (:foreground "gray50"))))
 '(org-hide ((((background light)) (:foreground "grey90")))))

;; TextMate idleFingers
;; (custom-set-faces
;;  '(default ((t (:background "#282828" :foreground "#EEEEEE")))) ;#353535
;;  '(region ((t (:background "#535B72")))) ;#656E87
;;  '(highlight ((t (:background "#353637")))) ;#454647
;;  '(font-lock-comment-face ((t (:foreground "#BC9458")))) ;#CEA564
;;  '(font-lock-string-face ((t (:foreground "#A5C361")))) ;#ABD16A
;;  '(font-lock-keyword-face ((t (:foreground "#DA802B")))) ;#E28833
;;  '(font-lock-constant-face((t (:foreground "#6C99BC")))) ;#74AACA
;;  '(font-lock-builtin-face ((t (:foreground "#6C99BC"))))
;;  '(font-lock-type-face ((t (:foreground "#CCCC33")))) ;#D3D917
;;  '(font-lock-function-name-face ((t (:foreground "#FFF980")))) ;#FEFD86
;;  '(font-lock-variable-name-face ((t (:foreground "#B7DFF8")))) ;#BBE6FB
;; )

;; Change cursor color according to mode; inspired by
;; http://www.emacswiki.org/emacs/ChangingCursorDynamically
(setq djcb-read-only-color       "gray")
;; valid values are t, nil, box, hollow, bar, (bar . WIDTH), hbar,
;; (hbar. HEIGHT); see the docs for set-cursor-type

(setq djcb-read-only-cursor-type 'hbar)
(setq djcb-overwrite-color       "red")
(setq djcb-overwrite-cursor-type 'box)
(setq djcb-normal-color          "blue")
(setq djcb-normal-cursor-type    'bar)

(defun djcb-set-cursor-according-to-mode ()
  "change cursor color and type according to some minor modes."

  (cond
    (buffer-read-only
      (set-cursor-color djcb-read-only-color)
      (setq cursor-type djcb-read-only-cursor-type))
    (overwrite-mode
      (set-cursor-color djcb-overwrite-color)
      (setq cursor-type djcb-overwrite-cursor-type))
    (t
      (set-cursor-color djcb-normal-color)
      (setq cursor-type djcb-normal-cursor-type))))

(add-hook 'post-command-hook 'djcb-set-cursor-according-to-mode)
