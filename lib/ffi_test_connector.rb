require "ffi"

module FfiCustomTest
  extend FFI::Library
  ffi_lib "c"
  ffi_lib "/Users/ian/cruby/lib/ffi_test.so"
  attach_function :ffi_pow, [ :ulong_long, :ulong_long ], :ulong_long
  attach_function :ffi_factorial, [ :ulong_long ], :ulong_long
  attach_function :ffi_fibonacci, [ :ulong_long ], :ulong_long
end