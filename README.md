# How to start with Rails Spotlight

* [Gem repository](https://github.com/pniemczyk/rails_spotlight)
* [Chrome extension](https://chrome.google.com/webstore/detail/rails-spotlight/kfacifkandemkdemkliponofajohhnbp?hl=en-US)


## Installation and Configuration steps

[check video](https://youtu.be/8QDNHL0PTZg)

1. **Add the Gem to the Rails App**

•  “First, we will add the Rails Spotlight gem to your Rails application by updating the Gemfile.”

**Bash command** 
```bash 
bundle add rails_spotlight --group development
```
or manual Gemfile modification

** Gemfile lines**
```ruby
group :development do
  gem 'rails_spotlight'
end
```

2. **Configure the Gem**

* Generate env template `rails rails_spotlight:generate_config`
* ENV variable settings
* Explain `RailsSpotlight.config`
* Inject JS partial for Frontend (CSP workaround) `rails rails_spotlight:inject_js_partial`

3. **Install Chrome extension**
4. **Configure extension**