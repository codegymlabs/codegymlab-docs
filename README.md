# codegymlab-docs

# Install Basic Latex

<strike>
Get mactex-basic.pkg from `http://www.ctan.org/pkg/mactex-basic`

Click `mactex-basic.pkg` to install LaTeX.

Update `tlmgr`:

```sudo tlmgr update --self```

Install the following tools via `tlmgr`:
```
bash
sudo tlmgr install ucharcat
sudo tlmgr install collection-fontsrecommended
```
</strike>

Use `https://hub.docker.com/r/codegymlabs/pandoc/` instead:

```bash
docker pull codegymlabs/pandoc
```

# Build

Change working directory to document's parent:

```bash
cd pivotaltracker-gitlab-sonarqube-slack
```

Run `build.sh` or: 

```bash
docker run --rm \
  -v $PWD:/docs \
  -v $PWD/outs:/docs/out \
  codegymlabs/pandoc:pdf \
  pivotaltracker-gitlab-sonarqube-slack.md \
  -o out/o.pdf \
  -V papersize:a4 \
  --latex-engine=xelatex \
  --dpi=144
```

DPI in `72|96|144`