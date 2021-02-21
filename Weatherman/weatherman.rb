require 'colorize'
require_relative 'weather_analyzer'
include WeatherReport, WeatherDataParser
# Getting Input from terminal
params = WeatherDataParser.get_input(ARGV)
# Getting data from files and stores in an array of Hashes and return it
if params[0] != '-e' && (weather_data = WeatherDataParser.get_month_data(params)).nil?
  puts 'Given Month Data not Found'
  exit
  end
# Generate Report
case params[0]
when '-a'
  WeatherReport.generate_month_report_a(weather_data)
when '-c'
  WeatherReport.generate_month_report_c(weather_data, params)
when '-b'
  WeatherReport.generate_month_report_b(weather_data, params)
when '-e'
  WeatherReport.generate_report_e(params)
end
