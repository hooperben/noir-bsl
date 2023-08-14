use w3f_bls::{Keypair,ZBLS,Message};

// this rust program is intended to be the sandbox where the rust logic is written
// and where I hopefully learn what all this shit means
fn main() {
    let mut keypair = Keypair::<ZBLS>::generate(::rand::thread_rng());
    let message = Message::new(b"Some context",b"Some message");
    let sig = keypair.sign(&message);
    assert!( sig.verify(&message,&keypair.public) );
    println!("Hello, world!");
}


