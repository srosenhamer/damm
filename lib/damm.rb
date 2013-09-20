require "damm/version"

# Implementation of the Damm algorithm.
module Damm

  # Totally anti-symmetric quasigroup is taken from Damm's doctoral dissertation 
  # page 111.
  TASQ = [
    [0,3,1,7,5,9,8,6,4,2],
    [7,0,9,2,1,5,4,8,6,3],
    [4,2,0,6,8,7,1,3,5,9],
    [1,7,5,0,9,8,3,4,2,6],
    [6,1,2,3,0,4,5,9,7,8],
    [3,6,7,4,2,0,9,5,8,1],
    [5,8,6,9,7,2,0,1,3,4],
    [8,9,4,5,3,6,2,0,1,7],
    [9,4,3,8,6,1,7,2,0,5],
    [2,5,8,1,4,3,6,7,9,0]
  ].freeze

  # Calculate the check digit.
  #
  # @example
  #   Damm.generate(572) # => 4
  #
  # @param [Fixnum, #to_s] sequence
  #
  # @return [Fixnum] The calculated check digit.
  def self.generate sequence
    self.calc(sequence)
  end

  # Validate a number against the included check digit.
  #
  # @example
  #   Damm.valid?(5724) # => true
  #
  # @param [Fixnum, #to_s] sequence The number to validate
  def self.valid? sequence
    self.calc(sequence).zero?
  end

  private 

  # Helper method used to calculate the check digit.
  # 1. Initialize an iterim digit
  # 2. Process the sequence digit by digit.  Use each digit as a column index
  #    and the iterim digit as a row index.  Take the battleship table entry
  #    and replace the iterim digit with it.
  #
  # @param [Fixnum, #to_s] sequence The number to calculate
  #
  # @return [Fixnum] The resulting iterim digit that is the check digit.
  def self.calc sequence
    i = 0
    sequence.to_s.each_char { |c| i = TASQ[i][c.to_i] }
    i
  end

end
