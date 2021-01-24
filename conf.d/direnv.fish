if type -q direnv
  function __direnv_export_eval --on-variable PWD
    status --is-command-substitution; and return
    eval (direnv export fish)
  end
else
  echo "Install direnv first! Check http://direnv.net" 2>&1
end
