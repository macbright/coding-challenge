
class Store
    attr_reader :hash
    
    def initialize
        @hash = Hash.new { |h, k| h[k] = {} } 
    end

    def set(key, value, timestamp)
        timestamp = timestamp.to_i
        hash[key][timestamp] = value
    end

    def get(key, timestamp)
      timestamp = timestamp.to_i
      return "" if hash[key] == {}
      return hash[key][timestamp] if hash[key][timestamp]
      minKey = getKeys(key)
      timestamp.downto(minKey) do |n|
          return hash[key][n] if hash[key][n]
      end
      ""
    end

    private
    def getKeys(key)
      arr = hash[key].keys
      arr.flatten.min
    end

end



require "test/unit"

class TestStore < Test::Unit::TestCase

  def test_get
    store = Store.new
    store.set('Bob','red', Time.new(2020, 10, 1))
    store.set('Bob','blue', Time.new(2020, 10, 5))
    store.set('Bob','purple', Time.new(2020, 10, 9))
    store.set('Alice','pink', Time.new(2020, 10, 1))
    store.set('Alice','orange', Time.new(2020, 10, 20))

    assert_equal("pink", store.get('Alice', Time.new(2020, 10, 2)) )
    assert_equal("orange", store.get('Alice', Time.new(2020, 10, 20)))
    assert_equal("orange", store.get('Alice', Time.new(2020, 11, 21)))
    assert_equal("", store.get('Alice', Time.new(2020, 9, 1)))
    assert_equal("blue", store.get('Bob', Time.new(2020, 10, 8)))
    assert_equal("", store.get('Cindy', Time.new(2020, 10, 21)))
  end

end