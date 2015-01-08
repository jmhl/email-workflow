require 'premailer'

templates = Dir['templates/*.haml']
templates = templates.map{ |template| template.sub(/.+\//, '').sub(/\..+/, '') }

templates.each do |name|
  system "haml templates/#{name}.haml templates/#{name}.html"
  premailer = Premailer.new(
    "templates/#{name}.html",
    :warn_level => Premailer::Warnings::SAFE
  )

  File.open("build/#{name}.html", 'w') do |fout|
    fout.puts premailer.to_inline_css
  end

  warning_file = File.open("warnings/#{name}.txt", 'w+') or
    File.new("warnings/#{name}.txt", 'w+')

  premailer.warnings.each do |w|
    warning_file.write(
      "#{w[:message]} (#{w[:level]}) may not render properly in #{w[:clients]}\n"
    )
  end
end
