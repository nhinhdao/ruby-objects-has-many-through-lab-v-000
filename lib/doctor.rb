class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select {|i| i.doctor == self}
    end

    def patients
        Appointment.all.map {|i| i.patient}
    end


end
