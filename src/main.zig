const std = @import("std");

fn fizzbuzz(writer: anytype, i: u32) !void {
    if (i % 15 == 0) {
        try writer.print("{s}\n", .{"FizzBuzz"});
    } else if (i % 3 == 0) {
        try writer.print("{s}\n", .{"Fizz"});
    } else if (i % 5 == 0) {
        try writer.print("{s}\n", .{"Buzz"});
    } else {
        try writer.print("{}\n", .{i});
    }
}

pub fn main() anyerror!void {
    const stdout = std.io.getStdOut().writer();
    var i: u32 = 1;
    while (i <= 100) : (i += 1) {
        try fizzbuzz(stdout, i);
    }
}



