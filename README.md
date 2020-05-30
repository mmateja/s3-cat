[![Gem Version](https://badge.fury.io/rb/s3_cat.svg)](https://badge.fury.io/rb/s3_cat)
![Build Status](https://github.com/mmateja/s3-cat/workflows/Build/badge.svg?branch=master)

# s3-cat

`s3-cat` is a simple command line utility that lets you search many S3 files quickly.

## Installation

```ruby
gem install s3_cat
```

## Usage

```
$ s3-cat s3://my_s3_bucket/directory/path/ | grep "searched pattern"
```

`s3-cat` prints content of all the files within `directory/path/` to standard output.
It can be later processed with any other tool.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
