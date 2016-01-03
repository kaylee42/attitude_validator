class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure do
    set :views, "app/views"
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    user = User.new(params)
    if user.save
      redirect to '/'
    else
      @errors = user.errors.messages
      erb :failure
    end
  end

end
