use dep::noir_biguint::{BigUint56};

fn main(x: Field, y: pub Field) {

    let a = BigUint56::from_u56(0x1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab);

    let bytes = [2 as u8];
    let a = BigUint56::from_bytes(bytes);
    
    assert(x != y);
}

#[test]
// fn test_main() {

//     // Uncomment to make test fail
//     // main(1, 1);
// }
