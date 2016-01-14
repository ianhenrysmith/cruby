class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  REPETITIONS = 1_000_000
  NUMBER = 20

  def index
    start_ruby_factorial = Time.now

    REPETITIONS.times do
      ruby_factorial(NUMBER)
    end

    @ruby_runtime = Time.now - start_ruby_factorial

    start_c_factorial = Time.now

    REPETITIONS.times do
      c_factorial(NUMBER)
    end

    @c_runtime = Time.now - start_c_factorial

    @faster_percentage = (@ruby_runtime / @c_runtime * 100).round
  end

  private

  def ruby_factorial(number)
    if number == 0
      1
    else
      number * ruby_factorial(number - 1)
    end
  end

  def c_factorial(number)
    FfiConnector.ffi_factorial(number)
  end
end
