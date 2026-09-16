#!/bin/bash
pwd
github="raw.githubusercontent.com"

# 非官方
cask_urls=(
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/pastememo.rb"
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/task-tick.rb"
)

# 常用
cask_urls+=(
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/d/dropbox.rb"
)

# 非官方
formula_urls=(

)
# 常用
formula_urls+=(

)

for url in "${cask_urls[@]}"; do
    curl -fsSL ${url} > ./Casks/$(basename "$url")
done

for url in "${formula_urls[@]}"; do
    curl -fsSL ${url} > ./Formula/$(basename "$url")
done
