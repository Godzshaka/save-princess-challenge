#!/bin/ruby
# frozen_string_literal: true

def nextMove(_n, r, c, grid)
  prow = 0
  pcolumn = 0
  pvp_found = nil
  php_found = nil
  while pvp_found.nil? # this loop finds princess vertical position
    if grid[prow].include? 'p'
      pvp_found = prow
    else
      prow += 1
    end
  end

  dif = r - prow
  if dif != 0 # princess is in a different row
    puts dif.negative? ? 'DOWN' : 'UP'
  else # princess is in the same row as bot
    while php_found.nil?
      if grid[prow][pcolumn] == 'p'
        php_found = pcolumn
      else
        pcolumn += 1
      end
    end
    dif = c - pcolumn
    puts dif.negative? ? 'RIGHT' : 'LEFT'
  end
end

n = gets.to_i

r, c = gets.strip.split.map(&:to_i)

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

nextMove(n, r, c, grid)
