function rs --description 'alias rs to rsync and expand rsync command'
  # rsync -ruvzP --delete-after $argv; 
  rsync -ruvzP $argv; 
end
