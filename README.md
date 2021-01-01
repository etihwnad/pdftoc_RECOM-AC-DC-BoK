# pdftoc RECOM AC/DC Book of Knowledge

Add bookmarks to the PDF document for quicker navigation.

Second edition, 2019, document from:
https://recom-power.com/en/support/resource-library/resource-library.html.
Save as `original.pdf`.

The original has a mix of 1-up and 2-up pages.
I used [BRISS](http://briss.sourceforge.net/) to split the pages out so that there was one book page per PDF page and saved as `original_cropped.pdf`.

This repository only includes the table of contents information and scripting tools.
Neither the original document or the with-bookmarks version is included here to comply with the original copyright terms.


## Requirements

* `pdftk` and `gs` (`sudo apt install pdftk ghostscript`)
* Python 3
