#!/usr/bin/ruby 

class Ticker
  @@global_timer = 0
  def self.tick(interval)
    start_time = Time.now
    sleep interval
    @@global_timer = @@global_timer + (Time.now - start_time).round
  end

  def self.start_ticker
    put_timer
    loop do
      Ticker.tick 1
    put_timer
    end
  end

  def self.put_timer
    puts @@global_timer
  end
end

Ticker.start_ticker
