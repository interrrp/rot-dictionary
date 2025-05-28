% rebase("base.tpl", title="{{ term['name'] }}")

<header>
  <div>
    <h1>{{ term["name"] }}</h1>
    <span class="badge">{{ term["period"] }}</span>
  </div>
  <p>{{ term["meaning"] }}</p>
</header>

<main>
  {{! term["html"] }}
</main>

<style>
  header>div {
    display: flex;
    align-items: center;
    gap: 1rem;
    margin-bottom: 0.75rem;
  }

  header>div>h1 {
    font-size: 24px;
  }

  header>p {
    color: var(--color-fg-secondary);
  }

  main {
    line-height: 1.7;
  }

  main a {
    color: var(--color-fg-link);
  }

  main h2 {
    font-size: 20px;
    margin: 1rem 0;
  }

  main blockquote {
    border-left: 2px solid var(--color-bg-secondary-border);
    padding-left: 1rem;
    font-style: italic;
    color: var(--color-fg-secondary);
  }
</style>
