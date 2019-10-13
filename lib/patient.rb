def Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
    appointment.patient = self
  end
  
  def appointments
    Appointment.all.select do |patient|
      appointment.patient == self
    end
  end
    
    def doctors
      Appointment.all.select do |doctor|
        appointment.doctor == self
      end
    end
    
  def self.all
    @@all
  end
  
end