<h1><font size=”7″>軟式野球選手データベース 〜あなたが知らない凄い選手を見つけよう〜</font></h1><br>

<h2><font size="4">【概要】</font></h2><br>
開発したアプリケーションを紹介します。 <br>
実装した箇所、および開発を通じて得られた経験についても紹介します。<br>

<h2><font size="4">【アプリケーション情報】</font></h2><br>
・野球選手紹介アプリケーションを作成しました。<br>
・接続先 URL:https://rubberballplayer.herokuapp.com/<br>

<h2><font size="4">【開発状況】</font></h2><br>
・開発環境:Haml/CSS/Ruby/Ruby on Rails/MySQL/Github/Heroku/Visual Studio Code <br>
・開発期間:約 10 週間<br>
・1日あたりの平均作業時間:約 2-3 時間<br>

<h2><font size="4">【動作確認方法】</font></h2><br>
・接続先およびログイン情報については、上記の通りです。 <br>
・同時に複数の方がログインしている場合に、ログインできない可能性があります。<br>
・投稿の方法は以下の手順で確認できます。<br>

1) アカウントを作成頂きログインします<br>
2) トップページから注目選手投稿ボタン押下 <br>
3) 選手情報入力<br>
4) 選手投稿完了<br>


・トップ画面
<img src="トップ画面.png">
・ログイン後ユーザートップ画面 <br>
 「新規登録」ボタンより、ユーザー登録して頂くと表示されます。<br>
  ※ユーザー画像は、「編集」より登録することができます。
・注目選手一覧 <br>
  過去に投稿した選手を一覧表示で確認することができます。<br>
・注目選手投稿 <br>
  新しい選手情報を入力することができます。 <br>
  「投稿」ボタンで選手投稿が完了します。<br>
  
<h2><font size="4">【開発を通じて得られた知見】</font></h2><br>
<h3><font size="2">・工夫した点</font></h3><br>
マークアップ作業に関しては、背景画像を野球関連にすることで、どのような投稿アプリになるの かイメージしやすいように設定、編集時に、現在 DB に入っている画像は表示されるように設定しました。<br>
バックエンドに関しては、flash[:notice]を使って、投稿後や削除後に文字が表示されるように設 定、画像が無い場合でも、エラーにならず、“画像がありません”と表示することで、プレー画像が 無い場合でも、気軽に投稿できるようにしました。<br>

<h3><font size="2">・苦労した点</font></h3><br>
1.エラーの解決 <br>
よく見るエラーに関しては、少しずつ対策ができるようになってきました。<br>
しかし、これまで体験したことの無いエラー(LoadError、Sprockets::Rails::Helper::AssetNotPrecompiled in〜等)DB 周りの エラーに関しては、かなり苦戦しました。<br>
それでも、学んだ教材を読み返してみる、google 検索、ト ライアンドエラーを繰り返して、何とかひとつずつ解決していきました。<br>

2.画像投稿機能追加<br>
from_tag でコードを記述していた為、form_with に書き直し form を作成するところからスタートしました。<br>
また、DB に画像が保存できない状態が続いていたが、マイグレーションファイルのテーブルに変更を加えていない事に気付くまで時間がかかりましたが゙、<br>
現在は無事保存されるようになり、投稿後、修正する際も画像が表示されるようになりました。<br>

<h2><font size="4">【今後追加してみたい機能】</font></h2><br>
1.コメント機能<br>
投稿に対して、自由にコメントができるようにして、ユーザー同士の交流を活性化できるようにし ていきたいと考えています。<br>
2.動画投稿機能、複数画像投稿機能<br>
プレー動画が投稿できる、もしくは複数画像投稿できるようになることで、よりイメージができるようにすることで、その選手の特徴などが伝わりやすくなると考えております。<br>