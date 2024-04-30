### Build objects

roms := \
	tetris.gb \
	tetris11.gb

rom_obj := \
	main.o

tetris_obj         := $(rom_obj:.o=.o)
tetris11_obj       := $(rom_obj:.o=11.o)

### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink


### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: tetris tetris11 compare compare11 clean tidy tools
.DEFAULT_GOAL := tetris

tetris:   tetris.gb
tetris11: tetris11.gb

compare:
	$(SHA1) -c tetris.sha1

compare11:
	$(SHA1) -c tetris11.sha1

clean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

tidy:
	$(RM) $(roms) \
	      $(roms:.gb=.sym) \
	      $(roms:.gb=.map) \
	      $(tetris_obj) \
	      $(tetris11_obj) \
		  rgbdscheck.o
	$(MAKE) clean -C tools/

tools:
	$(MAKE) -C tools/

RGBASMFLAGS = 
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
endif

$(tetris_obj):         RGBASMFLAGS +=
$(tetris11_obj):       RGBASMFLAGS += -D INTERNATIONAL

rgbdscheck.o: rgbdscheck.asm
	$(RGBASM) -o $@ $<

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
preinclude_deps := includes.asm $(shell tools/scan_includes includes.asm)
define DEP
$1: $2 $$(shell tools/scan_includes $2) $(preinclude_deps) | rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

# Dependencies for shared objects objects
$(foreach obj, $(tetris_obj), $(eval $(call DEP,$(obj),$(obj:.o=.asm))))
$(foreach obj, $(tetris11_obj), $(eval $(call DEP,$(obj),$(obj:11.o=.asm))))

endif

tetris_opt   = -v -t TETRIS -n 0 -l 1
tetris11_opt = -v -t TETRIS -n 1 -l 1

%.gb: $$(%_obj)
	$(RGBLINK) -n $*.sym -m $*.map -tdp 0xFF -o $@ $(filter %.o,$^)
	$(RGBFIX) $($*_opt) $@
	sort -o $*.sym $*.sym


### Misc file-specific graphics rules

gfx/common2.trunc.2bpp: gfx/common2.2bpp
	cp $< $@
	truncate -s 3152 $@

gfx/titlescreen.trunc.2bpp: gfx/titlescreen.2bpp
	cp $< $@
	truncate -s 1744 $@

gfx/shuttle.trunc.2bpp: gfx/shuttle.2bpp
	cp $< $@
	truncate -s 3280 $@


### Catch-all graphics rules

%.2bpp: %.png
	rgbgfx -d 2 -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<
