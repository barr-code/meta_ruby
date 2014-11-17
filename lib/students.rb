class Student

	def self.attr_accessor?(boolean)
		self.send(:define_method, boolean.to_s){ instance_variable_get('@' + boolean.to_s.chop)}
		self.send(:define_method, boolean.to_s.chop+"="){|value|instance_variable_set('@'+boolean.to_s.chop, value)}
	end

	attr_reader :badges
	attr_accessor? :winning?
	
	def initialize
		@badges = []
		@winning = false
	end

	def award(badge)
		@badges << badge
		self.class.send(:define_method, "has_" + badge.to_s + "?"){@badges.include? badge}
		self.winning = true
	end

	def method_missing(method_name, *args)
		return false if /^has_.+?\?/.match(method_name.to_s)
		super method_name, *args
	end
end