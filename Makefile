DOC := Language-learning-with-emoji

all: $(DOC).pdf

$(DOC).pdf: *.tex
	lualatex $(DOC) && lualatex $(DOC)

open: $(DOC).pdf
	open $(DOC).pdf

to_csv:
	echo todo ... export vocabulary
	# for use in existing vocabulary trainers ... grep \vocabulary
	# or grep \vocnum -> .go/.py/.. i18n :shrug:

clean:
	rm -f $(DOC).{aux,idx,ild,ind,log,mw,ilg,out,toc} introduction.aux conjugaison-verbes.aux vocabulaire-de-base.aux

realclean: clean
	rm -f $(DOC).pdf
