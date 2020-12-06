const std = @import("std");
const expect = std.testing.expect;
const mem = std.mem;
const fmt = std.fmt;
const print = std.debug.print;

const N = 100000;

pub fn main() void {
    var a = [_]u64{1} ** N;
    var i: usize = 2;
    var j: usize = 2;

    while (i < N) : (i += 1) {
        if (a[i] == 1) {
            j = i;
            while (i * j < N) : (j += 1) {
                a[i * j] = 0;
            }
        }
    }
    i = 2;
    while (i < N) : (i += 1) {
        if (a[i] == 1) {
            print("{} ", .{i});
        }
    }

    print("\n", .{});
}
