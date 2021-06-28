
require 'csv'

puts "1(新規でメモを作成)2(既存のメモを編集する)"
memo_type = gets.chomp.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
      CSV.open("#{file_name}.csv",'w') do |memo|
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを 押します"
    text = gets.chomp
      memo << ["#{text}"]
end
elsif memo_type == 2
  puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    CSV.open("#{file_name}.csv",'a') do |memo|
  puts "編集内容を入力してください"
  puts "完了したらCtrl + Dを押します"    
      text = gets.chomp
      memo << ["#{text}"]
end  
else
  puts "入力された値が無効です"
end
