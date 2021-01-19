def selecttion_sort(list)
  current_i = 0

  while current_i < list.size - 1
    min_i = current_i

    list[current_i..-1].each_with_index do |n, i|
      min_i = list[min_i] < n ? min_i : (i + current_i)
    end

    list[current_i], list[min_i] = list[min_i], list[current_i]

    current_i += 1
  end

  list
end

pp selecttion_sort [*1..10].shuffle
