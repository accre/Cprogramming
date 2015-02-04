CC=/usr/local/gcc/latest/bin/gcc
CFLAGS=-Wall

all: hello_world variable_types pass_command_line_options

hello_world: hello_world.c
	$(CC) -o $@ $< $(CFLAGS)

variable_types: variable_types.c
	$(CC) -o $@ $< $(CFLAGS)

pass_command_line_options: pass_command_line_options.c
	$(CC) -o $@ $< $(CFLAGS)

.PHONY: clean

clean:
	rm hello_world
	rm variable_types
	rm pass_command_line_options