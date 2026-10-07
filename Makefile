PKG   = hauthesis
DOC   = main
LATEX = xelatex -synctex=1 -interaction=nonstopmode -file-line-error
BIBER = biber

.PHONY: all cls doc thesis clean

all: doc thesis

cls:
	latex -interaction=nonstopmode -file-line-error $(PKG).ins

doc: cls
	$(LATEX) $(PKG).dtx
	makeindex -s gind.ist -o $(PKG).ind $(PKG).idx
	$(LATEX) $(PKG).dtx
	$(LATEX) $(PKG).dtx

thesis: cls
	$(LATEX) $(DOC)
	$(BIBER) $(DOC)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)

AUXEXT = aux bcf bbl blg idx ilg ind log out toc xdv hd listing

clean:
ifeq ($(OS),Windows_NT)
	-@powershell -NoProfile -Command "Get-ChildItem -Path . -Recurse -File -Include *.aux,*.bcf,*.bbl,*.blg,*.idx,*.ilg,*.ind,*.log,*.out,*.toc,*.xdv,*.hd,*.listing,*.synctex.gz,*.fls,*.fdb_latexmk,*.run.xml | Remove-Item -Force -ErrorAction SilentlyContinue"
else
	-@find . -type f \( -name '*.aux' -o -name '*.bcf' -o -name '*.bbl' -o -name '*.blg' -o -name '*.idx' -o -name '*.ilg' -o -name '*.ind' -o -name '*.log' -o -name '*.out' -o -name '*.toc' -o -name '*.xdv' -o -name '*.hd' -o -name '*.listing' -o -name '*.synctex.gz' -o -name '*.fls' -o -name '*.fdb_latexmk' -o -name '*.run.xml' \) -delete
endif
