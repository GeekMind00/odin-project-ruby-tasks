# Implementation of bubble sort algorithm in ruby
class BubbleSort
  def sort_the_bubbles(arr)
    (arr.length - 1).downto(1) do |i|
      (0...i).each do |j|
        arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      end
    end
    arr
  end
end
