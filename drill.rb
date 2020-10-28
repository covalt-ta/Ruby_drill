# 問題 33---------------------------------------------
# 以下の仕様を満たすアプリケーションを作成しましょう。また、注意書きを確認し、雛形を使用して実装してください。

# 仕様
# ・実行すると [1] : 点数を登録する, [2] : 点数を確認する, [3] : 終了する という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような各処理を行う
# ・アプリケーションを終了するまで、処理を繰り返す

# [1]の処理
# ・名前、年齢、国語・数学・英語の3教科の点数を入力させて、保存する

# [2]の処理
# ・投稿された情報から番号と名前で一覧を表示し（例 1: yamada）、見たい個人の番号の入力を求める
# ・ 入力された個人の名前、年齢、国語・数学・英語の3教科の点数を表示する

# [3]の処理
# ・アプリケーションを終了する

# 自分の回答
# def registration_student(students)
#   student = {}
#   puts "生徒名を入力してください"
#   student[:name] = gets.chomp
#   puts "生徒の年齢を入力してください"
#   student[:age] = gets.to_i
#   puts "国語の得点は？"
#   student[:country] = gets.to_i
#   puts "数学の得点は？"
#   student[:math] = gets.to_i
#   puts "英語の得点は？"
#   student[:english] = gets.to_i

#   students << student
# end

# def show_student_name(students)
#   if students.empty?
#     puts "生徒が登録されていません"
#     return
#   end
#   puts "みたい生徒の番号を入力してください"
#   students.each_with_index do |student, i|
#     puts "[#{i}]#{student[:name]}"
#   end
#   num = gets.to_i
#   puts "名前：#{students[num][:name]}"
#   puts "年齢：#{students[num][:age]}"
#   puts "国語：#{students[num][:country]}"
#   puts "数学：#{students[num][:math]}"
#   puts "英語：#{students[num][:english]}"
# end

# students = []

# while true
#   puts "行いたい項目を選択してください"
#   puts "[1]点数を登録する"
#   puts "[2]点数を確認する"
#   puts "[3]終了する"

#   input = gets.to_i
#   if input == 1
#     registration_student(students)
#   elsif input == 2
#     show_student_name(students)
#   elsif input == 3
#     exit
#   else
#     puts "無効な数値です"
#   end
# end

# # 回答
# # ほぼ同じ

# def registration_student(students)
#   # 生徒の名前と年齢を登録できるようにする
#   student = {}
#   puts '生徒名を入力してください'
#   student[:name] = gets.chomp
#   puts '生徒の年齢を入力してください'
#   student[:age] = gets.chomp

#   # 登録した生徒の国語、数学、英語の点数を登録できるようにする
#   puts "国語の得点は？"
#   student[:japanese] = gets.to_i
#   puts "数学の得点は？"
#   student[:math] = gets.to_i
#   puts "英語の得点は？"
#   student[:english] = gets.to_i
#   students << student

# end

# def show_student_name(students)
#   # 登録された生徒の名前を番号を振って表示する
#   i = 0
#   students.each do |student|
#     puts "#{i}: #{student[:name]}"
#     i += 1
#   end
#   puts '見たい生徒の番号を入力してください'
#   num = gets.to_i

#   student = students[num]
#   # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにする
#   puts "名前: #{student[:name]}"
#   puts "年齢: #{student[:age]}"
#   puts "国語: #{student[:japanese]}"
#   puts "数学: #{student[:math]}"
#   puts "英語: #{student[:english]}"
# end

# students = []

# while true
#   puts '行いたい項目を選択してください'
#   puts '[1]点数を登録する'
#   puts '[2]点数を確認する'
#   puts '[3]終了する'
#   input = gets.to_i
#   if input == 1
#     registration_student(students)
#   elsif input == 2
#     show_student_name(students)
#   elsif input == 3
#     exit
#   else
#     puts '無効な値です'
#   end
# end

# ポイント
# ハッシュへのキーとバリューの挿入方法
# while true とすることで、trueの間繰り返される。抜けるにはexitを用いる


