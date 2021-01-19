const selection_sort = <T>(list: T[]): T[] => {
  let current_i: number = 0

  while(current_i < list.length - 1) {
    let min_i: number = current_i
    
    list.slice(current_i).forEach((n, i) => {
      min_i = list[min_i] < n ? min_i : (i + current_i)
    })

    let [curr, min] = [list[current_i], list[min_i]];
    list[current_i] = min;
    list[min_i] = curr;

    current_i++
  }

  return list
}


const list = Array.from({length: 10}, () => Math.floor(Math.random() * 40));
const sorted = selection_sort(list)

console.log(sorted)
