# Emails
This is a significantly less painful way to work with emails.

### Instructions
+ Clone the repo
+ Run `bundle`
+ Run `guard`
+ Start a server `ruby -run -e httpd . -p5000` (via: https://twitter.com/n0kada/status/351556831958667264)
+ Make sure that you have the LiveReload extension for your browser
+ If you are creating a new template, just add a haml file into the haml directory and then add a corresponding scss file in the scss directory
+ Navigate to http://localhost:5000/build/TEMPLATE-NAME.html
+ Activate LiveReload in the browser (by clicking on the extension's icon)

### Example
Once you have the setup complete, you can view an example:
+ Navigate to http://localhost:5000/build/sample.html
+ You can find the HTML in haml/sample.haml
+ You can find the CSS in scss/sample.scss

### TODO
+ Add email sending
