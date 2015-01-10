guard :compass do
  watch(%r{(.*)\.scss$})
end

guard :haml, input: 'haml', output: 'html'

guard :livereload do
  watch(%r{build/.+\.html$})
  watch(%r{css/.+\.css})
end

listener = Listen.to('html', 'css') do |modified, added, removed|
  system('ruby premailer.rb')
end

listener.start
