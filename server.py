# /// script
# requires-python = ">=3.13"
# dependencies = ["bottle", "mistune"]
# ///
# pyright: basic

from functools import cache
from pathlib import Path

import mistune
from bottle import get, run, template

DEBUG = True


def get_terms():
    terms = {}

    for file in Path("terms").glob("*.md"):
        content = file.read_text()
        lines = content.splitlines()
        terms[file.stem] = {
            "name": lines[1].split(": ")[1],
            "period": lines[2].split(": ")[1],
            "meaning": lines[3].split(": ")[1],
            "html": mistune.html(content.split("---")[2]),
        }

    return terms


# Terms should be reloaded every request for debugging
if not DEBUG:
    get_terms = cache(get_terms)


@get("/")
def index():
    return template("index", terms=get_terms())


@get("/<slug:re:[a-z]+>")
def term(slug):
    return template("term", term=get_terms()[slug])


if __name__ == "__main__":
    if DEBUG:
        run(debug=True, reloader=True)
    else:
        run()
