
class Patient
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        appointment = Appointment.new(date, self, doctor)
    end


    def appointments
        Appointment.all.select do |song|
            song.patient == self
        end
    end

    def doctors
        self.appointments.map do |appointment|
            appointment.doctor
        end
    end
end