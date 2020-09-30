// cerner_2^5_2020
// print fibonacci series for size 20 in rust

const ITERS: usize = 20;

fn print_fib(n: usize) {
    let mut x = (1, 1);
    for i in 0..n {
        println!("{}: {}", i, x.0);
        x = (x.1, x.0 + x.1)
    }
}

fn main() {
    println!("# fibonacci_20");
    print_fib(ITERS);
}