# Vim 設定

## 前提

* 各種プラグインの管理には Vim8 から同梱されている標準のパッケージ管理システムを用いる
    * インストールやアップデート、削除はGitのsubmoduleで管理
* 導入しているプラグインは `.gitmodules` などを参照

## 利用方法(UNIXシステムを想定)

* このディレクトリごと `~/.vim` にシンボリックリンクを貼る
* `vimrc` ファイルのシンボリックリンクを貼る

```
$ ln -s /path/to/this_repo/config/vim ~/.vim
$ ln -s /path/to/this_repo/config/vim/vimrc ~/.vimrc
```

## パッケージを追加する場合

* 起動時に読み込みたいプラグインは `pack/plugins/start` 配下にsubmoduleとして追加する
* 遅延ロードについては現在はまだ利用する気がない

```
$ cd path/to/pack/plugins/start
$ git submodule add https://plugin.repo.com/plugin
```

たとえば [NERDTree](https://github.com/scrooloose/nerdtree) をインストールする場合は下記のようになる

```
$ git submodule add https://github.com/scrooloose/nerdtree.git
```

## パッケージをアップデートする場合

* 一括で submodule をアップデートする

```
$ git submodule foreach git pull
```

## パッケージを削除する場合

* submodule を削除する

```
$ git submodule deinit path/to/submodule
$ rm -rf path/to/submodule
```
