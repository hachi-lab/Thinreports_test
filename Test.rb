# coding: utf-8

require 'thinreports'

report = Thinreports::Report.new layout: 'Test'

# 1st page
report.start_new_page

report.page.item(:test).value('Thinreports')
report.page.item(:test2).value('Thinreports')

# 2nd page
report.start_new_page do |page|
  page.item(:test).value('Ruby').style(:color, '#ff0000')
  page.item(:test2).value('Thinreports')
end

# 3rd page
report.start_new_page do
  item(:test).value('test')
end

# 4th page
report.start_new_page do
  values(test: 'Test',
         test2: 'Thinreports')
end

report.generate(filename: 'Test.pdf')

puts 'Done!'
