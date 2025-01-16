# Variables
ASCIIDOCTOR = asciidoctor
ASCIIDOCTOR_PDF = asciidoctor-pdf
ASCIIDOCTOR_EPUB = asciidoctor-epub3
SRC_DIR = src
BUILD_DIR = build
INDEX_FILE = index

# Reglas
all: pdf epub html


# para usar un archivo de configuración personalizado:  -a pdf-theme=theme.yml
pdf:
	$(ASCIIDOCTOR_PDF) -a source-highlighter=pygments -a pygments-linenums-mode=table -D $(BUILD_DIR) $(SRC_DIR)/$(INDEX_FILE).adoc

epub:
	$(ASCIIDOCTOR_EPUB) -a source-highlighter=pygments -a pygments-linenums-mode=table -D $(BUILD_DIR) $(SRC_DIR)/$(INDEX_FILE).adoc

html:
	$(ASCIIDOCTOR) -a source-highlighter=pygments -a pygments-linenums-mode=table -D $(BUILD_DIR) $(SRC_DIR)/$(INDEX_FILE).adoc

clean:
	rm -f $(BUILD_DIR)/*