# 問題 33---------------------------------------------
# メソッドに3つの整数a b cを与えます。
# ・「aとbの差が1」または「aとcの差が1」であり、かつ「bとcとの数値の差が2以上」の場合はTrue
# ・それ以外はFalse
# と出力するメソッドを作りましょう。

# 出力例：
# close_far(1, 2, 10) → True
# close_far(1, 2, 3) → False
# close_far(4, 1, 3) → True

# # 自分の回答
# def close_far(a, b, c)
#   ab = (a - b).abs
#   ac = (a - c).abs
#   bc = (b - c).abs

#   if (ab == 1 || ac == 1) && bc >= 2
#     puts "True"
#   else
#     puts "False"
#   end
# end

# close_far(1, 2, 10)
# close_far(1, 2, 3)
# close_far(4, 1, 3)

# # 回答
# def close_far(a,b,c)
#   x = (a-b).abs
#   y = (a-c).abs
#   z = (b-c).abs

#   if x == 1 && z >= 2
#     puts "True"
#   elsif y == 1 && z >= 2
#     puts "True"
#   else
#     puts "False"
#   end
# end


# 問題 33---------------------------------------------
# 西暦の年数および月を入力し、その月の日数を求めるプログラムを書きます。
# その場合、閏年について考慮する必要があります。

# 閏年は以下の判断基準で決まります。

# ①その西暦が4で割り切れたら閏年である
# ②ただし、例外として100で割り切れる西暦の場合は閏年ではない
# ③ただし、その例外として400で割り切れる場合は閏年である

# つまり、西暦2000年は閏年であり、西暦2100年は閏年ではありません。
# これらに対応できるように、出力例と雛形をもとに実装しましょう。

# 出力例
# 1990年2月 =>"1990年2月は28日間あります"
# 2000年2月 =>"2000年2月は29日間あります"
# 2100年2月 =>"2100年2月は28日間あります"
# 2000年3月=>"2000年3月は31日間あります"

# 自分の回答

# def get_days(year, month)
#   month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#   # 閏年じゃない場合,又は閏年だけど2月じゃない場合
#   if year % 4 != 0 || month != 2
#     month_days[month - 1]
#   # 閏年の可能性がある場合
#   elsif year % 100 != 0 || year % 400 == 0
#     month_days[month - 1] + 1
#   else
#     month_days[month - 1]
#   end
# end

# puts "年を入力してください："
# year = gets.to_i
# puts "月を入力してください："
# month = gets.to_i

# days = get_days(year, month)
# puts "#{year}年#{month}月は#{days}日間あります"

# # 回答
# def get_days(year, month)
#   month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#   if month == 2
#     if year % 4 == 0
#       if year % 100 == 0 && year % 400 != 0
#         days = 28
#       else
#         days = 29
#       end
#     else
#       days = 28
#     end
#   else
#     days = month_days[month - 1]
#   end

#   return days
# end

# puts "年を入力してください："
# year = gets.to_i
# puts "月を入力してください："
# month = gets.to_i

# days = get_days(year, month)
# puts "#{year}年#{month}月は#{days}日間あります"


# 問題 32---------------------------------------------
# 文字列"xyz"を含む任意の文字列があるとします。
# 以下条件を満たすメソッドを作成しましょう。
# xyzの前にピリオド（.）がない場合はTrueを出力
# ピリオド（.）がある場合はFalseを出力
# 上記2つの条件に当てはまらない場合はFalseを出力
# ただし、'xyabcz'のような文字列は想定せず、'xyz'は連続して存在するものとします。詳細は以下の出力例を確認してください。

# 出力例：
# xyz_there('abcxyz') → True
# xyz_there('abc.xyz') → False
# xyz_there('xyz.abc') → True

# def xyz_there(str)
#   if str.include?(".xyz")
#     puts "False"
#   elsif str.include?("xyz")
#     puts "True"
#   else
#     puts "False"
#   end
# end

# xyz_there('abcxyz')
# xyz_there('abc.xyz')
# xyz_there('xyz.abc')

# 回答
# 上に同じ


