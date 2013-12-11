# config/initializers/time_formats.rb
# Pretty dates from http://trevorturk.com/2010/09/23/pretty-dates-in-rails-3/
Time::DATE_FORMATS[:month_and_year] = "%B %Y"
Time::DATE_FORMATS[:pretty] = lambda { |time| time.strftime("%a, %b %e at %l:%M") + time.strftime("%p").downcase }