#!/usr/bin/env ruby

# file: humble_rpi-plugin-doorlock.rb


require 'simple_raspberrypi'


class HumbleRPiPluginDoorLock

  def initialize(settings: {}, variables: {})
    
    @gpio_pins = settings[:pins]

  end
  
  def on_doorlock_message(message)
            
    r = message.match(/(\d+)?\s*(open|close|lock|unlock)\s*(?:\s*duration\s)?([\d\.]+)?/)

    if r then
      
      index, state, raw_duration = r.captures
      index ||= 0
      
      duration = raw_duration ? raw_duration.to_f : nil

      a = case state

        when 'open'
          [:unlock, duration]
        when 'unlock'
          [:unlock, duration]
        when 'close'
          [:lock, duration]
        when 'lock'
          [:lock, duration]
      end

      @door[index.to_i].send(*a)
    end
  end

  def start()

    @door = SimpleRaspberryPi.new(@gpio_pins).pins  if @gpio_pins.any?    
    
  end
  
  alias on_start start
  
  def on_exit()
    @door.on_exit
  end

end