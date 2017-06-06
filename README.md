# Hot Reads
## Summary
  Hot Reads is a companion application for URLockbox. It is a rails application that functions to store individual instances of reads recorded by URLockbox. Additionally, it utilizes ActiveRecord to determine which 10 links have been the most popular in a 24 hour period. It communicates with the companion application by allowing it to access purpose-built API endpoints to access the most popular links which it returns as JSON. It has a single view page which allows a curious user to view the most popular links.

URLockbox: https://github.com/andrewdwooten/m4-final-starter
## Getting Started with Development
  Clone down the repository: `git clone https://github.com/andrewdwooten/HotReads.git`
  In your terminal run: `bundle install`
                   run: `rake db:create db:migrate`
  To view the application as it is running locally: `rails s` and visit http://localhost:3000 or the port number that the     server indicates it is running on.
  To run the test suite in it's entirety: `rspec` or you can specify a particular file by specifying it's path from the root directory: eg. `rspec spec/requests`
  
 ## Production Links
 [HotReads]: https://sheltered-cliffs-80557.herokuapp.com
 [URLockBox]:https://frozen-temple-33865.herokuapp.com
