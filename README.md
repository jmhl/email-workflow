# Emails
This is a significantly less painful way to work with emails.

### Instructions
+ Clone the repo
+ Run `bundle`
+ Start a server `ruby -run -e httpd . -p5000` (via: https://twitter.com/n0kada/status/351556831958667264)
+ Watch the scss files for changes `sass --watch scss:css`
+ If you are creating a new template, just add a haml file into the templates directory and then add a corresponding scss file in the scss directory
+ Add the template name into the templates array in premailer.rb
+ Run `ruby premailer.rb`
+ Navigate to http://localhost:5000/build/TEMPLATE-NAME.html
