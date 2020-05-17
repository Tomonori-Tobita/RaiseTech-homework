# Comunicationというクラスを作ってみよう。(最後の課題です)
class Comunication
  attr_accessor :name
  attr_accessor :age
  
  def initialize(name:, age:)
    @name = name
    @age = age
  end
  
  def info
    return "#{@name}さん #{@age}歳"
  end
end  

puts "通勤中知り合いに会いました。"
puts "'Hello'と声を掛けられています"
puts "-------------------------------------------"

person1 = Comunication.new(name: "鈴木", age: "24")
person2 = Comunication.new(name: "佐藤", age: "26")
persons = [person1, person2,]

persons.each {|person| puts "#{person.info}"}

puts "-------------------------------------------"
puts "挨拶しますか？(数字を選択してください。)"
puts "1: Hello! 2: Hi! 3: 挨拶せずに職場へ移動"

def greet(choice)
  if choice == 1
    puts "Hello!"
  elsif choice == 2
    puts "Hi!" 
  elsif choice == 3
    puts "...。" 
  else
    raise 
  end
end

# 入力に３回失敗したら次の動作へ移行
retry_count = 0
begin
  greet(choice = gets.chomp.to_i)
rescue
  retry_count += 1
  if retry_count <= 3
    puts "無効な数字です。1〜3を選択。選択された数字(#{choice})"
    puts "リトライします。(#{retry_count}回目)"
    retry
  else
    puts "リトライに失敗しました。"
  end    
end

puts "-------------------------------------------"
puts "職場に移動します。"

# Comunicationクラスを継承し、新しくインスタンス変数 :position を定義
class WorkPlaceComunication < Comunication
  attr_accessor :position

  def initialize(name:, age:, position:)
    super(name: name, age: age)
    @position = position
  end

  def info
    return "#{super} #{position}"
  end  

end

office_person1 = WorkPlaceComunication.new(name: "吉田", age: "53", position: "部長" )
office_person2 = WorkPlaceComunication.new(name: "高橋", age: "46", position: "課長" )
  
office_persons = [office_person1, office_person2,]
  
office_persons.each.with_index(1) do |office_person,i| 
  puts "#{i}: #{office_person.info}"
end

puts "-------------------------------------------"
puts "誰に挨拶しますか？(番号を選択してください。)"

def work(choice)
  if choice == 1
    puts "先日はご馳走様でした。"
  elsif choice == 2
    puts "お疲れ様です。" 
  else
    raise  
  end
end 

# 入力に３回失敗したら次の動作へ移行
retry_count = 0
begin
  work(choice = gets.chomp.to_i)
rescue
  retry_count += 1
  if retry_count <= 3
    puts "職場では挨拶をしましょう。"
    puts "1 or 2 を選択。選択された数字(#{choice})"
    puts "リトライします。(#{retry_count}回目)"
    retry
  else
    puts "リトライに失敗しました。"
  end    
end

puts "-------------------------------------------"
puts "退社後、友人と食事に行きます。"

# Comunicationクラスを継承し、新しくインスタンス変数 :from を定義
class FriendComunication < Comunication
  attr_accessor :from

  def initialize(name:, age:, from:)
    super(name: name, age: age)
    @from = from
  end

  def info
    return "#{self.name}君 #{self.age}歳  出身:#{from}"
  end  

end

friend1 = FriendComunication.new(name: "ケンジ", age: "28", from: "東京" )
friend2 = FriendComunication.new(name: "ボブ", age: "31", from: "USA" )
  
friends = [friend1, friend2,]
  
friends.each.with_index(1) do |friend,i| 
  puts "#{i}: #{friend.info}"
end

puts "-------------------------------------------"
puts "誰と食事に行きますか？(番号を選択してください。)"

def friend(choice)
  if choice == 1
    puts "久しぶりだね!"
  elsif choice == 2
    puts "Hi! What's up?"
  else
    raise   
  end

end 

# 最後は３回入力失敗で、エラーで止まるようにしました。
retry_count = 0
begin
  friend(choice = gets.chomp.to_i)
rescue
  retry_count += 1
  if retry_count <= 3
    puts "久しぶりに会う友人です。食事に行きましょう。"
    puts "1 or 2 を選択。選択された数字(#{choice})"
    puts "リトライします。(#{retry_count}回目)"
    retry
  else
    raise "リトライに失敗しました。"
  end    
end



