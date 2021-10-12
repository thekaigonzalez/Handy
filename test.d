module test;

import handy;
import std.stdio;

void main() {
    // iterate through array contents (virtual array :)
    foreach (string c ; handyArray("[1, 2, 3, 4]")) {
        writeln("content: " ~ c);
    }
}