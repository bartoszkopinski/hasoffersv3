### Overview

[![Build status](https://api.travis-ci.org/HitFox/hasoffersv3.png?branch=master)](http://travis-ci.org/HitFox/hasoffersv3)

### Synopsis

This gem provides a wrapper around HasOffers API in version 3, [HasOffers APIv3 Documentation](http://developers.hasoffers.com/#/brand).

### Compatibility

Supported ruby versions:

*   1.9.3
*   2.0

## Installation

```ruby
gem 'hasoffersv3', github: 'bartoszkopinski/hasoffersv3', branch: 'master'
```

## Usage

Basic usage:

```ruby
HasOffersV3.configure do |c|
  c.network_id      = 'network-id'
  c.network_token   = 'network-token' # For Brand API
  c.api_key         = 'api-key'       # For Affiliate API
end

# HasOffersV3::ApiName::ModelName.method_name(params)
HasOffersV3::Affiliate::Offer.find_all
HasOffersV3::Brand::Offer.find_all
```

If HasOffers method does not take any parameters, then API also doesn't take them, otherwise it should be always a hash.

Naming is the same as in HasOffers documentation, also if it requires attributes then API will raise an exception if it's missing.

Examples:

```ruby
HasOffersV3::Brand::Affiliate.update_payment_method_wire affiliate_id: '877', data: []
```

## Testing

If `RAILS_ENV` or `RACK_ENV` is set to `test`, or there's a `TEST`
environment variable, it will require the HasOffersV3::Testing module
and enable testing mode. In testing mode all requests will return
stubbed successful response with empty data set.

When you need to disable testing mode:

```ruby
HasOffersV3::Testing.disable!
```

When you want to provide custom stub:

```ruby
HasOffersV3::Testing.stub_request status_code, body
```
