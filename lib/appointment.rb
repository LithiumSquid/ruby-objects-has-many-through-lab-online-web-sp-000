class Appointment
  attr_accessor :doctor, :patient, :date
  @@all =[]
  
  def initialize(doctor, patient, date = "Monday, October 14th")
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end
  
  def patients
    self.patient
  end
  
  def doctors
    self.doctor
  end
  
  def self.all
    @@all
  end
  
  
end