use dep::std;

mod Bls{
    fn test() {
        let x = 1;
        let y = 2;
        assert(x != y);
    }
}

fn main(x : Field, y : pub Field) {
    Bls::test();
    std::println(x);
    assert(x != y);
}

#[test]
fn test_main() {
    main(1, 2);

    // Uncomment to make test fail
    // main(1, 1);
}
