fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish_octopus(array)
  sorted = false
  while !sorted
    sorted = true
    (0...array.length - 1).each do |i|
      if array[i].length > array[i+1].length
        array[i], array[i+1] = array[i+1], array[i]
        sorted = false
      end
    end
  end
  array.last
end

def dominant_octopus(array, &prc)
  def merge_sort(array, &prc)
    prc ||= Proc.new { |a,b| a.length <=> b.length }
    return array if array.length < 2
    mid = array.length / 2
    left = merge_sort(array.take(mid), &prc)
    right = merge_sort(array.drop(mid), &prc)
    merge(left, right, &prc)
  end

  def merge(left, right, &prc)
    result = []
    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        result << left.shift
      else
        result << right.shift
      end
    end
    result + left + right
  end

  merge_sort(array, &prc).last
end

def clever_octopus(array)
  max = ""
  (0...array.length).each do |i|
    if array[i].length > max.length
      max = array[i]
    end
  end
  max
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def slow_dance(move, array)
  (0...array.length).each do |i|
    return i if array[i] == move
  end
  nil
end

def fast_dance(move, hash)
  hash[move]
end

p sluggish_octopus(fishes)
p dominant_octopus(fishes)
p clever_octopus(fishes)

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
