# frozen_string_literal: true

# Module generating weather reports
module WeatherReport
  def generate_report_e(params)
    months = %w[Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec]
    weather_forecast = []
    months.each do |month|
      params[2] = month
      if (weather_data = WeatherDataParser.get_month_data(params)).nil?
        next
      end

      weather_forecast_month = WeatherDataParser.getWeatherForecast(weather_data)
      weather_forecast.push(weather_forecast_month)
    end
    WeatherDataParser.fetch_results(weather_forecast)
  end

  def generate_month_report_a(data)
    avg_m = 0
    avg_l = 0
    avg_h = 0
    (0..data.length - 2).each do |i|
      avg_m += data[i]['Max TemperatureC'].to_i
      avg_l += data[i]['Min TemperatureC'].to_i
      avg_h += data[i][' Mean Humidity'].to_i
    end
    avg_m /= data.length; avg_l /= data.length; avg_h /= data.length
    puts "Highest Average: #{avg_m}C \nLowest Average: #{avg_l}C\nAverage Humidity: #{avg_h}%"
  end

  def generate_month_report_c(data, params)
    puts "#{params[2]} #{params[1]}"
    (0..data.length - 2).each do |i|
      date = data[i]['PKT'].split('-').last
      max_t = data[i]['Max TemperatureC'].to_i
      low_t = data[i]['Min TemperatureC'].to_i
      print "#{date} "
      (max_t.times { print('+'.red) })
      puts " #{max_t}C"
      print "#{date} "
      (low_t.times { print('+'.blue) })
      puts " #{low_t}C"
    end
  end

  # BONUS SECTION
  def generate_month_report_b(data, params)
    puts "#{params[2]} #{params[1]}"
    (0..data.length - 2).each do |i|
      date = data[i]['PKT'].split('-').last
      max_t = data[i]['Max TemperatureC'].to_i
      low_t = data[i]['Min TemperatureC'].to_i
      print "#{date} "
      (low_t.times { print('+'.blue) })
      (max_t.times { print('+'.red) })
      puts " #{low_t}C - #{max_t}C"
    end
  end
end

# Module for parsing and returning weather-data
module WeatherDataParser
  def fetch_results(data)
    max_t = 0
    low_t = 999
    max_h = 0
    max_t_day = ''
    low_t_day = ''
    max_h_day = ''
    data.each do |i|
      count = 0

      if i[count].to_i > max_t
        max_t = i[count].to_i
        max_t_day = i[count + 1].to_s
      end
      if i[count + 2].to_i < low_t
        low_t = i[count + 2].to_i
        low_t_day = i[count + 3].to_s
      end
      if i[count + 4].to_i > max_h
        max_h = i[count + 4].to_i
        max_h_day = i[count + 5].to_s
      end
    end
    puts "Highest #{max_t}C on #{max_t_day}"
    puts "Lowest #{low_t}C on #{low_t_day}"
    puts "Humid #{max_h}% on #{max_h_day}"
  end

  def get_input(argv)
    mode = argv[0]
    months_name = {
      1 => 'Jan', 2 => 'Feb', 3 => 'Mar', 4 => 'Apr', 5 => 'May', 6 => 'Jun',
      7 => 'Jul', 8 => 'Aug', 9 => 'Sep', 10 => 'Oct', 11 => 'Nov', 12 => 'Dec'
    }
    data = get_input_action(mode, argv)
    path = argv[2]
    month = data[1]
    month = months_name[month.to_i]
    [mode, data[0], month, path]
  end

  def get_input_action(mode, argv)
    case mode
    when '-e'
      year = argv[1]
    when '-a', '-c', '-b'
      year = argv[1].split('/').first
      month = argv[1].split('/').last
    else
      puts 'Invalid option entered.!!'
    end
    [year, month]
  end

  def get_month_data(params)
    header = []
    data = []
    count = 0

    # Error Catch in-case some months data not present
    begin
      file = File.open("#{params[3]}/#{params[3]}_#{params[1]}_#{params[2]}.txt")
    rescue Errno::ENOENT
      return nil
    else
      file.readlines.map(&:strip).each do |line|
        if line != ''
          if count < 1
            header = line.split(',')
            count += 1
          else
            arr = line.split(',')
            hash = header.zip(arr).to_h
            data.push(hash)
          end
        end
      end
    end
    file.close
    data
  end

  def getWeatherForecast(data)
    max_temp = 0
    min_temp = 999
    max_hum = 0
    max_temp_day = ''
    min_temp_day = ''
    max_hum_day = ''
    (0..data.length - 2).each do |i|
      if data[i]['Max TemperatureC'].to_i > max_temp
        max_temp = data[i]['Max TemperatureC'].to_i
        max_temp_day = if data[i]['PKT'].nil?
                         data[i]['PKST']
                       else
                         data[i]['PKT']
                       end
      end
      if data[i]['Min TemperatureC'].to_i < min_temp
        min_temp = data[i]['Min TemperatureC'].to_i
        min_temp_day = if data[i]['PKT'].nil?
                         data[i]['PKST']
                       else
                         data[i]['PKT']
                       end
      end
      next unless data[i]['Max Humidity'].to_i > max_hum

      max_hum = data[i]['Max Humidity'].to_i
      max_hum_day = if data[i]['PKT'].nil?
                      data[i]['PKST']
                    else
                      data[i]['PKT']
                    end
    end
    [max_temp, max_temp_day, min_temp, min_temp_day, max_hum, max_hum_day]
  end
end
