# Makefile for rendering Quarto documents to HTML and PDF

# Source files
MD_SOURCES = \
  cs211-quiz3.md \
  cs211-quiz3-review.md \
  cs211-quiz3-review-solutions.md \
  ma321-quiz4.md \
	ma321-quiz4-review.md \
  ma322-quiz5.md \
	ma322-quiz5-review.md \
	ma322-quiz5-review-solutions.md

# Generate target lists
HTML_TARGETS = $(MD_SOURCES:.md=.html)
PDF_TARGETS = $(MD_SOURCES:.md=.pdf)

# Default target
all: html pdf

# HTML targets
html: $(HTML_TARGETS)

# PDF targets
pdf: $(PDF_TARGETS)

# Pattern rule for HTML
%.html: %.md
	quarto render $< --to html

# Pattern rule for PDF
%.pdf: %.md
	quarto render $< --to pdf

# Clean built files
clean:
	rm -f $(HTML_TARGETS) $(PDF_TARGETS)

# List all targets
list:
	@echo "HTML targets:"
	@echo $(HTML_TARGETS) | tr ' ' '\n'
	@echo "\nPDF targets:"
	@echo $(PDF_TARGETS) | tr ' ' '\n'

# Phony targets
.PHONY: all html pdf clean list
