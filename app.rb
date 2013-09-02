require 'sinatra'
require 'csv'

def get_data
    CSV.read('cfg_profiles.csv', :headers => true)
end

get '/' do 
  get_data.to_a
end

def text
    File.open('cfg_profiles.csv', 'r') do |f|
        puts "Opening 'cfg_profiles.txt'..."
        raw_text = f.read  # read the contents of the file
        return raw_text
    end
end

def write_html(data)
    puts "Creating html..."

    puts data
    puts "Output written. Enjoy!"
end

write_html(text)