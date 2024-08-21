# MetaModule Docs

Requires mkdocs and material theme (installed by requirements.txt).

Clone the repo and set up a python venv (the first time):

```
git clone .../metamodule-docs
cd metamodule-docs
cd docs-src
python3 -m venv pyenv
source pyenv/bin/activate
pip install -r requirements.txt
```

To end the python venv:

```
deactivate
```

From now on when you want to serve or build the site:

```
cd docs-src
source pyenv/bin/activate

# To serve it at localhost:8000
make serve

# To build the static site to metamodule-docs/
make build
```


