Some very stupid laser cutter software is not able to use DXF specialties like
blocks, polylines, ellipses and so on. So I wrote this piece of Python script
for sanitizing files by removing all complicated elements from DXF. Blocks will
be exploded and replaced by simple DXF statements, all kind of specialties will
be removed and only simple LINE, CIRCLE and ARC will remain. Color attribute
is correctly copied.

There is still support missing for ELLIPSE and LWPOLYLINE. I plan to support
them eventually when I need them.

The python script is relying on the great ezDXF library from
https://ezdxf.mozman.at/.
