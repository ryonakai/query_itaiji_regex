# Query-regex: 正規表現による異体字吸収クエリ作成システム

`Query-regex` は、与えられた検索クエリを処理し、異体字を含めて検索することのできる正規表現を生成する。

例えば、「福沢諭吉」を「福澤諭吉」や「福澤諭吉」に、「高崎」を「髙嵜」にマッチさせることができる。

任意のコード中で、 `query_regex.rb` を `require` したうえで `query_regex(some_query)` を呼び出すことにより、既存の検索システムを異体字に対応させることができる。

## テスト

`query_regex.rb` にクエリを引数として渡して実行することで、変換結果を確認できる。

```
$ ruby query_regex.rb '福沢諭吉'

> ^(?:福|畗|福)(?:沢|澤|泽|途)(?:諭|谕|喻|喩)(?:吉|桔|姞|㮮)$
```

## 参考URL

クエリを正規表現に変換することで異体字の違いを吸収するアイデアは、下記のブログ記事に基づく。

- [Yahoo! JAPAN Tech Blog 僕とMYMのフロントエンド戦争](https://techblog.yahoo.co.jp/advent-calendar-2018/thankyou-mym/#%E6%A4%9C%E7%B4%A2webworker%E3%81%A8%E3%81%AE%E6%88%A6%E3%81%84)

異体字一覧は、下記のリストを元に作成した。

- [独立行政法人国立文化財機構　東京文化財研究所 異体字リスト](https://www.tobunken.go.jp/archives/%E7%95%B0%E4%BD%93%E5%AD%97%E3%83%AA%E3%82%B9%E3%83%88/)
- [東京大学史料編纂所データベース異体字同定一覧](https://wwwap.hi.u-tokyo.ac.jp/ships/itaiji_list.jsp)