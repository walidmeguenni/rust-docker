// use std::thread;
// use std::time::Duration;
mod connect;

fn main() {
    loop {
        // println!("Hello, world!");
        // thread::sleep(Duration::from_secs(1));
        connect::sql_connect_options::connect();
    }
}
