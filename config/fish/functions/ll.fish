# Defined in - @ line 1
function ll --wraps='exa -la' --description 'alias ll exa -la'
  exa -la $argv;
end
