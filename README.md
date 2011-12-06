This is a basic plugin for SiriProxy that will allow you to check the status of the various London Underground lines.

# Setup

1. Copy the contents of `config-info.yml` into your `~/.siriproxy/config.yml`
2. Run "siriproxy bundle install"
3. Restart SiriProxy

# Usage
**Say:** What is the status of the (line name)

This will check the line status and say something along the lines of "The Circle Line is running a good service" or "The Docklands Light Railway has minor delays".

If there is more information available, Siri will say "There are additional details. Would you like to hear them?". Answering with "Yes" will make Siri read out the various line problems.

# Lines
The supported lines are:

* Bakerloo Line
* Central Line
* Circle Line
* District Line
* Docklands Light Railway
* Hammersmith & City Line
* Jubilee Line
* Metropolitan Line
* Northern Line
* Overground Line
* Piccadilly Line
* Victoria Line
* Waterloo & City Line

Common mispronunciations are supported - you also don't need to say "line".

# Data
All data is pulled from my TubeUpdates API - you can find out more about it at http://tubeupdates.com/