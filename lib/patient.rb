class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
    def appointments
        Appointment.all.select do |obj| 
            obj.patient == self
        end
    end
    def patients
        patients = []
        appointments.each do |obj|
            if obj.doctor == self
            end
        end
    end
    def doctors
        doctors = []
        appointments.each do |obj|
            doctors << obj.doctor
        end
        doctors
    end
end