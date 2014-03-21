import os
from blogofile.cache import bf
from scss import Scss

# these docs aren't super accurate
# http://pyscss.readthedocs.org/en/latest/

def run():
    # Available values are 'nested', 'expanded', 'compact', 'compressed' and 'legacy':
    compiler = Scss(scss_opts={"style": "expanded"})
    for fname in os.listdir("_scss"):
        name, ext = os.path.splitext(fname)
        if ext != ".scss":
            continue

        css = compiler.compile(open(os.path.join("_scss", fname)).read())
        with open(
                bf.util.path_join(bf.writer.output_dir, "css", "%s.css" % name),
                "w") as out:
            out.write(css)
