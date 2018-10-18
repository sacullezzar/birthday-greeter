require 'active_support'
require 'active_support/core_ext'
class Tool
def days_until_birthday(usr)
    # usr = Date.parse(usr)
    # p usr
    # bday = Date.new(Date.today.year, usr.month, usr.day)
    #
    # bday += 1.years if Date.today >= bday
    # p(bday - Date.today).to_i
    bday = Date.parse(usr)
    this_year  = Date.new(Date.today.year,   bday.month, bday.day )
    if this_year > Date.today
      puts this_year - Date.today
    else
       puts Date.new(Date.today.year + 1,   bday.month, bday.day ) - Date.today
    end

  end
end
