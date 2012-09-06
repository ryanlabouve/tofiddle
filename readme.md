# ryanlabouve/tofiddle

## Installation

- clone

- edit files in your own workflow

- run tofiddle.rb

### Requirements

- Ruby with Bundler

- chromedriver binary in your path (may have a switch for firefox)


## Snippits which may be useful later


 finding all iframes
```ruby
an_iframe = $driver.find_elements(:tag_name, "iframe")[0]
```

how to access and iframe in js
```javascript
var frames_on_page = window.frames;
var iframe_document = frames_on_page[0.window.document
var iframe_body = iframe_document.getElementsByTagName("body")[0];
```

and the first draft of how I was going to fanagle javascript into doing the legwork of this script:

```ruby
  # $driver.execute_script("return window.frames[#{frame_number}].window.document.getElementsByTagName('body')[0]")
```

## Web References

Selenium Webdriver Documentation: [http://selenium.googlecode.com/svn/trunk/docs/api/rb/frames.html](http://selenium.googlecode.com/svn/trunk/docs/api/rb/frames.html)

Selenium Webdriver Introduction: [http://code.google.com/p/selenium/wiki/RubyBindings](http://code.google.com/p/selenium/wiki/RubyBindings)

Find element by tag_name (iframe): [http://seleniumhq.org/docs/03_webdriver.html#by-tag-name](http://seleniumhq.org/docs/03_webdriver.html#by-tag-name)

Moving between frames: [http://seleniumhq.org/docs/03_webdriver.html#moving-between-windows-and-frames](http://seleniumhq.org/docs/03_webdriver.html#moving-between-windows-and-frames)

Got me thinking in the right direction about how to switch back to parent frame: [https://groups.google.com/forum/?fromgroups=#!topic/selenium-users/Yz3oBJtw-0g](https://groups.google.com/forum/?fromgroups=#!topic/selenium-users/Yz3oBJtw-0g)


