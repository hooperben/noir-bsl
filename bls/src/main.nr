// use dep::std;

mod bls {
    
    use dep::noir_bigint::{BigUint56};
    use dep::std::println;

    fn verify_signature(pubkey : BigUint56, msg : BigUint56, sig : BigUint56) -> bool {
        println("verify_signature");
        return true;
    }

 
}
