require 'pry'                # => true
require_relative 'Currency'  # => true

us_dollar = Currency.new(1000, "usd")         # => #<Currency:0x007fb03f14ac98 @amount=1000, @currency_code="usd">
five_us_dollar = Currency.new(5000, "usd")    # => #<Currency:0x007fb03f14a630 @amount=5000, @currency_code="usd">
naija_naira = Currency.new(1000, "ngn")       # => #<Currency:0x007fb03f14a108 @amount=1000, @currency_code="ngn">
five_naija_naira = Currency.new(5000, "ngn")  # => #<Currency:0x007fb03f149c30 @amount=5000, @currency_code="ngn">
haitian_gourde = Currency.new(1000, "htg")    # => #<Currency:0x007fb03f149618 @amount=1000, @currency_code="htg">
brazilian_real = Currency.new(1000, "brl")    # => #<Currency:0x007fb03f1492f8 @amount=1000, @currency_code="brl">
ghanian_cedi = Currency.new(1000, "ghs")      # => #<Currency:0x007fb03f148ee8 @amount=1000, @currency_code="ghs">

us_dollar == us_dollar    # => true
us_dollar == naija_naira  # => false

total = us_dollar + five_us_dollar  # => #<Currency:0x007fb03f1483f8 @amount=6000, @currency_code="usd">
total.amount                        # => 6000

total = us_dollar - five_us_dollar  # => #<Currency:0x007fb03f149668 @amount=-4000, @currency_code="usd">
total.amount                        # => -4000

total = us_dollar - five_naija_naira  # => #<Currency:0x007fb03f143628 @amount=-4000, @currency_code="usd">
