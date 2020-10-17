class Appointment
    attr_reader :location, :purpose, :hour, :min

    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment < Appointment
    attr_reader :day

    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on(day)
        day == self.day
    end

    def to_s
        "Reunión local en #{self.location} sobre #{self.purpose} el día #{self.day} a la(s) #{self.hour}:#{self.min}"
    end
end

puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)


class DailyAppointment < Appointment

    def occurs_on(hour, min)
        hour == self.hour
        min == self.min
    end

    def to_s
        "Reunión diaria en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}"
    end
end

puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
# Reunión diaria en Desafío Latam sobre Educación a la(s) 8:15.


class OneTimeAppointment < Appointment
    attr_reader :day, :month, :year

    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year

    end
    def occurs_on(day, month, year)
        day == self.day
        month == self.month
        year == self.year
    end

    def to_s
        "Reunión única en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{self.year} a la(s) #{self.hour}:#{self.min}"
    end
end

puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
# Reunión única en Desafío Latam sobre Trabajo el 4/6/2019 a la(s) 14:30.