;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)
;; turn on font-lock mode

(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))
(put 'downcase-region 'disabled nil)


;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
(load-file "~/local/cedet/common/cedet.el")


;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberent ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languges only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

(add-to-list 'load-path
             "~/local/ecb")

(require 'ecb-autoloads)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("~/project/lighttpd"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(global-hl-line-mode 1)
(mouse-wheel-mode t)
(setq scroll-step 1)
(setq make-backup-files nil)

(line-number-mode 1)
(column-number-mode 1)

(setq auto-fill-mode 1)

;; Set cursor and mouse-pointer colors
(set-cursor-color "red")
(set-mouse-color "goldenrod")

(global-set-key [(control h)] 'delete-backward-char)
(global-set-key [(M h)] 'help-command)
;;(keyboard-translate ?\C-h ?\C-?)

;;显示日期
(setq display-time-day-and-date t)
;;显示时间
(display-time)
;;时间为24小时制
(setq display-time-24hr-format t)
;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)
;;时间的变化频率
(setq display-time-interval 10)

;;设置有用的个人信息
(setq user-full-name "ideal")
(setq user-mail-address "idealities@gmail.com")

;; 设置编码格式
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(global-linum-mode 1)

(global-unset-key [backspace])
(global-set-key [backspace] 'delete-backward-char)
(global-unset-key [delete])
(global-set-key [delete] 'delete-char)
