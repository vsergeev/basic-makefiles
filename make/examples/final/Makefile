IMAGES = $(wildcard *.jpg)
WEBPAGE = gallery.html
THUMB_WIDTH = 320
OUTPUT_DIR = dist

IMAGE_FILES = $(patsubst %.jpg,$(OUTPUT_DIR)/%.jpg,$(IMAGES))
THUMB_FILES = $(patsubst %.jpg,$(OUTPUT_DIR)/%.thumb.jpg,$(IMAGES))

.PHONY: all
all: $(OUTPUT_DIR)/$(WEBPAGE)

.PHONY: clean
clean:
	rm -rf $(OUTPUT_DIR)

$(OUTPUT_DIR)/$(WEBPAGE): $(IMAGE_FILES) $(THUMB_FILES) \
                          gallery.mako gallery.py
	python3 gallery.py $(IMAGES) > $@

$(OUTPUT_DIR)/%.jpg: %.jpg | $(OUTPUT_DIR)
	cp $< $@

$(OUTPUT_DIR)/%.thumb.jpg: %.jpg | $(OUTPUT_DIR)
	convert -resize $(THUMB_WIDTH)x $< $@

$(OUTPUT_DIR):
	mkdir $(OUTPUT_DIR)
