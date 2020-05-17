# コンソールに「HelloWorld」を表示してみよう。
greeting = "HelloWorld"
puts greeting
puts "------------------"

# コンソールに1〜10まで足した結果を代入してみよう。
sum = 0
for i in 1..10 do
  sum += i
end
puts sum
puts "------------------"

# コンソールに「引数が0なら偽。引数が1なら真」と表示してみよう。
def add(n)
  if n == 0
    puts "fales"
  elsif n == 1
    puts "true"  
  end
end
add(0)
add(1)
puts "------------------"

# 配列を扱ってみよう。
fruits = ['orange', 'apple', 'banana']
puts fruits
puts "------------------"

fruits[3,4] = 'melon', 'grape'
puts fruits
puts "------------------"

fruits.delete_at(0)
fruits.delete_at(2)
puts fruits













