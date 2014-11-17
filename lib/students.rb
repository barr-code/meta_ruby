class Student

	def Student::attr_accessor?(boolean)
		class_eval { define_method(boolean.to_s,
			lambda { instance_variable_get('@' + boolean.to_s.chop)})}
		class_eval {define_method(boolean.to_s.chop+"=", lambda {|value| instance_variable_set('@'+boolean.to_s.chop, value)})}
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

	def method_missing(method_name)
		return false if /^has_.+?\?/.match(method_name.to_s)
	end

	

end