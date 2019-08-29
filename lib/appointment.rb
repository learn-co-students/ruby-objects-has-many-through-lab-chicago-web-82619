class Appointment
@@all=[]
attr_accessor :doctor, :patient, :date

def initialize(date, patient, doctor)
  self.date = date
  self.patient = patient
  self.doctor = doctor
  @@all << self
end

def self.all
  @@all
end

end
