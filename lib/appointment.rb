class Appointment

  @@all = []

  attr_accessor :name, :doctor, :patient

  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
