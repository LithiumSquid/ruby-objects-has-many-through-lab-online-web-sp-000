def Patient
  attr_accessor :name
  attr_reader :doctor, :date
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
  def appointments
    Appointment.all.select do |patient|
      appointment.patient == self
    end
  end
    
    def doctors
      Appointment.all.select do |doctor|
        appointment.doctor
      end
    end
    
  def self.all
    @@all
  end
  
end