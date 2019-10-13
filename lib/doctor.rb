class Doctor
  attr_accessor :name
  attr_reader :patient, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end
  
  def appointments
    Appointment.all.select do |doctor|
      appointment.doctor == self
    end
  end
    
  def patients
    Appointment.all.select do |patients|
      appointment.patients == self
    end
  end
  
  def self.all
    @@all
  end
  
end