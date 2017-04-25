class DifferentCurrencyCodeError < StandardError
  def initialize( msg= "These are different currencies and cannot be handled.")
    super(msg)
  end
end
