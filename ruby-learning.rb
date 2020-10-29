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
