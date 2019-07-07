# Devise Materialize

[![CircleCI](https://circleci.com/gh/chiefpansancolt/devise_materialize.svg?style=svg)](https://circleci.com/gh/chiefpansancolt/devise_materialize)
[![Maintainability](https://api.codeclimate.com/v1/badges/f1974d8e4f575d82d523/maintainability)](https://codeclimate.com/github/chiefpansancolt/devise_materialize/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f1974d8e4f575d82d523/test_coverage)](https://codeclimate.com/github/chiefpansancolt/devise_materialize/test_coverage)
[![Gem](https://img.shields.io/gem/dt/devise_materialize.svg?style=flat-square)](https://rubygems.org/gems/devise_materialize)
[![Gem](https://img.shields.io/gem/v/devise_materialize.svg?style=flat-square)](https://rubygems.org/gems/devise_materialize)

Devise Materialize gem is here to generate you devise view in a materialize styled format with or w/o simple_form.
This gem is not intended to live forever in your gemfile. It must be in your gemfile to load the resources needed from the generator.
Below in the installation section will detail out which gems to install for all to work.

## Installation

Add these lines to your application's Gemfile:

```ruby
# Required gems so you don't have to add files manually
gem "devise"
gem "materialize-sass"
gem "material_icons"

# Required if using HAML
gem "haml"

# Required if using Slim
gem "slim"

# Required if using Simple Form
gem "simple_form"

gem "devise_materialize", "~>1.2.1"
```

## Usage

[devise](https://github.com/plataformatec/devise), [materialize-sass](https://github.com/mkhairi/materialize-sass) and [material_icons](https://github.com/Angelmmiguel/material_icons) are required in your gemfile to enable the views to generate without error and in the proper style.

| Command Line Flags      | Description                            | Defaults | Options                  |
| ----------------------- | -------------------------------------- | -------- | ------------------------ |
| NAMESPACE               | What is the model name used for devise | Devise   | Devise, Users, Admins, etc |
| -f / --form-engine      | Define a form Engine to use            | default  | default, simple_form     |
| -v / --view-engine      | Define a View Engine to use            | erb      | erb, haml, slim          |

### Basic Usage

```bash
$ rails g devise_materialize:install
```
This will generate the basic views of devise based on defaults

### Parameters Defined

If you plan to use simple form using this gem [simple_form_materialize](https://github.com/chiefpansancolt/simple_form_materialize) to install a config file with all wrappers defined as used in this gem.

```bash
$ rails g devise_materialize:install Users --form-engine simple_form --view-engine haml
```
This will generate the views in simple form usage and HAML syntax

## Change Log

Check out the [Change Log](https://github.com/chiefpansancolt/devise_materialize/blob/master/CHANGELOG.md) for new features/bug fixes per release of a new version.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake build`. Gems will be built/release by Owner.

## Contributing

Bug Reports, Feature Requests, and Pull Requests are welcome on GitHub at https://github.com/chiefpansancolt/devise_materialize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://github.com/chiefpansancolt/devise_materialize/blob/master/CODE_OF_CONDUCT.md) code of conduct.

To see more about Contributing check out this [document](https://github.com/chiefpansancolt/devise_materialize/blob/master/CONTRIBUTING.md).

- Fork Repo and create new branch
- Once all is changed and committed create a pull request.

**Ensure all merge conflicts are fixed and CI is passing.**

## License

Devise Materialize is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
