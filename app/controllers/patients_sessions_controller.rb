get '/patients/sessions/new' do
  erb :'sessions/patients/new'
end

post '/patients/sessions' do
  @patient = Patient.authenticate(params[:patient][:email], params[:patient][:password])
  if @patient
    login
    redirect "/patients/#{@patient.id}"
  else
    erb :'sessions/patients/new'
  end
end

delete '/patients/sessions' do
  logout
  redirect '/'
end

