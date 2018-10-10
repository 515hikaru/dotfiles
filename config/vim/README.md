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

```
$ cd path/to/pack/plugins/start
$ git submodule add https://plugin.repo.com/plugin config/vim/pack/plugins/start/plugin
```

## パッケージをアップデートする場合

* TBD

## パッケージを削除する場合

* TBD
