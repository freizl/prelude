# Installation notes

- Enable Modules: `cp sample/prelude-modules-freizl.el ./prelude-modules.el`
- Remove `js-mode` snippets at `elph/yasnippet/snippets/js-mode`. it's a little duplicated with `js2-mode`

# Window specials

  - `vendor/win.el`

# texlive in ubuntu

```
apt-get install texlive texlive-latex-extra
```

# ctag

```
cd /path/to/my/project
find src -name '*.js' | xargs etags -f TAGS
```

# flycheck - eslint

- https://github.com/flycheck/flycheck/issues/1155
- easiest fix is to install eslint and all dependeies node module globally.
