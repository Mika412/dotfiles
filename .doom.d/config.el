(setq user-full-name "Mykhaylo Marfeychuk"
      user-mail-address "mykhamarf17@gmail.com")

(setq doom-theme 'doom-palenight)

(setq
 doom-font (font-spec :family "Source Code Pro" :size 18)
 doom-big-font (font-spec :family "Source Code Pro" :size 20)
 doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 18))
;; projectile-project-search-path '("~/dev/" "~/dev/uni/" "~/dev/personal/")

(setq projectile-project-search-path '("~/dev/" "~/dev/uni/" "~/dev/personal/"))

(after! company
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1))

(setq display-line-numbers-type 'relative)

(after! treemacs
  (treemacs-follow-mode)
  (treemacs-git-mode 'deferred)
  (setq! treemacs-show-hidden-files nil
         treemacs-collapse-dirs 3))
