<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{{f"{title} - " if title else ""}}Rot Dictionary</title>
    <link rel="stylesheet" href="/static/styles.css" />
    <style>
      :root {
        --color-bg: hsl(0 0% 10%);
        --color-bg-secondary: hsl(0 0% 12%);
        --color-bg-secondary-border: hsl(0 0% 15%);
        --color-fg: hsl(0 0% 90%);
        --color-fg-secondary: hsl(0 0% 70%);
        --color-fg-tertiary: hsl(0 0% 50%);
        --color-fg-link: hsl(240 80% 80%);
      }

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font: inherit;
      }

      ul {
        list-style-type: none;
      }

      a {
        color: inherit;
        text-decoration: none;
        transition-duration: 100ms;
      }

      a:hover {
        filter: brightness(120%);
      }

      body {
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
          Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
          sans-serif;
        line-height: 1;

        background-color: var(--color-bg);
        color: var(--color-fg);
      }

      .container {
        height: 100vh;
        max-width: 60rem;
        margin: 0 auto;
        padding: 2rem;

        display: flex;
        flex-direction: column;
        gap: 2rem;
      }

      hr {
        color: var(--color-bg-secondary-border);
      }

      .badge {
        text-transform: uppercase;
        font-size: 14px;
        color: var(--color-fg-secondary);
      }

      nav > ul {
        display: flex;
        gap: 2rem;
      }

      nav > ul > li > a {
        color: var(--color-fg-secondary);
      }

      footer {
        color: var(--color-fg-tertiary);
      }
    </style>
  </head>

  <body>
    <div class="container">
      <nav>
        <ul>
          <li>
            <a href="/">Rot Dictionary</a>
          </li>
          <li>
            <a href="https://github.com/interrrp/rot-dictionary">Code</a>
          </li>
          <li>
            <a href="https://github.com/interrrp/rot-dictionary/issues/new"
              >Suggest a word</a
            >
          </li>
        </ul>
      </nav>
      <hr />

      {{ !base }}

      <hr />
      <footer>
        <p>Rot Dictionary is an open-source project under the MIT license.</p>
      </footer>
    </div>
  </body>
</html>
