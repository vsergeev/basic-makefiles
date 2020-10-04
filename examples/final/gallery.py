import sys
import collections
import mako.template

Image = collections.namedtuple('Image', ['filename', 'thumbnail'])

items = [Image(filename, filename.replace(".", ".thumb."))
         for filename in sys.argv[1:]]

template = mako.template.Template(filename="gallery.mako")
output = template.render(items=items, columns=3)
sys.stdout.write(output)
