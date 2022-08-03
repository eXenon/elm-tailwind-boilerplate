# Elm Tailwind Boilerplate

This repo contains the boilerplate for the development of an elm SPA app. It uses `parcel` as a local dev server and build platform, and includes a basic configuration for `tailwindcss`.

## Usage

- Download the repo files to your folder.
- Run `npm install` to get the dependencies.
- Run `npm run init` to create a fresh elm app. A basic Elm boilerplate app is already contained in `Main.elm`.
- If you decided to build an elm SPA, run `elm install elm/url`. This is required if you didn't change the `Main.elm` file. See [No SPA](#no-spa) for details.
- Run `npm run dev` to start the local server.
- Go to `http://localhost:1234` to get your app. By default, it will come with the Elm Debugger attached and full hot-reloading.

## JS, CSS and HTML outside of elm

If you need to use JS that isn't compiled from your elm code, you can add it to the existing `app.js` file, or create a new file and import it into your HTML. Parcel will handle the rest. Similarly for CSS, you can use `app.css` or add your own. Tailwind directives are allowed in the CSS files.

If you need HTML outside of the elm app, see the [No SPA](#no-Spa) section.

## No SPA

If you don't want to create a full on elm SPA, you can do this by changing the existing `Main.elm` file and changing the `Browser.application` initialization to a `Browser.sandbox` call. You should do this before running your init, if you don't want errors or unnecessary elm dependencies. If you do this, elm will only take over the node with ID `root` instead of the entire DOM. This way, you can add your own HTML around the elm app.