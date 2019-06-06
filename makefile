FILES = metadata.yaml \
		parts/*.md \
		paper.md

OUTPUT = build

FLAGS = --bibliography=bibliography.bib \
		--csl=bibliography.csl \
		-s \
		-f markdown

FLAGS_PDF = --template=template.tex

all: pdf

pdf:
	pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*

