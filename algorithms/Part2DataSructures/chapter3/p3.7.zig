const std = @import("std");

const print = std.debug.print;
const os = std.os;
const assert = std.debug.assert;
const expect = std.testing.expect;
const mem = std.mem;
const process = std.process;
const ga = std.heap.page_allocator;

fn heads() !bool {
    var buf: [8]u8 = undefined;
    try std.crypto.randomBytes(buf[0..]);
    const seed = mem.readIntLittle(u64, buf[0..8]);
    var r = std.rand.DefaultPrng.init(seed);
    return r.random.int(u64) % 2 == 0;
}

pub fn main() !void {
    var it = process.args();
    var i: usize = 0;
    var j: usize = 0;
    var cnt: usize = 0;

    const prog_name = try it.next(ga) orelse unreachable;
    defer ga.free(prog_name);

    const arg1 = try it.next(ga) orelse unreachable;
    const N = try std.fmt.parseInt(usize, arg1, 10);
    defer ga.free(arg1);

    const arg2 = try it.next(ga) orelse unreachable;
    const M = try std.fmt.parseInt(usize, arg2, 10);
    defer ga.free(arg2);

    const slice = try ga.alloc(usize, N + 1);
    defer ga.free(slice);

    for (slice) |*item| {
        item.* = 0;
    }
    while (i < M) : ({
        i += 1;
        slice[cnt] = slice[cnt] + 1;
    }) {
        cnt = 0;
        j = 0;
        while (j <= N) : (j += 1) {
            if (heads()) |is_heads| {
                if (is_heads) {
                    cnt += 1;
                }
            } else |err| {
                unreachable;
            }
        }
    }

    for (slice) |item, idx| {
        print("{} ", .{idx});
        i = 0;
        while (i < slice[idx]) : (i += 10) {
            print("*", .{});
        }
        print("\n", .{});
    }
}
