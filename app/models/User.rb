class User
  PROPERTIES = %i(id name email)
  PROPERTIES.each { |prop| attr_accessor prop }

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send "#{key}=", value if PROPERTIES.member? key.to_sym
    end
  end
end