# 問題 31---------------------------------------------
# 3桁の正の整数を入力します。その整数の「百の位・十の位・一の位の和」について、
# 10の倍数（10,20,30...）からの差が
# ・2以内であるときは"True"
# ・それ以外は"10の倍数との差は○です"
# と表示されるようにしましょう。

# 出力例：
# near_ten(117)→True
# near_ten(123)→10の倍数との差は4です
# near_ten(111)→10の倍数との差は3です

# 百の位・十の位・一の位の和が6などの時に、「10の倍数との差は6です」と出力せずに、「10の倍数との差は4です」と10の倍数から近い方の差を出力するようにしてください。
# また、0も10の倍数に含むものとします。

# def near_ten(num)
#   array = []
#   3.times do |i|
#     array << num.to_s.slice(i,1)
#   end
#   num_sum =  array.map(&:to_i).sum
#   result = num_sum % 10

#   if result <= 2 || result >= 8
#     puts "True"
#   elsif result >= 6
#     puts "10の倍数との差は#{10 - result}です"
#   else
#     puts "10の倍数との差は#{result}です"
#   end
# end

# near_ten(117)
# near_ten(123)
# near_ten(111)

# # 回答
# def near_ten(num)
#   total = (num/100 % 10) + (num/10 % 10) + (num % 10)
#   remainder = total % 10
#   if remainder <= 2 || remainder >= 8
#     puts "True"
#   elsif remainder <= 5
#     puts "10の倍数との差は#{remainder}です"
#   else
#     puts "10の倍数との差は#{10 - remainder}です"
#   end
# end

# 3桁整数のそれぞれの位の求め方
# ①(num/100 % 10) + (num/10 % 10) + (num % 10)によって、百の位・十の位・一の位をそれぞれ足し合わせています。
# シンプル
# ②文字列を一文字ずつの配列に変換するメソッドには.charsメソッドがある
# "hello".chars => ["h", "e", "l", "l", "o"]
# 数値の場合、文字列に変換して、数値に戻す方法で可能
# 123.to_s.chars.map(&:to_i) => [1, 2, 3]
# 123.to_s.chars => ["1", "2", "3"]
# ＊charsメソッドは、文字列でないと使用できない

# 問題 30---------------------------------------------
# 以下の配列に任意の値が存在するかどうか、そして何番目に存在するのか、検索するコードを作成しましょう。
# 添字が0の要素、つまり以下の配列における「1」は「配列の0番目に存在する」と表現します。

# array=[1,3,5,6,9,10,13,20,26,31]
# 任意の値が配列内に存在しない場合は、「値は配列内に存在しません」と表示し、
# 存在する場合は、配列の何番目にあるかを表示してください。

# 検索はバイナリーサーチ（2分割検索）を使用して行います。

# バイナリーサーチ
# ソート済みのリストや配列に入ったデータ（同一の値はないものとする）に対する検索を行うときに用いられる手法です。
# まず、中央の値を確認し、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断します。
# それを繰り返し、片側には存在しないことを確かめながら検索していく方法です。

# 出力例
# 検索したい数字を入力してください
# 5
# 5は配列の2番目に存在します


# 自分の答え
# def binary_search(array, number_of_elements)
#   puts "検索したい数字を入力してください"
#   search_num = gets.to_i

#   center = (number_of_elements / 2).floor
#   first = array.slice(0, center)
#   latter = array.slice(center, number_of_elements)

#   if search_num < array[center]
#     count = 0
#     first.each do |num|
#       if search_num == num
#         puts "#{search_num}は配列の#{count}番目に存在します"
#         return
#       end
#       count += 1
#     end
#   elsif search_num < array[number_of_elements - 1]
#     count = center
#     latter.each do |num|
#       if search_num == num
#         puts "#{search_num}は配列の#{count}番目に存在します"
#         return
#       end
#       count += 1
#     end
#   else
#     puts "#{search_num}は配列の中に存在しません"
#   end
#   puts "#{search_num}は配列の中に存在しません"
# end

# array = [1,3,5,6,9,10,13,20,26,31]
# number_of_elements = array.length

