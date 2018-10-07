SOURCES = $(wildcard test_*.dxf)
TARGETS = $(SOURCES:test_%.dxf=laser_%.dxf) $(SOURCES:test_%.dxf=laser_%.html) $(SOURCES:test_%.dxf=test_%.html)

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

laser_%.dxf: test_%.dxf dxfsanitizer Makefile
	./dxfsanitizer $< $@


%.html: %.dxf
	python3 -m ezdxf.pp $<
