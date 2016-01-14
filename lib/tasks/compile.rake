task compile: :environment do
  lib_path = "#{Rails.root}/lib"
  `gcc -c -fPIC #{lib_path}/ffi_test.c -o #{lib_path}/ffi_test.o`
  `gcc -shared -o #{lib_path}/ffi_test.so #{lib_path}/ffi_test.o`
end
