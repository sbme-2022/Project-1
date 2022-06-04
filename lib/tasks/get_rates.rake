# frozen_string_literal: true

require 'httparty'

task get_rates: :environment do
  response = HTTParty.get('https://api.apilayer.com/exchangerates_data/latest?apikey=vV1XjZwlnpEbzI3tIA5Bw2eqrg7631QJ')
  rates = response['rates']

  rates.each do |name, value|
    CurrencyRate.create!(name: name, value: value)
  end
end
