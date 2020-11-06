# 【問題】繰り上がりのない計算

# 定義
result = []

# 入力
num_a, num_b = gets.split.map(&:to_i)

# 出力
ary_a = (num_a.to_s).chars.map(&:to_i)
ary_b = (num_b.to_s).chars.map(&:to_i)
a_count = ary_a.length
b_count = ary_b.length

if a_count >= b_count
  a_count.times do
    unless ary_b.empty?
      result << (ary_a.pop + ary_b.pop) % 10
    else
      result << ary_a.pop
    end
  end
else
  b_count.times do
    unless ary_a.empty?
      result << (ary_b.pop + ary_a.pop) % 10
    else
      result << ary_b.pop
    end
  end
end

puts result.reverse.map(&:to_s).join

# 解き方の概要
# 入力数値A,Bを文字列に変換し、一文字ずつの配列に変換、その後に再度数値に変換する
# => 入力数値が一桁ずつの格納された配列A,Bをつくる
# 配列数の多い方(桁数の多い)の要素回数分、配列A、Bそれぞれの末尾から順に足す（popメソッドを使用）
# 上記の結果に「% 10」とすることで、足し算結果の1の位だけを取得し、出力用の配列に挿入する
# 配列から空になった場合には、残っている方の配列だけを出力用の配列に挿入する
# 足した結果の1の位を結果の配列に挿入する
# 出力用の配列を降順に変換（reversメソッド）、文字列変換（.map(&:to_s)メソッド）、要素結合（joinメソッド）し、出力

# よく使用するメソッド
# 文字列に変換 => .to_s
# 数値に変換 => .to_i
# 文字列を一文字ずつを要素とする配列に変換 => .chars
# 配列の数値要素を文字列に変換する => .map(&:to_s)
# 配列の文字要素を数値に変換する => .map(&:to_i)
# 数値を一桁ずつの配列に変換する => num.to_s.chars.map(&:to_i)
# 配列の要素を結合する（文字列） => .join
# joinメソッドは引数に渡した文字を結合部分に挿入する => ["おは", "よう"].join("-") =>"おは-よう"
# 小数点以下の切り捨て => .floor


# 【問題】レポート評価
# あなたはパイザ大学の教授です。学生に課したレポートを評価するため、あなたは自動でレポートの評価をするプログラムを考えることにしました。

# 今回あなたが出題したレポートには n 問の問題があり、1 問あたりの配点はそれぞれ 100 / n 点です。ここで n は 100 の約数です。

# あなたはレポートに提出期限を設けていました。提出期限から遅れたレポートのうち、遅れた日数が 9 日以下のレポートは得点を 8 割にすることにしました。
# このとき得点に小数点以下が発生した場合切り捨てます。10 日以上遅れたレポートの評価は 0 点とすることにしました。


# # 定義
# students = []
# result = []

# # 入力
# num, test_num = gets.split.map(&:to_i)

# num.times do
#   student = gets.split.map(&:to_i)
#   students << student
# end

# point = 100 / test_num

# # 出力
# students.each do |student|
#   score = point * student[1]
#   if student[0] >= 10
#     result << 0
#   elsif student[0] >= 1
#     result << (score * 0.8).floor
#   else
#     result << score
#   end
# end

# result.each do |n|
#   if n >= 80
#     puts "A"
#   elsif n >= 70
#     puts "B"
#   elsif n >= 60
#     puts "C"
#   else
#     puts "D"
#   end
# end



# 【問題】試験の合格判定
# 総合力を重視する大学の入試では 1 次試験 (英語、数学、理科、国語、地理歴史の 5 科目で各 100 点満点) の成績で2段階選抜を行います。
# 2段階選抜を通過する条件は以下のようになっています。
# 全科目の合計得点が 350 点以上
# 理系の受験者の場合は理系 2 科目 (数学、理科) の合計得点が 160 点以上
# 文系の受験者の場合は文系 2 科目 (国語、地理歴史) の合計得点が 160 点以上
# 受験者それぞれの各科目の点数が入力されるので、何人2段階選抜を通過できるかを求めてください。

# 自分の回答（不正解。出力結果はあっているが、どこに原因があるのかわからず、、）
# 定義
# students = []
# pass = []

# # 入力
# num = gets.to_i
# num.times do
#   student = gets.split
#   students << student
# end

