class Stack
  def initialize
    @stack = Array.new
  end

  def add(el)
    @stack.push(el)
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end

class Queue
  def initialize
    @queue = Array.new
  end

  def enqueue(el)
    @queue.push(el)
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end
end


class Map
  def initialize
    @map = Array.new
  end

  def assign(key, value)
    includes = false

    @map.each do |i|
      if i[0] == key
        i[1] = value
        includes = true
        break
      end
    end

    if !includes
      @map << [key, value]
    end

    [key, value]
  end

  def lookup(key)
    @map.each do |array|
      if array[0] == key
        return array[1]
      end
    end
    nil
  end

  def remove(key)
    @map = @map.select! {|i| i[0] != key}
  end

  def show
    @map.dup
  end
end
