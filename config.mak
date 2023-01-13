NAME         := gtk-alt-font
CREATED      := 2023-01-13
UPDATED      := 2023-01-13
VERSION      := 0.1
DESCRIPTION  := Start programs with an alternative GTK font
AUTHOR       := budRich
CONTACT      := https://github.com/budRich/gtk-alt-font
ORGANISATION := budlabs
USAGE        := $(NAME) [FONT] -- COMMAND

MONOLITH     := _$(NAME)

.PHONY: manpage
manpage: $(MANPAGE)

MANPAGE      := $(NAME).1

$(MANPAGE): config.mak $(CACHE_DIR)/help_table.txt
	@$(info making $@)
	uppercase_name=$(NAME)
	uppercase_name=$${uppercase_name^^}
	{
		echo "# $$uppercase_name "           \
				 "$(manpage_section) $(UPDATED)" \
				 "$(ORGANISATION) \"User Manuals\""

	  printf '%s\n' '## NAME' \
								  '$(NAME) - $(DESCRIPTION)' \
	                '## OPTIONS'

	  cat $(CACHE_DIR)/help_table.txt

	} | go-md2man > $@


README.md: $(CACHE_DIR)/help_table.txt
	@$(making $@)
	{
	  cat $(CACHE_DIR)/help_table.txt
	} > $@

