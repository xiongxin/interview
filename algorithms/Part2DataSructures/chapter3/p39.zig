const std = @import("std");

const print = std.debug.print;
const os = std.os;
const assert = std.debug.assert;
const expect = std.testing.expect;
const mem = std.mem;
const process = std.process;
const ga = std.heap.page_allocator;

const N = 9;
const M = 5;

const Node = struct {
    item: i32,
    next: Link,
};

const Link = *Node;

pub fn main() !void {
    var i: i32 = 1;
    const t = try ga.create(Node);
    defer ga.destroy(t);
    var x = t;
    t.item = i;
    t.next = t;
    i = 2;
    while (i <= N) : (i += 1) {
        var new = try ga.create(Node);
        x.next = new;
        x = new;
        x.item = i;
        x.next = t;
    }

    while (x != x.next) {
        i = 1;
        while (i < M) : (i += 1) {
            x = x.next;
        }
        var tmp = x.next;
        x.next = x.next.next;
        ga.destroy(tmp);
    }

    print("t.item={}\n", .{x.item});
}
