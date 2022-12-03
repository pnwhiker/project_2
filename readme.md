



Class Associations
Author - Parent Object; has many tweets, has many subjects THROUGH tweets

Tweet - Child Object; belongs to (an) Author, has (a) subject, will need a foreign-key as each post belongs-to an Author

Subject - Child Object; has many tweets, has many authors THROUGH tweets

