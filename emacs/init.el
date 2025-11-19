; customization of the file where emacs puts its things
(setq custom-file "~/.emacs.d/custom.el")
; loading this configuration
(load-file custom-file)

; taken from: https://github.com/rexim/dotfiles
(load-file "~/.emacs.d/local/rc.el")

; search inside local folder
(add-to-list 'load-path "~/.emacs.d/local/")

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

; basic configuration
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(set-face-attribute 'default nil :height 140)

; ido-mode
(rc/require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ido-mode 1)
(ido-everywhere 1)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(rc/require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

(rc/require 'move-text)
(global-set-key (kbd "M-<up>") 'move-text-up)
(global-set-key (kbd "M-<down>") 'move-text-down)

(defun duplicate-line ()
 	"Duplicate current line"
 	(interactive)
	(let ((column (- (point) (point-at-bol)))
        	(line (let ((s (thing-at-point 'line t)))
                	(if s (string-remove-suffix "\n" s) ""))))
    	(move-end-of-line 1)
    	(newline)
    	(insert line)
    	(move-beginning-of-line 1)
    	(forward-char column))
)

(global-set-key (kbd "C-,") 'duplicate-line)

