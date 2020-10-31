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
