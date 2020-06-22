class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def add_two_numbers(l1, l2, carry = 0)
  if l1 || l2 || !carry.zero?
    link = ListNode.new(nil, nil)
    sum = (l1&.val || 0) + (l2&.val || 0) + carry 
    carry = sum / 10
    link.val = sum % 10
    link.next = add_two_numbers(l1&.next, l2&.next, carry)
    return link
  end
end


