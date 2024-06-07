ln-bib:
  mkdir -p files/bibliography
  ln -s ~/projects/share/bibliography/research.bib files/bibliography/research.bib

sync:
  rsync --update --recursive ~/projects/share/quarto/ ./