# 日程を規定のフォーマットで出力する
# [第1希望] 11月6日（金）10：00開始～18：00開始
# 当日から2日後から出力
# 当日が土曜日の場合は火曜日から出力
# メソッド引数に日程数、規定の予定（配列で複数可能）を渡す
# 規定の予定をスキップして、日程数が出力される

require 'date'
def schedule_date(num, prans = [])
  # 定義
  wday = ["(日)","(月)","(火)","(水)","(木)","(金)","(土)",]
  schedule = []
  count = 1
  today = Date.today

  # 出力
  num.times do
    if today.wday == 6
      count += 2
      prans.each do |pran|
        count += 1 if today + count == Date.parse(pran)
      end
      (today + count).wday != 0 ? schedule << today + count : schedule << today + (count += 1)
    else
      count += 1
      prans.each do |pran|
        count += 1 if today + count == Date.parse(pran)
      end
      (today + count).wday != 0 ? schedule << today + count : schedule << today + (count += 1)
    end
  end

  schedule.each_with_index do |day, i|
    i += 1
    puts "[第#{i}希望] #{day.month}月#{day.day}日#{wday[day.wday]} 10：00開始～19：00開始"
  end
end

# 引数の設定
# 日程の候補の数
num = 5

# 予定が入っている日程を文字列で定義する
prans = ["2020-11-11",




]

# メソッドの呼び出し
schedule_date(num, prans)
