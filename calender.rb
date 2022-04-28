require JalaliDate
require Date

jalali_date = JalaliDate.new(Date.today)
gregorian_date = Date.today

puts "hello the date in Jallalo is: #{jalali_date} ,
and Gregorian date is: #{gregorian_date}"

class Duration
    def initialize(startday, endday, is_jalali)
        @startday = startday
        @endday = endday
        @is_jalali = is_jalali
        
        convert_start_date
        convert_end_date
    end

    def days
        unless check_input_dates
            puts "input dates are not valid"
            return
        end

        return @converted_end_date.sub(@converted_start_date)
    end

    def work_days
        unless check_input_dates
            puts "input dates are not valid"
            return
        end



    end

    def convert_start_date
       @converted_start_date Date.strptime(@startdate, '%Y-%m-%d') rescue nil
    end

    def check_input_dates
        @converted_end_date.present? &&  @converted_start_date.present? 
    end
end


