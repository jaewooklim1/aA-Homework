class Stack
    def initialize(arr)
        @stack = arr
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end
  end

  
class Queue
    def initialize(arr)
      @store = arr
    end
  
    def enqueue(el)
      @store.push(el)
    end
  
    def dequeue
      @store.shift
    end
  
    def peek
      @store.first
    end
  
  end

  class Map

    def initialize
      @store = Array.new{ [] }
    end
  
    def set(key, value)
      @store.each_with_index do |map, index|
        map_k, map_v = map
  
        if map_k == key
          @store[index][1] = value
          return true
        end
      end
      @store.push([key, value])
      true
  
    end
  
    def get(key)
      raise "No key" unless @store.any? { |arr| arr[0] == key }
  
      @store.each do |arr|
        map_k, map_v = arr
        if key == map_k
          return v
        end
      end
  
    end
  
    def delete(key)
      raise "No key" unless @store.any? { |arr| arr[0] == key }
  
      @store.each_with_index do |map|
        if key == map[0] 
          @store.delete_at(index)
          return true
        end
      end
      false
    end
  
    def show
      @store.each do |map|
        puts "#{map[0]} => #{map[1]}"
      end
    end
    true
  
  end
  