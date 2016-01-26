# Introducing the Humble_RPi-plugin-doorlock gem


## Usage

    require 'humble_rpi-plugin-doorlock'

    dl = HumbleRPiPluginDoorLock.new(settings: {pins: [4]})
    dl.start
    dl.on_doorlock_message 'unlock'

The above example is for testing purposes only.

## Using the plugin with Humble_RPi gem

    require 'humble_rpi'
    require 'humble_rpi-plugin-doorlock'

    r = HumbleRPi.new device_name: 'ottavia', sps_address: '192.168.4.140',\
      plugins: {DoorLock: {pins: [4]} }
    r.start


As you can see above the named keyword *plugins* expects a Hash with each item containing a key for the name of the plugin and a value which contains the settings.

## Unlocking the door using an SPS message

    require 'sps-pub'

    SPSPub.notice 'HumbleRPi/root/ottavia/do/doorlock: unlock', 'sps'

## Resources

* humble_rpi-plugin-doorlock https://rubygems.org/gems/humble_rpi-plugin-doorlock

humblerpi plugin doorlock gem
