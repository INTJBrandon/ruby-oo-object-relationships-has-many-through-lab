class Doctor
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients 
        self.appointments.map do |appointment|
            appointment.patient
        end
    end

end