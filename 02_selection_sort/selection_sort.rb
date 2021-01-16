def selecttion_sort(list)
  sorted = []

  until list.empty?
    index = list.each_with_index.inject(0) do |max, pair|
      n, index = pair

      list[max] > n ? max : index
    end

    sorted << list[index]
    list.delete_at index
  end

  sorted
end

pp selecttion_sort [*1..10].shuffle
