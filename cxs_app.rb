require 'pry'                # => true
require_relative 'Currency'  # => true

us_dollar = Currency.new(1000, "usd")         # => #<Currency:0x007fbcff12fac0 @amount=1000, @currency_code="usd">
five_us_dollar = Currency.new(5000, "usd")    # => #<Currency:0x007fbcff127938 @amount=5000, @currency_code="usd">
naija_naira = Currency.new(1000, "ngn")       # => #<Currency:0x007fbcff1271b8 @amount=1000, @currency_code="ngn">
five_naija_naira = Currency.new(5000, "ngn")  # => #<Currency:0x007fbcff126998 @amount=5000, @currency_code="ngn">
haitian_gourde = Currency.new(1000, "htg")    # => #<Currency:0x007fbcff1262b8 @amount=1000, @currency_code="htg">
brazilian_real = Currency.new(1000, "brl")    # => #<Currency:0x007fbcff125e80 @amount=1000, @currency_code="brl">
ghanian_cedi = Currency.new(1000, "ghs")      # => #<Currency:0x007fbcff125ae8 @amount=1000, @currency_code="ghs">

us_dollar == us_dollar    # => true
us_dollar == naija_naira  # => false

total = us_dollar + five_us_dollar  # => #<Currency:0x007fbcff124e90 @amount=6000, @currency_code="usd">
total.amount                        # => 6000

total = us_dollar - five_us_dollar  # => #<Currency:0x007fbcff124198 @amount=-4000, @currency_code="usd">
total.amount                        # => -4000

# begin
#   total = us_dollar + five_naija_naira
# rescue DifferentCurrencyCodeError
# end                                     # => nil

# begin
  # total = us_dollar - five_naija_naira
# rescue DifferentCurrencyCodeError
# end                                     # => nil

# begin
  # total = us_dollar * five_us_dollar  # => #<Currency:0x007fbcff11f9b8 @amount=5000000.0, @currency_code="usd">
# rescue ExceptionName
#
# end
