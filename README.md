## RabbitMQ HTML to CSV Parser

This is a very rudimentary script to extract events from a RabbitMQ queue into a CSV file
for easier processing. The use case was for the DLQ, where events had to be manually reprocessed
in sequential order via the CloudAMQP interface.

### Instructions

To use this, you'll need to select a batch (or all) the events in the queue, and save as a HTML file.
Update the script with the filename and the CSV filename you wish to generate. Place the HTML file into
the root directory, and run:

```
ruby extract.rb
```

### To Dos

Turn this into a CLI app so that the main script doesn't need to be modified with the filenames.
Add a Gemfile for easy `bundle install` (Nokogiri is required).
