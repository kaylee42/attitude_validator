class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :method_override
  configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "rawrdragon"
  end


end
