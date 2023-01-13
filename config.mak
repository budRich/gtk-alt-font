NAME         := gtk-alt-font
CREATED      := 2023-01-13
UPDATED      := 2023-01-13
VERSION      := 0.1
DESCRIPTION  := Start programs with an alternative GTK font
AUTHOR       := budRich
CONTACT      := https://github.com/budRich/gtk-alt-font
ORGANISATION := budlabs
USAGE        := $(NAME) [OPTIONS] -- COMMAND

MONOLITH     := _$(NAME)

README_FILES := $(wildcard $(DOCS_DIR)/readme/*.md)
README.md: $(README_FILES)
	@$(making $@)
	{
	  cat $^
	} > $@

