Array Detect w/ Value
=====================

[![Build Status](https://travis-ci.org/dblock/array-detect-value.png)](https://travis-ci.org/dblock/array-detect-value)

## Detect Value

Unlike `Enumerable#detect`, `#detect_value` returns the result of the block being evaluated.

```ruby
ary = [ nil, 2, 3 ]

# returns 2, the first element for which the block evaluated to a non-nil result
ary.detect do |value|
  value ? value * 10 : nil
end

# returns 20, the first non-nil result of the block being evaluated
ary.detect_value do |value|
  value ? value * 10 : nil
end
```

## Contributing

You're encouraged to contribute to this gem.

* Fork this project.
* Create a feature branch with `git checkout -b my-branch`.
* Make changes, write tests, ensure that `rake` runs clean.
* Commit your changes with `git commit`.
* Push your branch to Github with `git push origin my-branch`.
* Make a pull request, note the number.
* Updated [CHANGELOG](CHANGELOG.md) and commit via `git --amend`.
* Push an update via `git push origin my-branch -f`.

## Copyright and License

Copyright (c) 2013, Daniel Doubrovkine.

This project is licensed under the [MIT License](LICENSE.md).
