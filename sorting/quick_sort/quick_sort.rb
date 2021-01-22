def quick_sort(list)
  return list if list.size < 2

  pivot = list.first
  more, less = list[1..-1].partition(&->(n) { n > pivot })

  quick_sort(less).concat [pivot], quick_sort(more)
end

pp quick_sort [*1..10].shuffle
