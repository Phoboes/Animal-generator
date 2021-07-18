require 'pry'

animal_file = File.open('animals.txt')

animal_list = animal_file.readlines



def animal_maker first_animal, second_animal
    word = ""
    if !first_animal.index(" ").nil?
        word = first_animal.slice( 0, (first_animal.index(" ") + 1) ).to_s
            
    else
        word = first_animal.to_s + " "   
    end

    if !second_animal.index(" ").nil?
        word += second_animal.slice( (second_animal.index(" ") + 1), second_animal.length).to_s
            
    else
        word += second_animal.to_s    
    end

    return word
end

puts "-----------------------------------------------------"


10.times do 
    a1 = animal_list.sample.chomp
    a2 = animal_list.sample.chomp

    if a1 == a2
        a2 = animal_list.sample.chomp
    end

    puts "#{animal_maker a1, a2}"
end

puts "-----------------------------------------------------"