# # 出力
# students.each do |student|
#   point =  student[1..5].map(&:to_i).sum
#   if point >= 350
#     if student[0] == "l"
#       l_point = student[4, 5].map(&:to_i).sum
#       pass << student if l_point >= 160
#     elsif student[0] == "s"
#       s_point = student[2, 3].map(&:to_i).sum
#       pass << student if s_point >= 160
#     end
#   end
# end
# puts pass.length

# 【問題】壊れかけのキーボード
# あなたは、壊れかけのキーボードを持っています。
# しかしあなたは気にせずキーボードを使い続けるので、ついにキーボードが壊れてしまいました。

# キーにはそれぞれ耐久度があります。耐久度は、キーを打つと、そのキーの耐久度が 1 減ります。
# 耐久度が 0 になると、そのキーは入力しても何も出力しないボタンになってしまいます。

# そのため、あなたは自分が入力した文章とティスプレイに出ている文章が違うことに気づきました。

# 各キーの耐久度と入力した文章が与えられるので、ディスプレイに映された文字列を出力するプログラムを書いてください。

# ただし、キーボードはアルファベットのみを入力するために用いるものとします。

# # 入力
# count = gets.split.map(&:to_i)
# ary = (gets.chomp).chars

# # 定義
# alpha = ('a'..'z').to_a #アルファベットの配列
# hash = {} # アルファベットと残数をハッシュで定義用のハッシュ
# result = [] # 出力用の配列

# # アルファベットをキー、残り回数をバリューとしたハッシュを作成
# alpha.each_with_index do |s, i|
#   hash[s] = count[i]
# end

# # 入力文字列（一文字ずつの配列）の一文字ずつに対して、残り回数が0でなければ出力配列（result）に格納
# ary.each do |str|
#   if hash[str] != 0
#     result << str
#     hash[str] -= 1 # 残り回数を減らしておく
#   end
# end

# puts result.join # 文字列配列を繋げる

# # 入力
# アルファベットごとの出力できる数字
# 文字列

# # 出力
# 一文字ずつ、残りの回数が0でなければ、配列の入れる
# 残りの回数を一つ減らす



# 【問題】文章サイズの変更
# Paiza 君はデスクトップアプリケーションを開発しています。Paiza 君は、そのアプリケーションに、
# ウィンドウのサイズを変更すると文章表示部分の大きさも同様に変更され、文章表示部分の幅に合わせて自然に改行されるという機能をつけようと考えています。
# Paiza 君の代わりに、現在の文章表示部分の高さと幅、及び変更後の幅を元に、新しく表示される文章を表示するプログラムを作成してください。

# 入力例 1 の場合、以下の図のように高さが 6 行、幅が 8 文字の文章が与えられています。
# そこで、一度、一つの文字列とし、幅が 6 文字で改行することにより、出力例 1 のように出力することになります。


# # 入力
# ary = []
# h, w, w_new = gets.split.map(&:to_i)
# h.times do
#   str = gets.split
#   ary << str
# end

# # 定義
# x = (h * w) % w_new
# h_new = 0

# # 出力
# str = ary.join
# if x == 0
#   h_new = (h * w) / w_new
# elsif x != 0
#   h_new = ((h * w) / w_new )+ 1
# end

# h_new.times do |i|
#   puts str.slice!(0..(w_new - 1))
# end


# 【問題】ピラミッドの作り方
# あなたのクラスでは、運動会の出し物で人間ピラミッドをやることになりました。
# ある段数のピラミッドを組むのに必要な人数を求めるプログラムをつくりましょう。
# ピラミッドでは以下のように上から i 段目には i 人が必要となります。

# num = gets.to_i
# x = 0
# num.times do |i|
#   x += i + 1
# end
# puts x

# 【問題】株の売買
# あなたは、株の売買でのお金儲けを考えています。
# N 日の間、1 日に一度株価をチェックし、以下のルールに従い売買をします。

# ・株価が c_1 円以下の場合、1 株買う
# ・株価が c_2 円以上の場合、持ち株「を」すべて売る
# ・株価が c_1 円、c_2 円の間の場合は、何もしない
# ・N 日目には、上記を行わず持ち株をすべて売る

# 入力は以下のフォーマットで与えられます。
# N c_1 c_2
# p_1
# p_2
# ...
# p_N
# ・1 行目には、株を売買する日数を表す整数 N、株の売買条件を表す整数 c_1, c_2 がこの順で半角スペース区切りで与えられます。
# ・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、i 日目の株価を表す整数 p_i が与えられます。

# prices = [] # 株価
# purchases = [] # 購入した株価
# disposal = [] # 売却益

