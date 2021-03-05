#!/bin/ruby
# frozen_string_literal: true

def displayPathtoPrincess(n, grid)
  row = 0
  column = 0
  pvp_found = nil
  php_found = nil
  while pvp_found.nil?
    if grid[row].include? 'p'
      pvp_found = row
    else
      row += 1
    end
  end

  dif = n / 2 - row
  dif.abs.times do
    puts dif.negative? ? 'DOWN' : 'UP'
  end

  while php_found.nil?
    if grid[row][column] == 'p'
      php_found = column
    else
      column += 1
    end
  end

  dif = n / 2 - column
  dif.abs.times do
    puts dif.negative? ? 'RIGHT' : 'LEFT'
  end
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

displayPathtoPrincess(m, grid)