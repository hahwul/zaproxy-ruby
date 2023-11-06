<img src="https://github.com/hahwul/zaproxy-ruby/assets/13212227/83423722-0148-4a49-9347-54b145eda387" width="160px">

# zaproxy-ruby

A Ruby Implementation and Library for Easy Utilization of [ZAP API](https://www.zaproxy.org/docs/api/#introduction).

```ruby
require 'zaproxy'

instance = ZAPv2.new(endpoint: 'http://localhost:8090')

instance.core.sites
# <Result:0x0000000105eef830
# @message="{\"sites\":[\"https://www.hahwul.com\",\"https://github.com\"]}",
# @object={"sites"=>["https://www.hahwul.com", "https://github.com"]},
# @success=true>

instance.spider.scan('https://www.hahwul.com','','','','')
# <Result:0x0000000105f01738 @message="{\"scan\":\"0\"}", @object={"scan"=>"0"}, @success=true>
```

## Getting started
The `zaproxy` gem provides Ruby bindings to the ZAP(Zed Attack Proxy) tool, allowing you to automate security testing and scanning of web applications. You can install the gem using either `gem` or `bundler`.

### Gem
```bash
gem install zaproxy
```

### Bundler
If you are managing dependencies with Bundler, you can add the zaproxy gem to your project's Gemfile and then use Bundler to install it.

Create a Gemfile in your project directory. and Open the Gemfile and add the following line to specify the zaproxy gem

```ruby
# Gemfile
gem 'zaproxy'
```

In your terminal, navigate to your project directory and run the following command to install the gem and its dependencies using Bundler

```bash
bundle install
```

## Documents
- [RubyDocs](https://rubydoc.info/gems/zaproxy)