# def buy_and_sell(prices, price_a, price_b, purchases, disposal)
#   prices.each_with_index do |price, i|
#     # 最終日の場合、保有株を全て売却する
#     if i == prices.length - 1
#       purchases.each do |purchase|
#         disposal << (price - purchase)
#       end
#     # 最終日ではない場合
#     else
#       # 購入ラインの株価以下の場合、購入する（purchasesに値を挿入する）
#       if price <= price_a
#         purchases << price
#       # 売却ラインの株価以上の場合、全ての損益計算し（disposalに挿入）、売却する（purchasesの初期化）
#       elsif price >= price_b && purchases
#         purchases.each do |purchase|
#           disposal << (price - purchase)
#         end
#         purchases = [] # 初期化
#       end
#     end
#   end
#   puts disposal.sum
# end

# num, price_a, price_b = gets.split.map(&:to_i)
# num.times do
#   price = gets.to_i
#   prices << price
# end

# buy_and_sell(prices, price_a, price_b, purchases, disposal)

# # 配列の要素の削除
# 配列.delete(削除する要素)
# 配列.delete_at(削除する位置)
# 配列.shift(先頭から削除する要素の数)
# 配列.slice!(削除開始位置, 削除する長さ)



# 【問題】簡易カードゲーム
# あなたは、1 から 9 の数字が書かれたカードを用いて、簡易的なポーカーで遊ぶことにしました。
# この簡易ポーカーでは手札が 4 枚で、この 4 枚の組み合わせにより以下の 5 種類の役が存在します。

# num = gets.to_i
# cards = []

# num.times do
#   card = gets.chomp
#   cards << card
# end

# cards.each do |card|
#   count = 0
#   card.chars.each do |n|
#     card.chars.each do |x|
#       if n == x
#         count += 1
#       end
#     end
#   end
#   if count == 16
#     puts "Four Card"
#   elsif count == 10
#     puts "Three Card"
#   elsif count == 8
#     puts "Two Pair"
#   elsif count == 6
#     puts "One Pair"
#   elsif count == 4
#     puts "No Pair"
#   end
# end

# 【問題】先生の宿題
# あなたは小学校一年生の先生です。今週の授業で、足し算と引き算を教えます。あなたは、足し算と引き算を用いた宿題を作る必要があり、そのためのプログラムを書くことにしました。
# 以下の手順で問題をランダム生成するプログラムはもうできているのですが、その答えを求めるプログラムはまだできていません。答えを求めるプログラムを書いてください。

# [問題生成の手順]
# 1. 正しい式 a + b = c, あるいは a - b = c (a, b, c, は整数) を生成する
# 2. a, b, c のうちいずれか 1 つを空欄にする

# この空欄に入れるべき整数が「答え」となります。
# ここに、足し算、引き算の問題について例を一つずつ示します。


# 入力は以下のフォーマットで与えられます。
# a op b = c
# ・文字 a, op, b, "=" (半角等号), c がこの順に半角スペース区切りで与えられ、これらの並びが 1 つの問題を表します。
# 　・op には足し算あるいは引き算を表す記号が入ります。
# 　・a, b, c は "x" (英字小文字), "0", "1",..., "9" のうちいずれかで、"x" は空欄を表します。
# 入力値最終行の末尾に改行が１つ入ります。

# a, op, b, e, c = gets.split

# def calc(a,op,b,c)
#   if "x" == a
#     if op == "+"
#       c.to_i - b.to_i
#     elsif op == "-"
#       c.to_i + b.to_i
#     end
#   elsif "x" == b
#     if op == "+"
#       c.to_i - a.to_i
#     elsif op == "-"
#       a.to_i - c.to_i
#     end
#   elsif "x" == c
#     if op == "+"
#       a.to_i + b.to_i
#     elsif op == "-"
#       a.to_i - b.to_i
#     end
#   end
# end

# puts calc(a,op,b,c)


# 【問題】数字の調査
# あなたは 2 進数について勉強しました。
# そこで、あなたは任意の数字の 2 進数表示のどの桁が 1 になるのか、もしくは 0 になるのかが気になりました。

# 知りたい桁が複数指定されるので、その桁が 0 なのか 1 なのか判定するプログラムを作成してください。
# 知りたい桁は、与えられた数字を 2 進数にしたときの桁数より小さいものとします。

# 入力例 1 の場合、以下の図のように、与えられた数字は 44 であるので、2 進数にした場合 101100 になります。そして、出力する値は順番に、右から 4 番目、2 番目、6 番目の数字なので、1, 0, 1 の各番号に改行を含んだものとなります。
# 知りたい桁数、知りたい10進数数字
# 自分の回答
# num, x = gets.split.map(&:to_i)
# ary = []

