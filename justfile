default:
    just --list

[private]
ln-bib:
    mkdir -p files/bibliography
    [ -e files/bibliography/research.bib ] || ln -s ~/projects/share/bibliography/research.bib files/bibliography/research.bib

sync:
    rsync --update --recursive ~/projects/share/quarto/ ./

sync-overleaf:
    -git clone https://git@git.overleaf.com/678d8cdce110c4927ac5ab0b overleaf
    mkdir -p overleaf/files/bibliography
    rsync --update --recursive bibliography/ overleaf/files/bibliography/
    cd overleaf; git pull; git add .; git commit -am "update"; git push