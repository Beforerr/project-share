[private]
install-deps: install-python-deps install-julia-deps

[private]
install-python-deps:
    #!/usr/bin/env sh
    set -eux
    if git ls-files --error-unmatch pixi.lock &> /dev/null; then
        pixi install --frozen
    elif [ -f "pixi.toml" ] || [ -f "pyproject.toml" ]; then
        pixi install
    fi

[private]
install-julia-deps:
    #!/usr/bin/env sh
    set -eux
    if [ -f "Project.toml" ]; then
        julia --project -e 'using Pkg; Pkg.update();'
    fi