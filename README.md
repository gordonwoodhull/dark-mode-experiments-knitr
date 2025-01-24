# Example of light and dark mode using lua filter and css

This is an example of light and dark mode using CSS and a Lua filter, based on Mickaël Canouil's excellent introduction [Quarto Q&A: How to have images for both light and dark mode](https://mickael.canouil.fr/posts/2023-05-30-quarto-light-dark/).

Instead of using JavaScript to change `img.src` dynamically, we use CSS selectors to hide light images in dark mode, and dark images in light mode. Then we use Lua to add the dark image directly after every light image.

Seems like the approach should also work for Jupyter.

Using an image filename convention seems fine. Of course we'd have to generalize this beyond the current `.light.svg` to some set of image format extensions.
