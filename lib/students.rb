class Student
	def initialize
		@badges = []
	end

	def award(badge)
		@badges << badge
		self.class.send(:define_method, "has_" + badge.to_s + "?"){@badges.include? badge}
	end

	def method_missing(method_name)
		return false if /^has_.+?\?/.match(method_name.to_s)
	end

end