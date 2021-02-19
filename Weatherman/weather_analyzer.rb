# Module generating weather reports
module WeatherReport
  def generate_report_e(params)
    months = %w[Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec]
    weather_forcast = []
    months.each do |month|
      params[2] = month
      weather_data = WeatherDataParser.get_month_data(params)
      weather_forcast_month = WeatherDataParser.getWeatherForcast(weather_data)
      weather_forcast.push(weather_forcast_month)
    end
    WeatherDataParser.fetchResults(weather_forcast)
    # puts "Highest #{weather_forcast_month[0]}C on #{weather_forcast_month[1]}"
    # puts "Lowest #{weather_forcast_month[2]}C on #{weather_forcast_month[3]}"
    # puts "Humid #{weather_forcast_month[4]}% on #{weather_forcast_month[5]}"
  end

  def generate_month_report_a(data)
    avg_m = 0
    avg_l = 0
    avg_h = 0
    for i in 0..data.length - 2
      avg_m += data[i]['Max TemperatureC'].to_i
      avg_l += data[i]['Min TemperatureC'].to_i
      avg_h += data[i][' Mean Humidity'].to_i
    end
    avg_m /= data.length
    avg_l /= data.length
    avg_h /= data.length
    puts "Highest Average: #{avg_m}C"
    puts "Lowest Average: #{avg_l}C"
    puts "Average Humidity: #{avg_h}%"
  end

  def generate_month_report_c(data, params)
    puts "#{params[2]} #{params[1]}"
    for i in 0..data.length - 2
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
    for i in 0..data.length - 2
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
# Modeule for parsing and returning weather-data
module WeatherDataParser
  def fetchResults(data)
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

  def getInput(argv)
    mode = argv[0]
    months_name = {
      1 => 'Jan', 2 => 'Feb', 3 => 'Mar', 4 => 'Apr', 5 => 'May', 6 => 'Jun', 7 => 'Jul', 8 => 'Aug', 9 => 'Sep', 10 => 'Oct', 11 => 'Nov', 12 => 'Dec'
    }
    if mode == '-e'
      year = argv[1]
    elsif (mode == '-a') || (mode == '-c') || (mode == '-b')
      year = argv[1].split('/').first
      month = argv[1].split('/').last
    else
      puts 'Invalid option entered.!!'
    end
    path = argv[2]
    month = months_name[month.to_i]
    [mode, year, month, path]
  end

  def get_month_data(params)
    header = []
    data = []
    count = 0
    file = File.open("#{params[3]}/#{params[3]}_#{params[1]}_#{params[2]}.txt")
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
    file.close
    data
  end

  def getWeatherForcast(data)
    max_temp = 0
    min_temp = 999
    max_hum = 0
    for i in 0..data.length - 2
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
