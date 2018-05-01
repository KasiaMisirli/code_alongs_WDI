class LeapYear
    def self.check(year)
        if year % 100 == 0 && year % 400 != 0
            return false
        end
        year % 4 == 0
    end
end