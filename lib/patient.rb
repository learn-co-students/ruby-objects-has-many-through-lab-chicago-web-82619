# binding.pry

class Patient
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(self, date, doctor)
    end

    def appointments
        # binding.pry
        Appointment.all.select {|appointment| appointment.patient == self}
    end
    
    def doctors
        self.appointments.collect {|p| p.doctor}
    end

end