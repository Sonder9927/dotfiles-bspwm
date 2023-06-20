function rsync --wraps=nvim --description 'expand rsync command'
  rsync -ruvzP --delete-after $argv; 
end
