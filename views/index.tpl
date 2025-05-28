% rebase("base.tpl", title="")

<main>
  <ul>
    % for slug, term in terms.items():
    <li>
      <a href="/{{ slug }}">
        <article>
          <header>
            <h3>{{ term["name"] }}</h3>
            <span class="badge">{{ term["period"] }}</span>
          </header>
          <main>
            <p>{{ term["meaning"] }}</p>
          </main>
        </article>
      </a>
    </li>
    % end
  </ul>
</main>

<style>
  main > input {
    margin-bottom: 0.75rem;
    width: 100%;
    background-color: var(--color-bg-secondary);
    border: 1px solid var(--color-bg-secondary-border);
    color: var(--color-fg);
    padding: 1rem;
    border-radius: 8px;
    outline: none;
  }

  main > ul {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(min(100%, 16rem), 1fr));
    gap: 0.75rem;
  }

  main > ul > li > a {
    height: 100%;
  }

  main > ul > li > a > article {
    height: 100%;
    background-color: var(--color-bg-secondary);
    padding: 1rem;
    border-radius: 8px;
    border: 1px solid var(--color-bg-secondary-border);
  }

  main > ul > li > a > article > header {
    display: flex;
    justify-content: space-between;
    margin-bottom: 0.5rem;
    gap: 1rem;
  }

  main > ul > li > a > article > header > h3 {
    font-weight: 500;
    line-height: 1.2;
    max-width: 70%;
  }

  main > ul > li > a > article > main > p {
    line-height: 1.5;
  }

  main > ul > li > a > article > main {
    color: var(--color-fg-secondary);
  }
</style>
