### Noir BLS

A BLS digital signature—also known as Boneh–Lynn–Shacham (BLS)—is a cryptographic signature scheme which allows a user to verify that a signer is authentic.

This library is an implementation of BLS digital signature scheme in Noir.

### Background on BLS

The following is a summary I've basically copied from this article:
https://mirror.xyz/0x6afeB3d9E380787e7D0a17Fc3CA764Bb885014FA/D3g-4UPRLkAnug-p6AZYfjgXWo-psaTulyu3SaL35vg

but where I've tried to dumb it down more so my monkey brain can understand it a bit better.

BLS is a novel sigature scheme that can be used to aggregate many signatures into one. THe process if quite similar to ECDSA, although it it is quite different mathematically.

Any number of signatures on any number of messages can be combined into a message with constant size.

BLS utilises something called 'pairing'. A pairing is a function, f, that outputs an element in a finite field, from a pair of 2 points on an elliptic curve.

There are 4 key components within the BLS digital signature scheme:

1. The secret or private key: the key used by participants to sign messages.
2. The public key: derived from the private key and represents identity in the protocol.
3. The message: the data to be signed (a string of bytes)
4. The signature: the output of the signing algorithm, which is a point on the elliptic curve.

"The underlying math involves using 2 subgroups of the BLS12-381 elliptic curve: G₁ is defined over a base field Fᵩ, and G₂ is defined over the field extension Fᵩ₁₂ . The order of both the subgroups is r, which is a 77-digit prime number. The generator of G₁ is g₁ , and of G₂ is g₂."

This just basically means that there's 2 areas of possible points on the elliptic curve, and that there's r amount of points on each of these area. With these subgroups, we can further quantify this with:

1. The secret key is a number between 1 and r.
2. The public key pk is sk \* g1 (secret key scalar multiplied by g1). The public key is a member of the G1 group.
3. The message m is a string of bytes that can be any length. It's hashed to a fixed length h(m) - a member of the G2 group.
4. The signature S is a member of the G2 Group - namely sk _ h(m) (_ here is scalar multiplication)

A key pair consists of a secret key, along with it's corresponding public key.
