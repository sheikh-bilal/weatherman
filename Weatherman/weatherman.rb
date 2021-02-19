require 'colorize'
require_relative 'weather_analyzer.rb'
include WeatherReport, WeatherDataParser
# Getting Input from terminal
params = WeatherDataParser.getInput(ARGV)
# Getting data from files and stores in an array of Hahes and return it
weather_data = WeatherDataParser.get_month_data(params) if params[0] != '-e'
# Generate Report
if params[0] == '-a'
  WeatherReport.generate_month_report_a(weather_data)
elsif params[0] == '-c'
  WeatherReport.generate_month_report_c(weather_data, params)
elsif params[0] == '-b'
  WeatherReport.generate_month_report_b(weather_data, params)
elsif params[0] == '-e'
  WeatherReport.generate_report_e(params)
end
