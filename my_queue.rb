class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    store << el
  end

  def dequeue
    store.shift
  end

  def peek
    store[0]
  end

  def size
    store.length
  end

  def empty?
    store.empty?
  end

  private
  attr_reader :store
end
