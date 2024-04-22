function haskell_i --description 'run ghci for math'
  alacritty --class haskell \
    --working-directory /home/merak/Documents/code/haskell/calc_i \
    -e ghci /home/merak/scripts/haskell/merak.hs;
end
