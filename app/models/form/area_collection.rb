class Form::AreaCollection < Form::Base
  FORM_COUNT = 50
  attr_accessor :areas

  def initialize(attributes = {})
    super attributes
    self.areas = FORM_COUNT.times.map { Area.new() } unless self.areas.present?
  end

  def areas_attributes=(attributes)
    self.areas = attributes.map { |_, v| Area.new(v) }
  end

  def save
    Area.transaction do
      self.areas.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end