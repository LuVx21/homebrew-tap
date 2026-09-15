#!/bin/bash

github="raw.githubusercontent.com"

cask_urls=(
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/pastememo.rb"
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/task-tick.rb"
)

formula_urls=(

)

for url in "${cask_urls[@]}"; do
    curl -fsSL ${url} > ../Casks/$(basename "$url")
done

for url in "${formula_urls[@]}"; do
    curl -fsSL ${url} > ../Formula/$(basename "$url")
done
