#[derive(Drop)]
struct Number {
    value: u32, 
}

fn main() {
    let mut number = Number { value: 1111111 };

    get_value(ref number);

    set_value(number);
}

// Should not take ownership and not modify the variable passed.
fn get_value(ref number: Number) -> u32 {
    number.value
}

// Should take ownership
fn set_value(mut number: Number) {
    let value = 2222222;
    number = Number { value };
    println!("{}", number.value);
}