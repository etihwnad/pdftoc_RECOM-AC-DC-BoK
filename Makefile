

SOURCE=original_cropped.pdf
INFO=toc.info
OUTPUT=RECOM_AC-DC-Book-of-Knowledge-3.pdf


default: $(OUTPUT)


# mark the generated info file as transient
# this may need to change if the file is to include more than the ToC
.INTERMEDIATE: $(INFO)

$(INFO): toc.votl totoc.py
	./totoc.py $< > $@

$(OUTPUT): $(SOURCE) $(INFO)
	pdftk $(SOURCE) update_info $(INFO) output $(OUTPUT)



clean:
	rm -f $(INFO)
	rm -f $(OUTPUT)

clean-all: clean
	rm -f $(SOURCE)
