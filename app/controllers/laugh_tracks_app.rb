class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    erb :"comedians/index", locals: { all_comedians: Comedian.all }
  end
end
