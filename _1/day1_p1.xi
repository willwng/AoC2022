/**
To use, paste input into stdin then type in -1 to finish input
*/
use io
use conv

main(a: int[][]) {
	ans: int = -1
	curr: int = 0
	cond: bool = true

	while cond {
		input: int[] = readln();
		value:int, valid:bool = parseInt(input)

		if value == -1 {
			println(unparseInt(ans))
			cond = false
		}
		else if !valid {
			if (curr > ans) {
				ans = curr
			}
			curr = 0
		} else {
			curr = curr + value
		}
	}
}
