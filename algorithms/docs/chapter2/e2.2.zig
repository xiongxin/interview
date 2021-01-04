const N: u64 = 1000;
const std = @import("std");
const time = std.time;

const print = std.debug.print;

pub fn main() void {
    var i: u64 = 0;
    var j: u64 = 0;
    var k: u64 = 0;
    var count: u64 = 0;

    var start_time = time.milliTimestamp();

    while (i < N) : ({
        i += 1;
        j = 0;
    }) {
        while (j < N) : ({
            j += 1;
            k = 0;
        }) {
            while (k < N) : (k += 1) {
                count += 1;
            }
        }
    }

    var end_time = time.milliTimestamp();

    print("N = {}, 花费时间: {}毫秒, count={}\n", .{ N, end_time - start_time, count });
    //N = 1000, 花费时间: 2597毫秒, count=1000000000
    //N = 100, 花费时间: 3毫秒, count=1000000  , 一毫秒执行300000个指令，一秒就是 300 000 000 (3亿次)
    //N = 10, 花费时间: 0毫秒, count=1000
}
