interface Initial {
  more: number[];
  less: number[];
}

const quick_sort = (list: number[]): number[] => {
  if (list.length < 2) return list;

  const pivot: number = list[0];
  const initial: Initial = { more: [], less: [] };

  const { more, less } = list.slice(1).reduce((acc, n) => {
    n > pivot ? acc.more.push(n) : acc.less.push(n);
    return acc;
  }, initial);

  return quick_sort(less).concat([pivot], quick_sort(more));
};

const list = Array.from({ length: 10 }, () => Math.floor(Math.random() * 40));
const sorted = quick_sort(list);

console.log(sorted);
