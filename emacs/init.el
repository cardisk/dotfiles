; customization of the file where emacs puts its things
(setq custom-file "~/.config/emacs/custom.el")
; loading this configuration
(load-file custom-file)

; taken from: https://github.com/rexim/dotfiles
(load-file "~/.config/emacs/local/rc.el")

; search inside local folder
(add-to-list 'load-path "~/.config/emacs/local/")

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

; basic configuration
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(set-face-attribute 'default nil :height 180)

; ido-mode
(rc/require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ido-mode 1)
(ido-everywhere 1)
