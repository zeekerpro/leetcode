=begin
其实就是一个队列,比如例题中的 abcabcbb，进入这个队列（窗口）为 abc 满足题目要求，当再进入 a，队列变成了 abca，这时候不满足要求。所以，只要把队列的左边的元素移出就行了，直到满足题目要求！
一直维持这样的队列，找出队列出现最长的长度时候，求出解！
=end


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
