import 'quarto/files/overleaf.just'

default:
    just --list

[private]
ln-bib:
    mkdir -p files/bibliography
    [ -e files/bibliography/research.bib ] || ln -s ~/projects/share/bibliography/research.bib files/bibliography/research.bib

sync:
    rsync --update --recursive ~/projects/share/quarto/ ./