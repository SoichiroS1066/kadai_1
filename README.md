# kadai_1
[![License: BSD 3-Clause](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
![IC](https://github.com/SoichiroS1066/kadai_1/actions/workflows/test_month_days.yml/badge.svg)
<img src="https://img.shields.io/badge/-Python-yellow.svg?logo=python&style=for-the-badge">

こちらは、2024年度 千葉工業大学先進工学部未来ロボティクス学科2年後期のロボットシステム学の課題1用のリポジトリです。

## リポジトリの概要
*month_days*
- 西暦と月を入力するとその月が何日まであるかを教えてくれる  
※入力に誤りがあった場合（無効な年や月）にはエラーを返す

## リポジトリの使用方法
- *GitHub* から *robosys2024* のリポジトリをクローン  
```
$ git clone https://github.com/SoichiroS1066/kadai_1.git
```  
- *kadai_1*へ移動
```
$ cd kadai_1
```
- Pythonのバージョン確認（推奨: 3.7〜3.10）
```
$ python3 --version
```
- スクリプトを実行
```
$ echo -e "<西暦> \n<月>" | ./month_days
```

## *month_days*

## 機能
西暦と月を入力するとその月が何日まであるかを教えてくれる  
※入力に誤りがあった場合（無効な年や月）にはエラーを返す

## 使い方
- 先述した *month_days* を実行する  
  
`$ echo -e "<西暦> \n<月>" | ./month_days`  

- 実行例
```
$ echo -e "2024 \n11" | ./month_days    # 2024年11月の場合
1~30

$ echo -e "2025 \n1" | ./month_days     # 2025年1月の場合
1~31

$ echo -e "2030 \n4" | ./month_days     # 2030年4月の場合
1~30
```
## 必要なソフトウェア
- *Python*  
テスト済みバージョン: 3.7 ~ 3.10

## テスト環境
- *Ubuntu 24.04.1 LTS*
- *Python 3.7 ~ 3.10*

# LICENSE
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2024 Soichiro Suzuki