# num.times do |i|
#   ary << gets.to_i # 配列に知りたい桁を順番に挿入
# end

# binary_ary = x.to_s(2).chars #2進数に変換して一文字ずつの配列にする

# ary.each do |n|
#   puts binary_ary.last(n).first
# end


# 【問題】ログのフィルター
# あなたはサーバ管理者です。 日々洪水のように流れるログを追っています。
# とうとう自分の目と頭では処理しきれない量になってしまったため、プログラムを作って、重要な文字列を含むログだけ抽出する事にしました。

# 例えば、入力例 2 では、ログは上から順に "pizza"、 "paiza"、 "aizu"、 "ai"、 "sai" の 5 つです。
# この 5 つのログに対して、重要な文字列 "ai" が含まれているのは "pizza" 以外の 4 つです。
# 結果として "pizza" だけが除かれ、 "paiza"、 "aizu"、 "ai"、 "sai" がこの順に抽出されます。
# 入力は以下のフォーマットで与えられます。
# N
# G
# S_1
# ...
# S_N
# ・1 行目には、文字列の数 N が整数で与えられます。
# ・2 行目には、抽出する対象の重要な文字列 G が与えられます。
# ・3 行目から続く N 行のうち i 行目 (1 ≦ i ≦ N)には、ログの内容であ

# ary = []
# count = 0

# num = gets.to_i
# target = gets.chomp

# num.times do
#   str = gets.chomp
#   ary << str
# end

# ary.each do |str|
#   if str.include?(target)
#     puts str
#     count += 1
#   end
# end
# puts "None" if count == 0


# 【問題】テストの採点
# あなたは大学の講義を受講した学生の評価をしています。
# 学生の成績はテストの点数から 欠席回数 × 5 点 を引いた点数とすることにしました。
# 成績がマイナスとなった場合は 0 とします。

# 学生のテストと欠席回数のデータが学籍番号順に与えられたとき、
# 成績が合格点以上になっている学生の学籍番号を順に出力するプログラムを作成してください。
# 学籍番号は 1 から順に与えられます。

# 入力は以下のフォーマットで与えられます。
# N M
# a_1 b_1
# a_2 b_2
# ...
# a_N b_N
# ・1 行目に学生の人数を表す整数 N と合格点を表す整数 M が半角スペース区切りで与えられます。
# ・続く N 行のうち i 行目 (1 ≦ i ≦ N ) には学籍番号 i の学生のテストの点数を表す整数 a_i、欠席回数を表す整数 b_i が半角スペース区切りで与えられます。
# ・入力は合計で N + 1 行であり、入力値最終行の末尾に改行が 1 つ入ります。


# students = [] # 学生を配列でまとめる
# num, pass = gets.split.map(&:to_i)

# num.times do |i|
#   student = [] # 学生
#   i += 1
#   point, absence = gets.split.map(&:to_i) # 点数と欠席回数を入力
#   student.push(i, point, absence) # 学籍番号、点数、欠席回数の順で挿入
#   students << student # studentsに学生データを挿入
# end

# def check(students, pass)
#   students.each do |student|
#     demerit = student[2] * 5 # 欠席の減点を計算
#     score = student[1] - demerit # 減点を調整した点数を計算
#     score = 0 if score < 0 # 点数がマイナスの場合、0点とする

#     if score >= pass
#       puts student[0]
#     end
#   end
# end

# check(students, pass)


# 【問題】ミニコンピュータ
#あなたの友人である K 氏は電子工作が大好きです。
# 彼は毎晩試行錯誤を重ね、最近ついにコンピュータのミニチュア版を開発することに成功しました。

# 彼のコンピュータはちょうど 2 つの変数を持っており、どちらの変数も 0 で初期化されています。
# また、彼のコンピュータは次の 3 種類の命令を実行することができます。

# ・SET i a : 変数 i に値 a を代入する (i = 1, 2)
# ・ADD a :「変数 1 の値 + a」を計算し、計算結果を変数 2 に代入する
# ・SUB a :「変数 1 の値 - a」を計算し、計算結果を変数 2 に代入する

# 彼は、自分のコンピュータが正しく動いているかどうかチェックしてほしいと依頼してきました。
# コンピュータが完成して嬉しそうな彼の頼みを断るわけにはいきません。

# 自分の回答
# order = []
# a = 0
# b = 0

