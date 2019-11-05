;;;;
;;;; ~/.dotfiles/.emacs
;;;; 
;;;; Joshua Zhou <jzxhua@gmail.com>
;;;;
;;;; Linked to from ~/.emacs.d/init.el
;;;; 

;;; [2019-11-04] Add all .el's in config to the load path
(add-to-list 'load-path "~/.config/emacs/")

;;; [2019-11-04] Clean visual mode
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;; [2019-11-04] Set meta keybindings
(setq mac-command-modifier 'meta)

;;; [2019-11-04] Include line numbers
;;; TODO make linum global rather than just on loading here.
(linum-mode 1)
(setq linum-format " %4d ")

;;; [2019-11-04] Enable ido-mode
(require 'ido)
(ido-mode t)

;;; [2019-11-04] Enable smex-mode in ./smex.el
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
