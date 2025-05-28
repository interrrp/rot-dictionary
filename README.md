# Rot Dictionary

A dictionary for slang/"brainrot" terms.

## Contributing

### Adding a new term

Create a new file in `terms` named like `term-name.md` with the following content:

```
---
name: Term name
period: Gen Z, Gen Alpha, etc.
meaning: Short meaning of the term
---

Detailed content in Markdown
```

### Fixing server bugs

I highly recommend using [uv](https://github.com/astral-sh/uv/). Run the server with `RD_DEBUG=1 uv run server.py`.

## Licensing

Rot Dictionary is under the [MIT License](./LICENSE).
