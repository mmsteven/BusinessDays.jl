module BusinessDays

using Base.Dates

# types.jl
export
	# Abstract type for Holiday Calendars
	HolidayCalendar,

	#immutable concrete types <: HolidayCalendar
	BrazilBanking, #UnitedStates,

	# Lists all concrete types of HolidayCalendars
	holidaycalendarlist

# easter.jl
export
	# returns Rata Die number as Int64, Algo R http://www.linuxtopia.org/online_books/programming_books/python_programming/python_ch38.html
	# function easter_rata(y::Year)
	easter_rata, 

	# Returns easter_rata as Dates.Date
	# function easter_date(y::Year)
	easter_date

# isholiday.jl
export
	# Implements holiday functions for various HolidayCalendar subtypes
	isholiday

# bdayscache.jl : Cache routines for Business Days precalculated days
export
	initcache # TODO cleancache , try a better name...

# bdays.jl : main functions for BusinessDays module
export
	isweekend, isbday, tobday, advancebdays, bdays
	
include("types.jl")
include("easter.jl")
include("isholiday.jl")
include("bdayscache.jl")
include("bdays.jl")

end