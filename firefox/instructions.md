<!-- https://codeberg.org/ranmaru22/firefox-vertical-tabs/src/branch/main -->

## How to install

-   Go to `about:config` in your URL bar, search for
`toolkit.legacyUserProfileCustomizations.stylesheets` and set it to `true`.
-   Go to `about:profiles` in your URL bar, click *\"Open Directory\"* next to
your Root Directory under your default profile.
-   If there is no `chrome` folder, create it.
-   Create a file called `userChrome.css` inside the `chrome` folder.
-   Copy and paste the contents of `userChrome.css` into your file (or symlink
it).
-   OPTIONAL: Adjust `--delay` setting in the `userChrome.css` file.
-   OPTIONAL: Adjust `--fullscreen-sidebar-width` setting in the
`userChrome.css` file.
-   Install the [Tab Center
Reborn](https://addons.mozilla.org/en-US/firefox/addon/tabcenter-reborn/)
extension.
-   Make sure to enable *\"Allow this extension to run in Private windows\"* so
you\'re not left stranded while browsing.
-   Go to `about:addons` in your URL bar, select **Tab Center Reborn**, go to
**Preferences** and set:
    -   **Animations**: on.
    -   **Use current browser theme**: on, if you want to use dark mode.
    -   **Compact Mode**: \"Enabled\" is recommended. It works with \"Dynamic\"
    or \"Disabled\" too but looks nicer with only favicons.
    -   **Favicon-only pinned tabs**: Your choice. If set to \"on\", you will
    only have one icon on the top of the collapsed bar and a row of icons in
    the expanded state, with \"off\", they appear like normal tabs (one per
    row) with a pin icon on the right and a separator bar between pinned and
    normal tabs. The mod works well with both settings.
    -   Activate **Custom Stylesheet** and paste the contents of
    `tabCenterReborn.min.css` into the text area below, and click \"Save CSS\"
    under the text box. If you don\'t want to use the minified version, you
    need to remove some code manually, otherwise Firefox will complain about
    too large a payload and ignore the CSS completely (see issue #116).
-   Restart Firefox.
