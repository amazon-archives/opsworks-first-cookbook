require 'rubygems'
require 'aws-sdk'

sns_topic = AWS::SNS.new.topics.create("watcher")
