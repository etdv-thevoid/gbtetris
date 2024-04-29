.PHONY: all clean

CC := gcc
CFLAGS := -O3 -flto -std=c11 -Wall -Wextra -pedantic

tools := \
	scan_includes

all: $(tools)
	@:

clean:
	$(RM) $(tools)

%: %.c
	$(CC) $(CFLAGS) -o $@ $<
