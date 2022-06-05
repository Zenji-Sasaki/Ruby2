count = 0

puts "ジャンケン..."

def rockPaperScissors

#ジャンケン部分
hand = ["グー","チョキ","パー"]
handA =""
handB = hand.shuffle[0]
result = 0

puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

option = gets.to_s.chomp

if option == "0"
  handA = "グー"
elsif option == "1"
  handA = "チョキ"
elsif option == "2"
  handA = "パー"
elsif option == "3"
  puts "--------------------"
  puts "ジャンケンを終了します。"
  puts "--------------------"
  exit
else
  puts "--------------------"
  puts "0から3の数字を入力してください！"
  puts "--------------------"
  puts "ジャンケン..."
  rockPaperScissors
end

puts "--------------------"
puts "あなた：#{handA}を出しました。"
puts "相手：#{handB}を出しました。"
puts "--------------------"

#ジャンケンの勝敗判断
if handA == "グー" && handB == "チョキ" || handA == "チョキ" && handB == "パー" || handA == "パー" && handB == "グー"
  result += 1
elsif handA == handB
  result = 0
  puts "あいこで..."
  rockPaperScissors
else
  result -= 1
end

#ジャンケンの勝敗がついた場合あっち向いてホイへ進む
if result != 0
  puts "あっち向いて..."
  puts "0(上)1(下)2(左)3(右)"
end

#あっち向いてホイ
direction = ["上","下","左","右"]
directionA =""
directionB = direction.shuffle[0]

option = gets.to_s.chomp

if option == "0"
  directionA = "上"
elsif option == "1"
  directionA = "下"
elsif option == "2"
  directionA = "左"
elsif option == "3"
  directionA = "右"
else
  puts "--------------------"
  puts "0から3の数字を入力してください！"
  puts "--------------------"
  exit
end

puts "--------------------"
puts "あなた：#{directionA}"
puts "相手：#{directionB}"
puts "--------------------"

#あっち向いてホイの勝敗判断
if directionA == directionB && result == 1
  puts "あなたの勝ちです！"
  exit
elsif directionA == directionB && result == -1
  puts "あなたの負けです..."
  exit
else
  result = 0
  puts "ジャンケン..."
end

end

#勝敗がつくまで処理を100回行う
until count == 100
rockPaperScissors
count += 1
end