# Vizita pre-launch site

One static page (`index.html`, no build step) with a live WhatsApp booking demo and two waitlist forms.

## Deploy

**GitHub Pages (current)**
1. Repo Settings → Pages → Source: "Deploy from a branch", branch `main`, folder `/ (root)`. Every push to `main` then updates the site.
2. Create a free form at formspree.io and paste its URL into `window.SITE_CONFIG.formEndpoint` near the bottom of `index.html`. Until then the forms say sign-ups open soon.
3. Custom domain: add a `CNAME` file containing `vizita.ai` and point the domain's DNS to GitHub Pages.


**Netlify (forms work with zero setup: set formEndpoint to "netlify")**
1. New site from the GitHub repo. Build command: none. Publish directory: `.`
2. Netlify detects the `data-netlify` forms on first deploy. Sign-ups appear under Site → Forms; turn on email notifications there.

**Vercel**
1. Import the repo, framework preset "Other", no build command.
2. Vercel has no built-in forms: create a free Formspree (or Basin/Getform) form and paste its URL into `window.SITE_CONFIG.formEndpoint` near the bottom of `index.html`.

## Change the name

```sh
./rename.sh "Vizita" "NewName" "vizita.ai" "newname.com"
```

## Before going live

- Point the domain and set up `hello@` email.
- Add an `og-image.png` (1200×630) and a `<meta property="og:image">` tag for nicer link previews.
- Add a short privacy notice (the forms collect names, emails and phone numbers from EU visitors).
- Analytics: Plausible or Netlify Analytics avoid a cookie banner.
