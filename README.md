# Elm Tailwind Boilerplate

This repo contains the boilerplate for the development of an Elm app. It uses `parcel` as a local dev server and build platform, and includes a basic configuration for `tailwindcss`.

## Usage

- Download the repo files to your folder.
- Run `npm install` to get the dependencies.
- Run `npm run init` to create a fresh elm app. A basic Elm boilerplate app is already contained in `Main.elm`.
- Run `npm run dev` to start the local server.
- Go to `http://localhost:1234` to get your app. By default, it will come with the Elm Debugger attached and full hot-reloading.

## JS, CSS and HTML outside of elm

If you need to use JS that isn't compiled from your elm code, you can add it to the existing `app.js` file, or create a new file and import it into your HTML. Parcel will handle the rest. Similarly for CSS, you can use `app.css` or add your own. Tailwind directives are allowed in the CSS files.

If you need HTML outside of the elm app, see the [Tweaks](#Tweaks) section.

## Tweaks

Depending on your usage, you can do the following:
- Use a full elm SPA using `Browser.application`. This will make elm handle the entire DOM, including the page title and local navigation.
- Use a simpler elm `Browser.document` to only allow elm to handle a single DOM node in your HTML page.