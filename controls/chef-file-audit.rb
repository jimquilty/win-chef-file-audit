# copyright: 2018, The Authors

title "Chef File Check"

# you add controls here
control "File-Check-01" do                        # A unique ID for this control
  impact 0.7                                      # The criticality, if this control fails.
  title "Check for Chef File"                     # A human-readable title
  desc "Checks to see that the Chef file exists and that it's contents matches what is expected."
  describe file('C:\chef.txt') do                 # The actual test
    it { should_exist }
    its('content') { should eq 'Chef is Great!\r\n' }
  end
end
