// 计算lgN
const std = @import("std");
const time = std.time;

const print = std.debug.print;

fn lg(N: u64, base: u8) u64 {
    var lgN: u64 = 0;
    var n = N;
    while (n > 0) : (n /= base) {
        lgN += 1;
    }

    return lgN;
}

pub fn main() void {
    print("{}\n", .{2 / 3});
    print("{}\n", .{lg(9, 2)});
}
