# Tu tu Rails

This appendix was written from the Thinknetica tutorial, but I added my adjustments to design and changed the preprocessor for html from erb to slim.


* Ruby version: 2.7.2
* Rails version: 5.2.4
* Bootstrap version: 5.0.0-beta1
* Rspec version: 4.0.1


# Database: 
Environment:
 
* test: SQLite3

* development: SQLite3

*  production: PostgreSQL

# Test instructions: 
Run all spec files:

    rspec

Run all spec files in directory:
    
    rspec spec/model

#Deployment instructions: 

Tu_tu_rails is intended for deploying Heroku, it is already ready for this, you just need to upload it to the server and migrate, if you are going to run it on DigitalOcean, do not forget to rewrite config / database.yml    
