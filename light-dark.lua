function Image(img)
  if img.src:match '%.light%.svg' then
    img2 = img:walk {}
    img2.src = img.src:gsub('%.light%.svg', '.dark.svg')
    return pandoc.Inlines({img, img2})
  end
end
