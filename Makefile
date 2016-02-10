.PHONY: all clean

all: main.pdf

main.pdf: main.tex alec_mori_resume_template.cls
	xelatex main

clean:
	rm -f *.log *.out *.aux *.pdf
