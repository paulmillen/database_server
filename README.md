## Database Server

A program to satisfy the requirements of the following tech test:

```
Write a program that runs a server that is accessible on http://localhost:4000/.
When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory.
When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.
Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.
```

The program is written in Ruby using Sinatra.

### Installation

Clone or fork this repo.  With CL in the program's directory:

`$ gem bundle install`  
`$ bundle install`

( `$ bundle install --without test` - if test frameworks are not required. )

### Instructions

In CL:

`$ rackup -p 4000` to localhost with port 4000.

In a browser:

http://localhost:4000/set?somekey=somevalue to store a key:value pair.  
http://localhost:4000/get?key=somekey to return the stored value within the HTML body.

### Tests

In CL:

`$ rspec`

### Design

The aim was to produce the smallest and most efficient solution to this test while leaving room for easy database implementation in the future.  The existing model could be adapted with an ORM (such as DataMapper) to provide simple persistence with a Postgres, or other, database.  The program has the basis of a MVC file structure using partials to facilitate this.
