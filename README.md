# homebrew-tap

[nagi](https://github.com/myksyut/nagi)（ターミナルで使う TODO アプリ）の Homebrew の tap。

```sh
brew install myksyut/tap/nagi
brew upgrade nagi        # 更新
```

Mac（Apple シリコン）と Linux（x86_64）。中身は nagi の Releases のバイナリで、ビルドはしない。
formula は、nagi の Release が出るたびに、nagi の `scripts/homebrew-formula.sh` で更新される。
