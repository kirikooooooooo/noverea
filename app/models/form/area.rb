class Form::Area < Area
  REGISTRABLE_ATTRIBUTES = %i(country prefecture city)
  attr_accessor :country
end