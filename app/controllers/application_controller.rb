class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure do
    set :views, "app/views"
  end

  get '/signup' do
    erb :signup
  end

  get '/index' do
    erb :show
  end

  post '/signup' do
    user = User.new(params)
    if user.save
      erb :show
    else
      @errors = user.errors.messages
      erb :failure
    end
  end


end
