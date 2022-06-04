# frozen_string_literal: true

require 'httparty'

task get_rates: :environment do
  response = HTTParty.get("https://api.apilayer.com/exchangerates_data/latest?apikey=#{ENV['api_key']}")
  rates = response['rates']

  rates.each do |name, value|
    CurrencyRate.create!(currencyName: name, currencyValue: value)
  end
end
