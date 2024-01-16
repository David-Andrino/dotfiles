use std::{rc::Rc, error::Error};

fn main() -> Result<Rc<i32>, Box<dyn Error>> {
    let mut a: Vec<i32> = vec![1, 2, 3];
    Ok(Rc::new(a.pop().unwrap()))
}
