# dr-quine

## is 何

いくつかの言語で作成した[クワイン](<https://ja.wikipedia.org/wiki/%E3%82%AF%E3%83%AF%E3%82%A4%E3%83%B3_(%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0)>)。\
ただし**追加の要件**がある。\
要件は 3 種類あるので、クワインも 3 種類ある。

## 追加の要件

### 1. Colleen

ちょっとややこしいクワイン。

- ソースファイル名は`Colleen.*`(拡張子は使用言語に合わせる)
- `main`関数ともう 1 つ, あわせて 2 つの関数を持つこと。
  - いずれの関数もプログラム実行時に実際に呼び出されること。
- 2 つの異なるコメントを持つこと。
- コメントのうち 1 つは main 関数内に, もう 1 つは関数外に置くこと。

### 2. Grace

**自己を複製**する。

- ソースファイル名は`Grace.*`(拡張子は使用言語に合わせる)
- トップレベルには以下のものだけを置いてよい:
  - 3 つの`define`
  - 1 つのコメント
- `main`関数を**直接定義してはならない**。
  - 定義自体は許される。あくまで**直接**定義が NG.
- 通常のクワインとは異なり, 自身のソースコードを標準出力ではなくファイル`Grace_kid.*`(拡張子は使用言語に合わせる)に書き出す。

### 3. Sully

自己複製に加えて**自己実行**も行う。

- ソースファイル名は`Sully.*`(拡張子は使用言語に合わせる)
- ソースコード自体に対しては特に制限はない。
- コンパイルして実行すると, 以下のような結果になること:
  - `Sully_X.*`という名前のソースファイルを生成する。
    - `X`は非負整数で, ソースファイル内にハードコードされていること。
  - `X > 0`だった場合はさらに, ソースファイルを元にしたプログラムを実行する。
  - ソースファイル`Sully_X.*`を元にしたプログラムを実行すると、ソースファイル`Sully_Y.*`が生成される。ただし`Y = X - 1`.
  - `Sully.*`を元にしたプログラムを実行して生成される`Sully_X.*`の`X`は, `Sully.*`にハードコードされている`X`と同じであること。
    - つまり、この時に限り`Sully.*`と`Sully_X.*`には差異がない。
- ソースファイル`Sully.*`および生成されたソースファイル`Sully_X.*`に差異があるなら、それは`X`のハードコード部分のみであること。

## ソースコード

これらの要件を満たす変種クワインを,

- C 言語
- X68_64 アセンブリ
  - アセンブラとして NASM を想定している
- Ruby

の 3 言語で実装している。
