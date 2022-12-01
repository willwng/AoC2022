import sys


def solve(file_name):
    bla = []
    with open(file_name, "r") as f:
        curr = 0
        for line in f:
            if line.strip():
                l = line.split()[0]
                l = int(l)
                curr += l
            else:
                bla.append(curr)
                curr = 0

    return sum(sorted(bla)[-3:])


if __name__ == "__main__":
    file_name = str(sys.argv[1])
    ans = solve(file_name)
    print(f"Answer: {ans} ")