# binary_search(array, number_of_elements)

# # 回答
# def binary_search(array, number_of_elements, target)
#   left = 0
#   right = number_of_elements - 1

#   while left <= right
#     center = (left + right) / 2
#     if array[center] == target
#       return center
#     elsif array[center] < target
#       left = center + 1
#     else
#       right = center - 1
#     end
#   end

#   return -1
# end

# array=[1,3,5,6,9,10,13,20,26,31]
# puts "検索したい数字を入力してください"
# target = gets.to_i
# number_of_elements = array.length

# result = binary_search(array, number_of_elements, target)

# if result == -1
#   puts "#{target}は配列内に存在しません"
# else
#   puts "#{target}は配列の#{result}番目に存在します "
# end

# # binary_searchメソッドは、配列の何番目かを返すメソッドとして定義している
# # 引数には、配列、要素数、検索数値を渡す
# # メソッド内で、配列の最初の要素のインデックスをleft、最後の要素のインデックスをrightに定義する
# # while文で、中央の値（leftとright）と一致したらメソッドを抜ける（戻りcenter）
# # 中央の値より低い場合、大きい場合で条件分岐、中央の値から+1,-1をleft、raightに代入させて、while文を繰り返す
# # 検索値が、leftとrightの中央の値と一致するか、しない場合には、中央の値より下か、上の範囲で、再び中央の値と比較を繰り返していく
# # 配列内に検索値がない場合には、return -1で戻り値を設定する



# 問題 29---------------------------------------------
# 任意の3つの数値の合計を出力するメソッドを作りましょう。
# ただし、同じ数が含まれている場合は
# 合計にカウントされません。

# 出力例：
# lone_sum([1, 2, 3]) → 6
# lone_sum([3, 2, 3]) → 2
# lone_sum([3, 3, 3]) → 0

# 自分の回答
# def lone_sum(array)
#   array_sum = []
#   one = array[0]
#   two = array[1]
#   three = array[2]

#   if one != two && one != three
#     array_sum << one
#   end

#   if two != one && two != three
#     array_sum << two
#   end

#   if three != one && three != two
#     array_sum << three
#   end
#   puts array_sum.sum
# end

# lone_sum([1, 2, 3])
# lone_sum([3, 2, 3])
# lone_sum([3, 3, 3])

# # 回答
# def lone_sum(ary)
#   # 配列から、重複しない要素のみ取り出す
#   uniq_nums = []
#   ary.each do |num|
#     count = 0
#     ary.each do |i|
#       if num == i　
#         count += 1
#       end
#     end
#     if count < 2
#       uniq_nums << num
#     end
#   end
#
#   # uniq_nums配列内の合計
#   sum = 0
#   uniq_nums.each do |unique_num|
#     sum += unique_num
#   end
#   puts sum
# end

# ary.eachの中に、ary.eachを繰り返すことで、自身と、自身を含む全ての配列要素を比較している
# 要素が一致した場合、カウントを上げるようにし、自分とのみ一致した場合では、カウントが1となり、その他の要素と重複していないことが検証できる
# 重複した要素がない場合（カウントが1以下）、合計する為の配列に代入する


# 問題 28---------------------------------------------

# 銀行口座に10万円の預金残高があり、お金を引き出すプログラムを作成します。
# ・お金を引き出すwithdrawメソッドを作成する
# ・お金を引き出すと手数料110円かかり、「◯◯円引き落としました。残高は◯◯円です」と表示する（残高は手数料を引いた額を表示します）
# ・引き落とし金額と手数料の合算が、預金残高より大きい場合は「残高不足です」と表示する

# 自分の回答
# def withdraw(balance, amount)
#   fee = 110
#   amount_fee = amount + fee
#   if balance >= amount_fee
#     balance = balance - amount_fee
#     puts "#{amount}円引き落としました。残高は#{balance}円です"
#   else
#     puts "残高不足です"
#   end
# end

# balance = 100000
# puts "いくら引き落としますか？（手数料110円かかります）"
# amount = gets.to_i
# withdraw(balance, amount)

# 回答
# 上に同じ

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

