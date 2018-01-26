# codegymlab-docs

# Install Basic Latex

Get mactex-basic.pkg from `http://www.ctan.org/pkg/mactex-basic`

Click `mactex-basic.pkg` to install LaTeX.

Update tlmgr:

```sudo tlmgr update --self```

Install the following tools via tlmgr:
```
bash
sudo tlmgr install ucharcat
sudo tlmgr install collection-fontsrecommended
```

# Build

```bash
pandoc --pdf-engine=xelatex -V papersize:a4 -o o.pdf --dpi $dpi $file
```

`$dpi` in `72|96|144`