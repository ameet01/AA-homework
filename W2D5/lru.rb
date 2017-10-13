class LRUCache

  def initialize(n)
    @size = n
    @array = []
  end

  def count
    @array.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @array.include?(el)
      @array.delete(el)
      @array << el
    elsif count >= @size
      @array.shift
      @array << el
    else
      @array << el
    end
  end

  def show
    p @array
  end
end

if __FILE__ == $PROGRAM_NAME
  johnny_cache = LRUCache.new(4)


  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show
end
