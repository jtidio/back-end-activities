def unique_in_order (input)
    if input.is_a?(Array)
    order = []
    input.each do |item|
        if order[order.length-1] == item
            next
        else 
            order << item
        end
    end
    puts "Unique in Order: #{order}"

    elsif input.is_a?(String)
    letters_array = input.each_char.to_a
    order = []

    letters_array.each do |item|
        if order[order.length-1] == item
            next
        else 
            order << item
        end
    end
    puts "Unique in Order: #{order}"
    end
end

unique_in_order("AAAABBBCCDAABBB")
unique_in_order("ABBCcAD")
unique_in_order([1,2,2,3])