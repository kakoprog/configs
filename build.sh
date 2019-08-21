# Run this on repo root.

# install brew - https://brew.sh/index_ja
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish
brew install peco
brew install gibo

cp ./fish/config.fish ~/.config/fish/config.fish

# change login shell - bash to fish
sudo ruby -e 'file = File.open("/etc/shells","a"); file.puts "\n/usr/local/bin/fish"; file.close'
chsh -s /usr/local/bin/fish

# install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add oh-my-fish/plugin-peco
fisher omf/theme-bobthefish
fisher add jethrokuan/z

# install Powerline font for bobthefish
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ../
rm -rf ./fonts # fonts repoはフォントインストール後にはいらないので削除する

# このスクリプト実行後に手動でやること↓
# Termial>環境設定>プロファイルで「Pro」をデフォルトに設定する
# Termial>環境設定>プロファイル>テキスト>フォントで「~ for Powerline」(Roboto Mono for Powerline など)を設定する
# VSCode - https://code.visualstudio.com/
# Android Studio - https://developer.android.com/studio/index.html?hl=ja
# Xcode - AppStore
# flutter - https://flutter.dev/docs/get-started/install/macos
# chrome - https://www.google.com/intl/ja_jp/chrome/
# google日本語入力 - https://www.google.co.jp/ime/
# slack - AppStore