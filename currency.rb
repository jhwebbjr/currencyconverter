require 'pry'
require_relative 'error'

class Currency
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def amount
    @amount
  end

  def currency_code
    @currency_code
  end

  def +(other)
    if other.is_a?(Currency) && other.currency_code == self.currency_code
      total = self.amount + other.amount
    else
      raise DifferentCurrencyCodeError
    end
    Currency.new(total, currency_code)
  end

  def -(other)
    if other.is_a?(Currency) && other.currency_code == self.currency_code
      total = self.amount - other.amount
    else
      raise DifferentCurrencyCodeError
    end
    Currency.new(total, currency_code)
  end

  def *(other)
    if other.is_a?(Currency) && other.currency_code == self.currency_code
      total = self.amount.to_f * other.amount.to_f
    else
      raise DifferentCurrencyCodeError
    end
    Currency.new(total, currency_code)
  end
end
