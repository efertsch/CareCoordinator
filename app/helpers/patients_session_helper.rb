helpers do

  def current_patient
    session[:patient_id] ? Patient.find(session[:patient_id]) : nil
  end

  def login
    session[:patient_id] = @patient.id
  end

  def logout
    session.destroy
  end

  def logged_in?
    current_patient ? true : false
  end

end
