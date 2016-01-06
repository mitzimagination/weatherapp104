require 'yahoo_weatherman'

def get_location(location)
client = Weatherman::Client.new:unit=>"F"
client.lookup_by_location(location)
end

weather = get_location('90210')

weather.forecasts.each do |forecast|
 puts forecast['day'].to_s + ' is going to be ' +
forecast['text'].downcase + ' with a low of ' +
forecast['low'].to_s + ' and a high of ' +
forecast['high'].to_s
end

today = Time.now.strftime('%w').to_i
