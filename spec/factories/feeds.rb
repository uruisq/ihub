FactoryBot.define do
  factory :feed01, class: Feed do
    user_id { '1' }
    title { 'ぐずりに効くよだれカバー' }
    content { '歯がため付きのよだれカバーです。電車やバスでの移動中に赤ちゃんがぐずってしまうときに役立ちます。可愛いデザイン3パターン。タグつきや音が鳴るものなど、それぞれ特徴が異なります。歯がためのみ取り外し可能。3種類すべて丸洗いOK。' }
    isbn { '4977489022990' }
    code { '<a href="https://item.rakuten.co.jp/toy-toy-shop/4977489022990/"><img src="https://thumbnail.image.rakuten.co.jp/@0_mall/toy-toy-shop/cabinet/63/4977489022990_001.jpg?_ex=128x128"><br>ぐずりに効くよだれカバー カシャカシャ音入りタグキャンディ付き [PI-023]</a>' }
  end
  factory :feed02, class: Feed do
    user_id { '1' }
    title { 'キャリフリー チェアベルト' }
    content { '外出先のレストラン等で役立つ、赤ちゃん用補助ベルトです。お食事中に赤ちゃんが転げ落ちたりしないよう、イスに取り付けて使います。ママ・パパの腰に取り付けて、ひざの上でのお食事の際のサポートベルトとしても使用できます。' }
    isbn { '4960110222234' }
    code { '<a href="https://item.rakuten.co.jp/kenkoulabo/kenlabb0045y27b2/"><img src="https://thumbnail.image.rakuten.co.jp/@0_mall/kenkoulabo/cabinet/imgsrc_000/d195/d1954/b0045y27b2.jpg?_ex=128x128"><br>日本エイテックス 【日本正規品】 キャリフリー チェアベルト レッド 01-069</a>' }
  end
  factory :feed03, class: Feed do
    user_id { '2' }
    title { '育児便利グッズ' }
    content { 'おしりふきを1枚ずつ取り出せる便利な仕様。中には仕切りがあり、片側にオムツ、もう片側におしりふきを入れられます。外側にもポケットがあり、おむつ処理袋などを入れるのに便利です。アカチャンホンポオリジナル商品です。' }
    isbn { '4560319045476' }
    code { '<a href="https://item.rakuten.co.jp/lecdirect/4560319045476/"><img src="https://thumbnail.image.rakuten.co.jp/@0_mall/lecdirect/cabinet/oshiri/e00547_top.jpg?_ex=128x128"><br>おしりふき 水99 ディズニー ドナルド 【送料無料】 80枚×20 （1600枚）日本製</a>' }
  end
end