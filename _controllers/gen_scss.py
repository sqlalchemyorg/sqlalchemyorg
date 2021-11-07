import os
from zeekofile.cache import zf
import sass

# these docs aren't super accurate
# http://pyscss.readthedocs.org/en/latest/

def run():
    # Available values are 'nested', 'expanded', 'compact', 'compressed' and 'legacy':
    for fname in os.listdir("_scss"):
        name, ext = os.path.splitext(fname)
        if ext != ".scss":
            continue

        with open(os.path.join("_scss", fname)) as _file:
            css = sass.compile(string=_file.read())
        with open(
                zf.util.path_join(zf.writer.output_dir, "css", "%s.css" % name),
                "w") as out:
            out.write(css)
