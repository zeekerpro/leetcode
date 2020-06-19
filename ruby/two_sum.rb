
def two_sum1(nums, target)
  nums.each_with_index do |num, index|
    leftNums = nums.slice(index + 1, nums.size - index - 1) if nums.size - index -1 > 0
    return [index, leftNums.index(target - num) + index + 1] if leftNums&.index(target - num)
  end
  return []
end

def two_sum2(nums, target)
  lookfor = {}
  nums.each_with_index do |num, index| 
    return [lookfor[num], index] if lookfor[num]
    lookfor[target - num] = index
  end
end
