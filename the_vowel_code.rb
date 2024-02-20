def encode(string)
    new_string = []
    vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
    
    string.each_char do |char|
      if vowels.include?(char)
        case char.downcase
        when 'a'
          new_string.push(1)
        when 'e'
          new_string.push(2)
        when 'i'
          new_string.push(3)
        when 'o'
          new_string.push(4)
        when 'u'
          new_string.push(5)
        end
      else
        new_string.push(char)
      end
    end
  
    puts new_string.join
  end
  
  encode("hello")
  
def decode(string)
new_string = []
pattern = [1, 2, 3, 4, 5]

string.each_char do |char|
    if pattern.include?(char.to_i)
    case char.to_i
    when 1
        new_string.push('a')
    when 2
        new_string.push('e')
    when 3
        new_string.push('i')
    when 4
        new_string.push('o')
    when 5
        new_string.push('u')
    end
    else
    new_string.push(char)
    end
end

puts new_string.join
end

decode("h2ll4")
  
