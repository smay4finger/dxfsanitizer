SOURCES = $(wildcard test_*.dxf)
TARGETS = $(SOURCES:test_%.dxf=laser_%.dxf) $(SOURCES:test_%.dxf=laser_%.html) $(SOURCES:test_%.dxf=test_%.html)

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

laser_%.dxf: test_%.dxf dxfsanitizer Makefile
	./dxfsanitizer $< $@ --debug --ignore -l '0' -l '1' -l '2'


%.html: %.dxf
	python3 -m ezdxf.pp $<
