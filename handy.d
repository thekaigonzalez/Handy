/// Handy is licensed under the MIT license.

import std.stdio;
import std.algorithm;
import std.string;
import std.array;

/**

Handles a Handy_Array.

Arrays should start with '[',
They should end with ']'.

*/
string[] handyArray(string content) {
    string[] ctx;
    if (startsWith(content, "[")) {
        string inside = content[indexOf(content, "[")+1 .. indexOf(content, "]")];
        string[] n_ctx;
        string[] conten_t = inside.split(",");
        foreach(string g ; conten_t) {
            n_ctx = n_ctx~strip(g);
        }
        ctx = n_ctx;
    } else {
        writeln("handy: not a handy_array.");
    }
    return ctx;
}
