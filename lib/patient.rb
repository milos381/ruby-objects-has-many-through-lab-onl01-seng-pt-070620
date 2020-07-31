class Patients

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    patients.map do |patient|  #why not each
      patient.doctor
    end
  end

end
