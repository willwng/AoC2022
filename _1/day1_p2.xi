// To use, paste input into stdin then type in -1 to finish input
use io
use conv

sort(a: int[]) {
	i:int = 0
	n:int = length(a)
	while i < n {
		j:int = i
		while j > 0 {
			if a[j-1] > a[j] {
				swap:int = a[j]
				a[j] = a[j-1]
				a[j-1] = swap
			 }
			 j = j-1
		 }
		 i = i+1
	}
}


main(a: int[][]) {
	ans: int = -1
	curr: int = 0
	cond: bool = true
	snecks: int[9999]

	i: int = 0
	while i < length(snecks){
		snecks[i] = 0
		i = i + 1
	}

	j:int = 0
	while cond {
		input: int[] = readln();
		value:int, valid:bool = parseInt(input)

		if value == -1 {
			sort(snecks)
			println(unparseInt(snecks[9998] + snecks[9997] + snecks[9996]))
			cond = false
		}
		else if !valid {
			snecks[j] = curr
			curr = 0
		} else {
			curr = curr + value
			j = j + 1
		}
	}
}
