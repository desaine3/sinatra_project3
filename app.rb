require 'sinatra'
require 'csv'

def get_data
    CSV.read('cfg_profiles.csv', :headers => true)
end

get '/' do 
    @data = data.to_a
end