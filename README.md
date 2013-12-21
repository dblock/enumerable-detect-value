Enumerable Detect w/ Value
==========================

[![Build Status](https://travis-ci.org/dblock/enumerable-detect-value.png)](https://travis-ci.org/dblock/enumerable-detect-value)

## Detect Value

Unlike `Enumerable#detect`, `#detect_value` returns the result of the block being evaluated.

Consider an example where you have an expensive `Geocoder.search` operation and a list of addresses, two of which are fake. The
function returns `nil` for a fake address. We would like to find the geo-location of the first real address.

```ruby
addresses = [
  '221B Baker Street, London, UK', # Sherlock Holmes
  '1428 Elm Street, Springwood, Ohio', # Nightmare on Elm Street
  '350 5th Ave, New York, NY' # Empire State Building
]

first_real_address = addresses.detect do |address|
  Geocoder.search(address)
end

first_real_address # 350 5th Ave, New York, NY
```

We do, however, want the geo-location of the first real address. We would have to call `Geocoder.search` on `first_real_address` twice.

Using `detect_value` you can return the geo-location of the first real address.

```ruby
first_geo_location = addresses.detect_value do |address|
  Geocoder.search(address)
end

first_geo_location # lat: 40.74830, lng: -73.98554
```

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md).

## Copyright and License

Copyright (c) 2013, Daniel Doubrovkine.

This project is licensed under the [MIT License](LICENSE.md).
