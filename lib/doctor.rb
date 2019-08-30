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

    def appointments
        Appointment.all.select {|app| app.doctor == self}
        #iterate through all appointments and finds those that belong to this doctor
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
        #creates a new appointment that knows it belongs to the doctor
    end

    def patients
        self.appointments.map { |app| app.patient}
        #iterates over that doctor's appointments and collects the patient that belongs to each appointments
    end


end