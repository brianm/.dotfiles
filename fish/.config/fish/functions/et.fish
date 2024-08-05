if type -q mg
  function et --wraps=mg --description 'alias et=mg'
    mg $argv
  end
end
