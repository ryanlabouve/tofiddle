require "selenium-webdriver"

$driver = Selenium::WebDriver.for :chrome
frame_js = 1
frame_css = 2
frame_html = 0

$driver.navigate.to "http://jsfiddle.net"


def inject_content(filename, frame_number)
  content = ""
  File.open(filename, mode='r') do |f|
     content = f.read
  end

  # switch into the child iframe
  $driver.switch_to.frame(frame_number)

  # this works on jsfiddle because the body el is
  # marked as editable
  $driver.find_elements(tag_name: "body")[0].send_keys( content )

  # switch back to parent iframe
  $driver.switch_to.default_content
end

inject_content('app.js', frame_js)
inject_content('main.css', frame_css)
inject_content('index.html', frame_html)


# finding all iframes
#an_iframe = $driver.find_elements(:tag_name, "iframe")[0]


  # $driver.execute_script("return window.frames[#{frame_number}].window.document.getElementsByTagName('body')[0]")
