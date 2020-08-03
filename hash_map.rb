class HashMap
  attr_accessor :hash, :arr, :len
  def initialize
    @hash = {}
    @arr = []
    @len = 0
  end
  def insert(key, value)
    idx = @len
    hash[key] = value, idx
    arr[idx] = key
    @len+=1
    self
  end
  def get(key)
   hash[key][0]
  end
  def delete(key)
    idx = hash[key][1]
    arr.slice!(idx)
    @len -= 1
    hash.delete(key)
    hash[arr[idx]][1] = idx
  end
  def get_random_key
    r = rand(0..@len)
    arr[r]
  end
end

test = HashMap.new
test.insert('0', 1)
test.insert('1', 2).insert('2', 4).insert('3', 5)
# p test.arr
# test.delete('2')
# p test.arr
# p test.hash
p test.get_random_key()