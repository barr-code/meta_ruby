require 'students'

describe Student do

	let(:student) {Student.new}

	it "does not have an award" do
		expect(student.has_unixoid?).to be false
	end

	it "can have badges awarded" do
		student.award :unixoid
		expect(student).to have_unixoid
	end

	it "knows how many badges it has" do
		student.award :octocat
		student.award :ronin
		expect(student.badges.count).to eq 2
	end

	it "a student is not winning to start with" do
		expect(student.winning?).to be false
	end

	it "knows a student is winning after receiving a badge" do
		student.award :octocat
		expect(student.winning?).to be true
	end
end