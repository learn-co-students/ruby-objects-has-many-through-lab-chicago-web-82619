require 'pry'
class Appointment
    attr_accessor :date, :patient, :doctor

    @@all = []

    def self.all
        @@all
    end

    def initialize(patient, date, doctor)
        @patient = patient
        @date = date
        @doctor = doctor
        @@all << self
    end

    # binding.pry

    # def patient
        
    # end

end