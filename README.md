# Damm
Let's face it, who doesn't like a good damm check digit? The Damm algorithm provides
a solid scheme for generating a digit for a given sequence and checking that 
sequence with the check digit included. More details here: http://en.wikipedia.org/wiki/Damm_algorithm

## Installation

Add this line to your application's Gemfile:

    gem 'damm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install damm

## Usage

    require 'damm'
    
    # have a number
    seq = '1001004'
    
    # add a check digit
    seq << Damm.generate(seq).to_s
    
    # sometime later, a real user keys that number in and you want to 
    # sure they got it right...
    
    # validate it
    Damm.valid?(seq) # => true
    

