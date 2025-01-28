# Experiments with dark mode in knitr

The objective for all engines is to produce `img.quarto-light-image` and `img.quarto-dark-image` next to each other (inside `figure > p` to be precise).

For the knitr implementation, we currently rely on the vectorized `dev` chunk option, with

```
#| fig.ext: [.light.svg, .dark.svg]
```

in the cell or in `opts_chunk`. This replays the plot with multiple "devices", although we are really just setting stuff up for the plotting library in a function that sets up the device and returns it.

With those assumptions, it's reasonably safe to pick up any image whose `src` ends with `.light.svg` and put another image next to it pointing to the output with the corresponding dark filename. (Maybe we should check here if both exist and fall back to light. And we'll have to have a list of extensions, probably.)

Then we also apply the `.quarto-light-image` and `.quarto-dark-image` classes, and we're done.

We'll see how well this scales across all R plotting libraries. And we'll also do something similar for HTML output, where the code certainly does need to be run twice and the `dev` chunk option won't help.

This is based on Mickaël Canouil's excellent introduction [Quarto Q&A: How to have images for both light and dark mode](https://mickael.canouil.fr/posts/2023-05-30-quarto-light-dark/).
