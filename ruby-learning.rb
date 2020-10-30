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
