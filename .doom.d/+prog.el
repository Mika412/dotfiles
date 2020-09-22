;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PYTHON
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(after! python
  (setq python-indent-offset 4
        python-shell-interpreter "python3"
        pippel-python-command "python3"
        conda-env-home-directory (expand-file-name "~/.conda")
        importmagic-python-interpreter "python3"
        flycheck-python-pylint-executable "pylint"
        flycheck-python-flake8-executable "flake8")

    ;; ignore some linting info
  (if (featurep! :tools lsp)
      (setq lsp-pyls-plugins-pycodestyle-ignore  [ "E501" ]
            lsp-pyls-plugins-pylint-args [ "--errors-only" ]))
  )
