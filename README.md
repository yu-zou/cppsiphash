SipHash in C++11
====

A header-only C++11 implementation of [SipHash-2-4](https://131002.net/siphash/),
a fast short-input
[PRF](https://en.wikipedia.org/wiki/Pseudorandom_function) with a
128-bit key and 64-bit output.

Extract from the description:

    SipHash is a family of pseudorandom functions (a.k.a. keyed hash
    functions) optimized for speed on short messages.

    Target applications include network traffic authentication and defense
    against hash-flooding DoS attacks.

    SipHash is secure, fast, and simple (for real):
    * SipHash is simpler and faster than previous cryptographic algorithms
      (e.g. MACs based on universal hashing)
    * SipHash is competitive in performance with insecure
      non-cryptographic algorithms (e.g. MurmurHash)
    * We propose that hash tables switch to SipHash as a hash
      function. Users of SipHash already include OpenDNS, Perl 5, Ruby, or
      Rust.


Introductory blog post: https://idea.popcount.org/2013-01-24-siphash/

installation
---

Copy `siphash.hpp` to your code directory, or add to include path.

usage
---

Shortest program:

```c++
#include <iostream>
#include "siphash.hpp"

int main() {
    siphash::Key key = {0,1,2,3,4,5,6,7,8,9,0xa,0xb,0xc,0xd,0xe,0xf};
    char pt[] = "hello world!";
    std::uint64_t hash = siphash::siphash24(pt, key);
    std::cout << "plaintext=" << pt << " hash=" << hash << std::endl;
    return 0;
}
```

testing
---

Type `make`:

    $ make
    64 tests passed in 0.008ms, 125ns per test

license
----

This code is released under the MIT License, the full text of which can be found is in the header of [`siphash.hpp`](https://github.com/melver/cppsiphash/blob/master/siphash.hpp).
