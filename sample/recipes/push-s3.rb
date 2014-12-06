require 'rubygems'
require 'aws-sdk'

s3 = AWS::S3.new
key = File.basename(node[:s3][:filename])
s3.buckets[node[:s3][:bucketname]].objects[key].write(:file => node[:s3][:filepath])
