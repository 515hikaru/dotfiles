use std::io;

fn main() {
  println!("Hello, World!!");
    let mut foo = String::new();
    io::stdin().read_line(&mut foo).expect("cannot read lines");
    println!("foo is {}", foo);
}
