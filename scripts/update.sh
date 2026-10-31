#!/bin/bash
pwd
github="raw.githubusercontent.com"

# 非官方
cask_urls=(
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/pastememo.rb"
    "https://${github}/lifedever/homebrew-tap/refs/heads/main/Casks/task-tick.rb"
    "https://${github}/chen08209/homebrew-tap/refs/heads/main/Casks/flclash.rb"
    "https://${github}/Ender-Wang/homebrew-tap/refs/heads/main/Casks/swifka.rb"
)

# 常用
cask_urls+=(
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/d/dropbox.rb"
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/n/neohtop.rb"
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/o/orbit.rb"
    "https://${github}/Homebrew/homebrew-cask/refs/heads/main/Casks/z/zedis.rb"
)

# 非官方
formula_urls=(
    "https://${github}/omlahore/homebrew-tap/refs/heads/main/Formula/removemacai.rb"
)
# 常用
formula_urls+=(

)

for url in "${cask_urls[@]}"; do
    curl -fsSL ${url} > ./Casks/copy/$(basename "$url")
done

for url in "${formula_urls[@]}"; do
    curl -fsSL ${url} > ./Formula/copy/$(basename "$url")
done
