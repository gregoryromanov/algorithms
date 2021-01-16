const selection_sort = <T>(list: T[]): T[] => {
  const sorted: T[] = []

  while(!!list.length) {
    let max: number = list.reduce((max, n, i) => list[max] >= n ? max : i, 0)

    sorted.push(list[max])

    list.splice(max, 1)
  }

  return sorted
}


const list = Array.from({length: 10}, () => Math.floor(Math.random() * 40));
const sorted = selection_sort(list)

console.log(sorted)

