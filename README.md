moped-cleaner
=============

Clean only models inserted when running tests with database interaction via moped

1. The problem:
  - Database Cleaner removes all documents from all collections after each test
  
2. The Solution:
  - Remove all documents from only **touched** collections after each test

####Installation:
```ruby
# Gemfile

group :test do
  gem 'moped-cleaner'
end

```

```ruby
# spec_helper.rb

RSpec.configure do |config|
  config.include Moped::Cleaner
  
  if defined?(Mongoid)
    Rails.application.eager_load!
    Mongoid.truncate!
  end
end
```

Unofficial Performance Results
=============
```
# With database cleaner (Remove all models from all collections after each test
Finished in 1 minute 54.62 seconds
2780 examples, 11 failures, 1 pending

# After including Moped cleaner and removing database cleaner
Finished in 59.83 seconds
2784 examples, 0 failures
```

Contributing to moped-cleaner
=============

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature or bugfix branch.
* Commit and push until you are happy with your contribution.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
=============

Copyright (c) 2014 Brian Norton. See LICENSE for
further details.