# num = gets.to_i
# num.times { order << gets.chomp.split }

# order.each do |n|
#   if n[0] == "SET"
#     if n[1] == "1"
#       a = n[2].to_i
#     elsif n[1] == "2"
#       b = n[2].to_i
#     end
#   elsif n[0] == "ADD"
#     b = a + n[1].to_i
#   elsif n[0] == "SUB"
#     b = a - n[1].to_i
#   end
# end

# puts "#{a} #{b}"


# 【問題】枠で囲む
# あなたは友人に向けてメールを送ろうとしています。
# ただメールを送るだけではつまらないので、文字列を装飾して送ることにしました。
# 送りたい文字列の周囲を "+" で枠のように囲んで装飾します。

# このような処理を手作業で行いたくないため、プログラムで装飾しようとしています。
# この "+" の枠で囲む装飾をするプログラムを書いてください。

# 入力例 1 では "Hello" という文字列を送ります。
# この文字を枠で囲み装飾すると、以下のようになります。
# +++++++
# +Hello+
# +++++++

# str = gets.chomp

# def decoration(str)
#   dec = "+" * (str.length + 2)
#   puts dec
#   puts "+#{str}+"
#   puts dec
# end

# decoration(str)

# 【問題】カード並べ
# フライト中に退屈してしまったあなたは、持っているトランプを使用した簡単な遊びを考えました。

# この遊びでは 1 から 9 までの数字のカードのみを 4 枚使用します。
# ただし、この 4 枚の中で同じ数値のカードが重複する事もあります。
# ルールは以下の通りです。

# 4 枚のカードを横に並べます。
# 左から 2 枚のカード、右から 2 枚のカードをそれぞれ 2 ケタの整数とみなし、和を計算します。
# あらゆる並べ方を試し、和の最大値（最大スコア）を求めます。

# カード 4 枚に書かれた数が与えられるので、最大スコアを出力してください。
# 入力例 1 の 2, 9, 3, 8 の 4 枚を使う場合、以下の 12 通りの和の最大値 175 が最大スコアとなります。

# カードの 4 枚の並べ方は 4! = 24 通り存在しますが、足し算は順序に依存しないため、12 通りのみ考慮すればよいことに注意してください。
# たとえば、9, 2, 3, 8 の順で並べた場合のスコアは 92 + 38 = 130 となります。

# ・92 + 38 = 130
# ・92 + 83 = 175
# ・93 + 28 = 121
# ・93 + 82 = 175
# ・98 + 23 = 121
# ・98 + 32 = 130
# ・39 + 28 = 67
# ・38 + 29 = 67
# ・82 + 39 = 121
# ・89 + 23 = 112
# ・89 + 32 = 121
# ・83 + 29 = 112

# 自分の回答（出力結果は正解だけど、ロジック部分が問題の意図するやり方と異なる）
# num1, num2, num3, num4 = gets.split.map(&:to_i)
# numbers = [num1, num2, num3, num4]

# def maximum_sum(numbers)
#   max_nums = numbers.max(2)
#   min_nums = numbers.min(2)

#   result_number = []
#   max_nums.each_with_index do |n, i|
#     result_number << (n.to_s + min_nums[i].to_s).to_i
#   end
#   puts result_number.sum
# end

# maximum_sum(numbers)


# 【問題】ポイント払い

# N市に住んでいるあなたは、普段の移動手段は全て Nバスを使います。Nバスでは nikaという IC カードを乗車券として使うことができます。
# 事前に nika にチャージをすることで利用できます。

# バスの運賃支払に nika のカード残額を使うと、運賃の 10 % が nika ポイントとしてたまります。

# バスを降車する時に、支払う運賃以上のポイントがある場合は、ポイントが優先的に運賃の支払いに使われます。
# ただし、1 ポイントは 1 円になります。ただし、ポイントで運賃を支払った場合、新たなポイントは発生しません。


# あなたは、カード残金とポイントをどれくらい使ったか知るためのプログラムを書くことにしました。
# あなたには、最初にチャージする現金と、バスを利用した時にかかった料金のリストが与えられるので、毎回の降車時に残っているお金とポイントを出力してください。
# ただし、途中でカード残高とポイントの両方が運賃を下回ることはありません。
# 入力例 1 は以下のようになります。

# 自分の回答（一応正解）
# charge, num = gets.split.map(&:to_i)
# fare = []
# point = 0

# num.times do |i|
#   fare << gets.to_i
# end

