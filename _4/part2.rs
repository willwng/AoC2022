use std::fs::File;
use std::io::{self, BufRead};
use std::path::Path;

fn main() {
    let mut ans = 0;
    if let Ok(lines) = read_lines("input.txt") {
        // Consumes the iterator, returns an (Optional) String
        for line in lines {
            if let Ok(ip) = line {
                let l: Vec<&str> = ip.split(",").collect();
                let t1 = l[0];
                let t2 = l[1];
                ans += check_times(t1, t2);
            }
        }
    }
    println!("{}", ans);
}

fn check_times(t1: &str, t2: &str) -> i32 {
    let t1_split: Vec<&str> = t1.split("-").collect();
    let t2_split: Vec<&str> = t2.split("-").collect();
    let s1 = t1_split[0].parse::<i32>().unwrap();
    let e1 = t1_split[1].parse::<i32>().unwrap();
    let s2 = t2_split[0].parse::<i32>().unwrap();
    let e2 = t2_split[1].parse::<i32>().unwrap();
    if s1 <= s2 && e1 >= e2 {
        return 1;
    } else if s2 <= s1 && e2 >= e1 {
        return 1;
    } else if e1 <= e2 && e1 >= s2 {
        return 1;
    } else if e2 <= e1 && e2 >= s1 {
        return 1;
    }
    return 0;
}

fn read_lines<P>(filename: P) -> io::Result<io::Lines<io::BufReader<File>>>
where
    P: AsRef<Path>,
{
    let file = File::open(filename)?;
    Ok(io::BufReader::new(file).lines())
}
