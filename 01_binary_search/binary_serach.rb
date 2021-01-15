def binary_search(list, target)
  low, high = list.values_at 0, -1

  while low <= high
    mid = (low + high) / 2

    break mid if mid == target

    if mid < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
end

pp binary_search [*0..1_000_000], 750