# fare.each do |f|
#   if point < f
#     charge -= f
#     point += ( f * 0.1 ).floor
#   else
#     point -= f
#   end
#   puts "#{charge} #{point}"
# end


# 【問題】完全数とほぼ完全数
# N を 2 以上の整数とし、N の約数のうち N 自身を除いたものの和を S とします。
# このとき
# ・N = S となるような N を完全数
# ・|N-S| = 1 となるような N をほぼ完全数

# と言うことにしましょう。ここで、|N-S| は N-S の絶対値を意味します。

# たとえば、N = 28 のとき、28 の約数は 1, 2, 4, 7, 14, 28 なので、S = 1+2+4+7+14 = 28 となります。従って、28 は完全数です。
# また、N = 16 のときには S = 1+2+4+8 = 15 となるので、16 はほぼ完全数です。

# 入力された整数が完全数かほぼ完全数かそのいずれでもないかを判定するプログラムを作成してください。

# 自分の回答（一応正解）
# num = gets.to_i
# num_ary = []

# num.times do |i|
#   num_ary << gets.to_i
# end

# num_ary.each do |n|
#   result = []
#   (1..n - 1).each { |i| result << i if n % i == 0 }

#   if result.sum == n
#     puts "perfect"
#   elsif result.sum == n - 1
#     puts "nearly"
#   else
#     puts "neither"
#   end
# end




# 【問題】何日後になるか

# あなたはカレンダーのプログラムを作成しています。そこで N 週間後が何日後かを表示する機能を作ることにしました。
# N 週間後は何日後かを計算してください。

# 例えば
# 6
# と入力された 1 週間は 7 日間なので 6 × 7
# 42
# と出力してください。





# 【問題】日付の表記
# 日本では日付を 2020年10月31日 と言ったように年、月、日の順に記載します。
# 一方アメリカなどでは 月、日、年の順で 10/31/22020 などと記載します。

# 日本で一般的な順の年、月、日の順に日付が改行区切りで与えられるのでアメリカなどで使われている形式で月/日/年の形式で出力してください。

# 例えば
# 2020
# 10
# 31
# と入力された場合
# 10/31/2020

# 自分の回答（正解）
# Y = gets.to_i
# M = gets.to_i
# D = gets.to_i
# puts "#{M}/#{D}/#{Y}"



# 【問題】　アドレス調査（不正解）
# あなたはあるソフトウェアの開発でIPアドレスを入力してもらう機能の一部を開発しています。
# 入力は手入力で「.」と「数字」で構成された長さNの文字列が入力されます。

# 入力されているIPアドレスが書式に合っているか判定して、合っていればTrue、
# 違っていればFalseと標準出力で出力するプログラムを作成してください。

# 判別すべきIPアドレスはIPv4で定義された範囲のIPアドレスとします。書式は以下のようになります。

# .で区切られた10進数の4つの数で表されます。
# 数の範囲は0から255までとします。
# 例:
# 100.23.103.20
# 123.11.22.33
# 14.33.103.20
# 102.233.13.2

# 自分の回答（不正解）
# ip = gets.to_s
# ip_address = gets.to_s
# ip_array = ip_address.split('.')
# result = ""
# ip_array.each do |num|
#   if ip_array.length != 4
#     result = "False"
#     break
#   elsif num.to_i > 255 || num.to_i < 0
#     result =  "False"
#     break
#   else
#     result = "True"
#   end
# end
# puts result



# 【問題】　N倍の文字列
# 正の整数 N が標準入力から入力されるので、N 個の「*」を繋げた文字列を出力するプログラムを作成しましょう。

# 例えば N = 3の場合
# ***
# のように出力してください。

# num = gets.to_i
# puts "*" * num


# 2つの値をスペースを入れて入力させる場合
# input, input2 = gets.split
# puts  input.to_i + input2.to_i

# Leet文字列への変換
# input = gets.chomp.chars
# input.each {|w|
#   case w
#   when 'A'
#     print '4'
#   when 'E'
#     print '3'
#   when 'G'
#     print '6'
#   when 'I'
#     print '1'
#   when 'O'
#     print '0'
#   when 'S'
#     print '5'
#   when 'Z'
#     print '2'
#   else
#     print w
#   end
# }

# Leet文字列への変換　その他
# TRANSFORM_TABLE = {
#   'A' => '4',
#   'B' => '8',
#   'C' => '［',
#   'D' => 'T)',
#   'E' => '3'
# }

# puts gets.gsub(/[A-E]/, TRANSFORM_TABLE)
