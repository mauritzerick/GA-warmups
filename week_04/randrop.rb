def raindrops(number)
raindrops_str = ''

raindrops_str += 'Pling' if number % 3 == 0
raindrops_str += 'Plang' if number % 5 == 0
raindrops_str += 'Plong' if number % 7 == 0

if raindrops_str == ''
    raindrops_str = number.to_s
end

raindrops_str
end
def menu
    puts "|//\\|" * 10
    puts "RAINDROPS".center(50)
    puts ">><<" * 12
    print "[Enter] to play [q] to quit"
end

menu
user_choice = gets[0].downcase

until user_choice == 'q'
    print "Choose a number: "
    user_num = gets.to_i
    puts raindrops(user_num)

    menu
    user_choice = gets[0].downcase
end

puts "Thanks for playing"