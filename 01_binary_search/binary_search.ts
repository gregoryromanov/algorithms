const binary_search = (list: number[], target: number): number | null => {
  let low: number = list[0];
  let high: number = list[list.length - 1];

  while(low <= high) {
    let mid: number = Math.floor((low + high) / 2)

    if (mid === target) return mid

    if (mid < target) low = mid + 1
    else high = mid - 1
  }
  
  return null
}

const list = Array.from(Array(1_000_000).keys())

console.log(binary_search(list, 73))
