SOURCES = $(wildcard test_*.dxf)
TARGETS = $(SOURCES:test_%.dxf=laser_%.dxf)

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

laser_%.dxf: test_%.dxf dxfsanitizer Makefile
	./dxfsanitizer $< $@
