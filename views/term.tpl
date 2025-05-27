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
    font-size: 28px;
  }

  header>p {
    color: var(--color-fg-secondary);
  }
</style>
