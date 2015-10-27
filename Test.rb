# coding: utf-8

require 'thinreports'
require 'open-uri'

report = Thinreports::Report.new layout: 'Test'

# 1st page
report.start_new_page
  report.page.item(:test).value('Thinreports')
  report.page.item(:test2).value('Thinreports')
  report.page.item(:image).src('Tanaka_Sensei.png')

# 2nd page
report.start_new_page do |page|
  page.item(:test).value('Ruby').style(:color, '#ff0000')
  page.item(:test2).value('Thinreports')
  page.item(:image).value(open('http://www.prometric-jp.com/career/img/pho_20101020_01.jpg'))
end

report.generate(filename: 'Test.pdf')

puts 'Done!'
