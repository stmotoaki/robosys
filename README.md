# robosys2023

このリポジトリはロボットシステム学で出された課題を提出する場所である。

## plusコマンド
![test](https://github.com/stmotoaki/robosys2023/actions/workflows/test.yml/badge.svg)

* 入力された引数をすべて足す。
* 数字以外が読み込まれていた場合エラー表示する。

<例>  
```
$ ./plus 1 2 3 A 4 5  
$ ERROR:4番目に数字以外が含まれる  
$ 15.0  
```

## インストール
```
$ git clone https://github.com/stmotoaki/robosys2023.git
```
## 必要なソフトウェア
* Python
  * テスト済み: 3.7～3.10

## テスト環境
* Ubuntu 20.24

## 著作権・ライセンス
* このソフトウェアパッケージは,３条項BSDライセンスの下,再配布および使用が許可されています.
* このパッケージのコードは,下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作物としたものです.
	* [ryuichiueda/my_slides/tree/master/robosys_2022] (http://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

© 2023 Akira Omoto
