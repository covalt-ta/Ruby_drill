# 問題 27---------------------------------------------
# 正の整数を入力します。その整数が、
# 10の倍数（10,20,30...）からの差が2以内であるときはTrue
# それ以外はFalse
# と出力するメソッドを作りましょう。

# 出力例：
# near_ten(12)→True
# near_ten(17)→False
# near_ten(19)→True

# 自分の回答
# def near_ten(num)
#   if num % 10 <= 2 || num % 10 >= 8
#     puts "True"
#   else
#     puts "False"
#   end
# end

# near_ten(12)
# near_ten(17)
# near_ten(68)

# 回答
# def near_ten(num)
#   quotient = num % 10
#   if quotient <= 2 || quotient >= 8
#     puts "True"
#   else
#     puts "False"
#   end
# end
# 予めnumを10で割った余りを変数代入して、条件式を作成


# 問題 26---------------------------------------------
# 任意の2つの文字列があります。
# どちらかの文字列がもう一方の文字列の最後にある場合はTrueを、ない場合はFalseを出力するプログラムを作りましょう。
# 大文字と小文字は区別されません。

# 例えば、'world'と'helloworld'を渡した場合はTrueとなります。
# 左側の'world'が右側の文字列の最後にあるからです。
# 一方、'world'と'worldhello'とした場合はFalseとなります。
# 右側の文字列には'world'が含まれているものの、文字列の最後に無いためです。以下の出力例も参考にして実装しましょう。
# 出力例：
# end_other('Hiabc', 'abc') → True
# end_other('AbC', 'HiaBc') → True
# end_other('abc', 'abXabc') → True

# 自分の回答
# def end_other(str1, str2)
#   if str1.length <= str2.length
#     slice_num = str1.length
#     if str2.downcase.slice(-slice_num..-1) == str1.downcase
#       puts "True"
#     else
#       puts "False"
#     end
#   else
#     slice_num = str2.length
#     if str1.downcase.slice(-slice_num..-1) == str2.downcase
#       puts "True"
#     else
#       puts "False"
#     end
#   end
# end

# end_other('Hiabc', 'abc')
# end_other('AbC', 'HiaBc')
# end_other('abc', 'abXabc')

# # 回答
# def end_other(a, b)
#   a_down = a.downcase
#   b_down = b.downcase
#   a_len = a_down.length
#   b_len = b_down.length
#   if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
#     puts "True"
#   else
#     puts "False"
#   end
# end

# 大文字を小文字に変換するメソッド .downcase
# 文字列も文字数や、配列の要素数をカウントするMethod .length
# downcaseで小文字変換した値、lengthで文字列の長さを予め変数に変数に定義
# 条件式でパイプを使用し、if文をネストさせていない


# 問題 25---------------------------------------------
# FizzBuzz問題
# 非常に有名なプログラミングの問題です。1〜100までの数字をターミナルに出力してください。
# ただし、「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzz、
# 3と5の倍数である「15の倍数」のときはFizzBuzzと出力してください。

# 作ってもらうプログラムのひな形は以下です。
# def fizz_buzz
#   # ここに処理を書き加えてください
# end
# fizz_buzz

# 自分の回答
# def fizz_buzz
#   100.times do |i|
#     i += 1
#     if i % 15 == 0
#       puts "FizzBuzz"
#     elsif i % 3 == 0
#       puts "Fizz"
#     elsif i % 5 == 0
#       puts "Buzz"
#     else
#       puts i
#     end
#   end
# end
# fizz_buzz

# 回答
# def fizz_buzz
#   num = 1
#   while num <= 100 do
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     else
#       puts num
#     end
#     num = num + 1
#   end
# end

# 1〜100の数字をターミナルに出力する方法として、while文を使用
# while文は条件式がtrueの間は繰り返し実行される
# 条件式で使用する変数を定義、無限ループを避ける条件変更を行う式が必要となる為、timesメソッドでもよいかなと思う

# 問題 24---------------------------------------------
# ECサイトのポイント付与サービスを考えます。
# 購入金額が999円以下の場合、3%のポイント
# 購入金額が1000円以上の場合、5%のポイント
# このように付与されるポイントを出力するメソッドを作りましょう。

# ただし誕生日の場合はポイントが5倍になります。
# 誕生日の場合はtrue, 誕生日でない場合はfalseで表します。
# また、小数点以下をすべてのポイント計算が終わったあとに切り捨てましょう。
# 出力例 calculate_points(500, false) → ポイントは15点です

# 自分の回答
# def calculate_points(amount, birthday)
#   if amount <= 999
#     point = amount * 0.03
#   else
#     point = amount * 0.05
#   end

#   if birthday
#     point *= 5
#   end
#   puts "ポイントは#{point.floor}点です"
# end

# calculate_points(1000, false)
# calculate_points(999, true)
# calculate_points(500, false)
# calculate_points(3000, true)

# 回答
# 上に同じ

# 問題 23---------------------------------------------
# 以下の仕様を満たすメソッドnumを作成しましょう。
# ・メソッド外で定義された3つの正の整数を、それぞれ仮引数a,b,cとしてnumメソッド内で使用する。
# ・第一引数と第二引数は足し算をし、変数abに代入。
# ・第三引数が3以下の場合は変数abを第三引数の値で割り、結果を出力する。
# ・第三引数が4以上の場合は変数abを第三引数の値で掛け、結果を出力する。

# 自分の回答
# def num(a, b, c)
#   ab = a + b
#   if c <= 3
#     puts ab / c
#   else
#     puts ab * c
#   end
# end

# puts '3つの整数を入力してください'
# a = gets.to_i
# b = gets.to_i
# c = gets.to_i

# num(a, b, c)

# 回答
# 上に同じ

