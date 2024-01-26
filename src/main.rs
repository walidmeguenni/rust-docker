mod connect;

fn main() {
    loop {
        connect::sql_connect_options::connect();
    }
}
