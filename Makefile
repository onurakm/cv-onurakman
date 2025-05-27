# Onur Akman'ın CV üretimi için Makefile
OUTPUT_NAME=onur-akman-cv
MARKDOWN=resume.md

all: html pdf

html:
	pandoc $(MARKDOWN) -s -o $(OUTPUT_NAME).html --metadata title="Onur Akman - CV"

pdf:
	pandoc $(MARKDOWN) -o $(OUTPUT_NAME).pdf

clean:
	rm -f *.html *.pdf
