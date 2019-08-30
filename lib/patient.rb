class Patient

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|app| app.patient == self}
        #iterates through appointments array and returns appointments that belong to the patient
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
        #creates new appointment, knows that it belongs to a patient
    end

    def doctors
        self.appointments.map {|app| app.doctor}
        #self.songs.map {|song| song.genre} 

        #iterates over the patients appointments and collects the doctor that belongs to each appointment
    end


end