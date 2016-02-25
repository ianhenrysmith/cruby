require "ffi"

module FfiConnector
  extend FFI::Library
  ffi_lib "c"
  ffi_lib "#{Rails.root}/lib/ffi_test.so"
  attach_function :ffi_pow, [ :ulong_long, :ulong_long ], :ulong_long
  attach_function :ffi_factorial, [ :ulong_long ], :ulong_long
  attach_function :ffi_fibonacci, [ :ulong_long ], :ulong_long

  # int => ulong_long
  # http://www.rubydoc.info/github/ffi/ffi/FFI/TypesGenerator
  # should use unsigned long long int, for reasons 
end