# Makefile for rendering Quarto documents to HTML and PDF

# Source files
MD_SOURCES = \
  cs211-quiz3.qmd \
  cs211-quiz3-review.qmd \
  cs211-quiz3-review-solutions.qmd \
  ma321-quiz4.qmd \
	ma321-quiz4-review.qmd \
	ma321-quiz4-review-solutions.qmd \
  ma322-quiz5.qmd \
	ma322-quiz5-review.qmd \
	ma322-quiz5-review-solutions.qmd

# Generate target lists
HTML_TARGETS = $(MD_SOURCES:.qmd=.html)
PDF_TARGETS = $(MD_SOURCES:.qmd=.pdf)

# Default target
all: html pdf

# HTML targets
html: $(HTML_TARGETS)

# PDF targets
pdf: $(PDF_TARGETS)

# Pattern rule for HTML
%.html: %.qmd
	quarto render $< --to html

# Pattern rule for PDF
%.pdf: %.qmd
	quarto render $< --to pdf

# Clean built files
clean:
	rm -rf $(HTML_TARGETS) $(PDF_TARGETS) *_files

# List all targets
list:
	@echo "HTML targets:"
	@echo $(HTML_TARGETS) | tr ' ' '\n'
	@echo "\nPDF targets:"
	@echo $(PDF_TARGETS) | tr ' ' '\n'

# Phony targets
.PHONY: all html pdf clean list
