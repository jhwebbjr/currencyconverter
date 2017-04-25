require 'pry'                # => true
require_relative 'Currency'  # => true

us_dollar = Currency.new(1000, "usd")         # => #<Currency:0x007fcd8c932608 @amount=1000, @currency_code="usd">
five_us_dollar = Currency.new(5000, "usd")    # => #<Currency:0x007fcd8c932040 @amount=5000, @currency_code="usd">
naija_naira = Currency.new(1000, "ngn")       # => #<Currency:0x007fcd8c931be0 @amount=1000, @currency_code="ngn">
five_naija_naira = Currency.new(5000, "ngn")  # => #<Currency:0x007fcd8c931528 @amount=5000, @currency_code="ngn">
haitian_gourde = Currency.new(1000, "htg")    # => #<Currency:0x007fcd8c9310f0 @amount=1000, @currency_code="htg">
brazilian_real = Currency.new(1000, "brl")    # => #<Currency:0x007fcd8c930bf0 @amount=1000, @currency_code="brl">
ghanian_cedi = Currency.new(1000, "ghs")      # => #<Currency:0x007fcd8c930718 @amount=1000, @currency_code="ghs">

us_dollar == us_dollar    # => true
us_dollar == naija_naira  # => false

total = us_dollar + five_us_dollar  # => #<Currency:0x007fcd8c931028 @amount=6000, @currency_code="usd">
total.amount                        # => 6000

total = us_dollar - five_us_dollar  # => #<Currency:0x007fcd8c92b8f8 @amount=-4000, @currency_code="usd">
total.amount                        # => -4000

total = us_dollar - five_naija_naira  # => #<Currency:0x007fcd8c92aea8 @amount=-4000, @currency_code="usd">
