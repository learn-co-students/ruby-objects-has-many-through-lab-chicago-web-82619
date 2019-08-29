class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    def appointments
        Appointment.all.select do |obj|
           obj.doctor == self
        end
    end
    def patients
        patients = []
        appointments.each do |obj|
            patients << obj.patient
        end
        patients
    end
end