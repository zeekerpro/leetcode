def length_of_longest_substring(s)
  result = 0
  queueStr = String.new 
  s.each_char do |c|
    c_rindex = queueStr.rindex(c)
    if c_rindex 
      queueStr = queueStr.slice(c_rindex + 1, queueStr.length - c_rindex - 1 )
    end
    queueStr << c
    result = result >= queueStr.length ? result : queueStr.length 
  end
  return result
end

puts length_of_longest_substring("au"); # 2
puts length_of_longest_substring("pwwkew"); # 3
