# Emails
This is a significantly less painful way to work with emails.

### Instructions
+ Clone the repo
+ Run `bundle`
+ Make sure that you have the Livereload extension for your browser
+ Start a server `ruby -run -e httpd . -p5000` (via: https://twitter.com/n0kada/status/351556831958667264)
+ If you are creating a new template, just add a haml file into the templates directory and then add a corresponding scss file in the scss directory
+ Navigate to http://localhost:5000/build/TEMPLATE-NAME.html

### TODO
+ Add email sending
+ Get Guard/Livereload working better
