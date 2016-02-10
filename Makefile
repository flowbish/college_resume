.PHONY: all clean

all: porter_smith_resume.pdf

porter_smith_resume.pdf: porter_smith_resume.tex alec_mori_resume_template.cls
	xelatex porter_smith_resume

clean:
	rm -f *.log *.out *.aux *.pdf
