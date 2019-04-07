
#
# Reference: http://rubygems.rubyforge.org/rdoc/Gem/Specification.html
#
# Another reference, which displays all of the defaults and shows useful
# examples: http://docs.rubygems.org/read/chapter/20
#
Gem::Specification.new do |s|

  # This gem’s name. Required.
  s.name = 'budgetGenerator'

  # This gem’s version. Required.
  s.version = '1.0.0'

  # The date this gem was created. Required. Default = `Time.now`
  s.date = Time.now

  # A short summary of this gem’s description. Displayed in `gem list -d`. Required.
  s.summary = 'This is a budget generator gem. It was built to help people plan their finances with the most expenses.'

  # A long description of this gem
  s.description = 'Budget generator allows users make smart monthly savings according to three different types of savings mode: Aggressive, medium and low.'

  # The list of authors who wrote this gem
  s.authors = ['weje praise']

  # The URL of this gem’s home page
  s.homepage = 'http://github.com/wejeel/budget-generator'

  # A contact email for this gem
  s.email = 'wejepraise@yahoo.com'

  s.files = ['lib/budgetGenerator.rb']

end