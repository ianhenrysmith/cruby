require "ffi"

module FfiConnector
  extend FFI::Library
  ffi_lib "c"
  ffi_lib "#{Rails.root}/lib/ffi_test.so"
  attach_function :ffi_pow, [ :int, :int ], :int
  attach_function :ffi_factorial, [ :int ], :int
  attach_function :ffi_fibonacci, [ :int ], :int

  # int => ulong_long
  # http://www.rubydoc.info/github/ffi/ffi/FFI/TypesGenerator
  # should use unsigned long long int, for reasons 
end