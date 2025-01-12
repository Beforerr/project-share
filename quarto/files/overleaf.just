overleaf_repo := x'https://git@git.overleaf.com/${OVERLEAF_ID:-}'

[private]
clone-overleaf:
    [ -d overleaf ] || git clone {{ overleaf_repo }} overleaf

update-overleaf: sync-overleaf
    cd overleaf; git add .; git commit -am "update"; git push

sync-overleaf: tex-render tex-keep-document tex-export-bib tex-clean

tex-render:
    #!/usr/bin/env bash
    touch files/bibexport.bib
    quarto render --profile man --to $OVERLEAF_FMT
    rsync _manuscript/_tex/ overleaf/ -r
    rsync article_files overleaf -a --size-only

[private]
tex-export-bib:
    #!/usr/bin/env bash
    command -v bibexport >/dev/null || tlmgr install bibexport
    bibexport -o files/bibexport.bib --nosave article.aux

[private]
tex-keep-document:
    #!/usr/bin/env bash
    temp_file=$(mktemp)
    awk '/\\begin\{document\}/ {flag=1; next} /\\end\{document\}/ {flag=0} flag' overleaf/article.tex | awk '!/\\maketitle/' > $temp_file
    mv $temp_file overleaf/article.tex

[private]
tex-clean:
    -rm article.{aux,bbl,blg,log,tex}
    -rm trackchanges.sty *.cls

update-agu-format file:
    #!/usr/bin/env bash
    sed -i '' '/\\usepackage\[[^]]*\]{natbib}/d; /\\bibliographystyle{plainnat}/d' {{ file }}
    sed -E -i '' 's/\\citep\[([^]]*)\]\[([^]]*)\]\{([^}]*)\}/\\cite<\1>[\2]{\3}/g' {{ file }}
    sed -i '' 's/\\citep/\\cite/g' {{ file }}
    sed -i '' 's/\\citet/\\citeA/g' {{ file }}


_update-agu-format_linux file:
    sed -i '' '/\\usepackage\[\]\{natbib\}/d; /\\bibliographystyle\{plainnat\}/d' {{ file }}
