get '/patients'  do
  erb :'patients/index'
end

get '/patients/new' do
  erb :'patients/new'
end

post '/patients' do
  @patient = Patient.new(params[:patient])
  if @patient.save
    redirect "/patients/#{@patient.id}"
  else
    @errors = @patient.errors.full_messages
    erb :'/patients/new'
  end
end

get '/patients/:id' do
  @patient = Patient.find_by(id: params[:id])
  erb :'/patients/show'
end
