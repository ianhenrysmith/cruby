require "ffi"

module FfiCustomTest
  extend FFI::Library
  ffi_lib "c"
  ffi_lib "./ffi_test.so"
  attach_function :ffi_pow, [ :int, :int ], :int
  attach_function :ffi_factorial, [ :int ], :int
  attach_function :ffi_fibonacci, [ :int ], :int
end