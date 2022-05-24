# Study Call 📞

## Setup

For it's first launch run the following command :

```
bundle install
```

```
yarn install
```

Create the db

```
rails db:create
```

Then run the migrations

```
rails db:migrate
```

Now run the seeds

```
rails db:seed
```

## Login

You can log with this profil:

- email: john@mail.com
- password: 123456

## Method & Features

#### Feature implemented:

- [x] A user can log in with a valid username and password through a login screen
- [x] A user can see a list of clients
- [x] A user can see a client
- [x] A user can edit a client to fill his informations
- [x] A user can set a monthly objective for his revenue
- [x] A user can see his total revenue on a given period
- [x] A client has all the data you can find in the json as attributes, store the more relevant
- [x] A client has a revenue that is the money the caller make
- [x] A client needs to have a status to be qualified

#### Gems

- Devise
- Rspec
- ShouldaMatcher
- Factorybot
- Faker

#### With more time, i would:

- Implement all the tests with rspec.
- Implement more features:
  - as a user i can create an invoice, directly from my objective
  - as a user i can edit my objective
  - as a user i can create ojective for a year or less than a month
  - as user i can tchat with
  - as a client i recieve an email with informations following my call with a study caller

Thanks 🙏,

---

# test_junior_SC

Technical test for junior applications

## Guidelines

- Fork this repository.
- You can add any framework, library or plugin you'd like.
- Make sure the application works out-of-the box once you're done.
- Push changes to your git fork.
- Add a short description on how to run your program for anyone who would like to test it.
- Check the finished features in the Assignment and Bonus section by putting an 'X' ([X]) in between the brackets.
- Quality over quantity, better half of the features 100% done, than 100% of the features half-done.

## Assignment :

- You are asked to build a call center application
- As a user I want to see a list of all my clients. I should be able to click on them in order to acess to their show page, where I can find their phone number to call them and to edit them if I call them. The edit page is a form where I can fill all the blank attributes. After the editing is done, the client must have a status "done". Then I can work on my other clients.
- You need to add in the database the clients given in the file clients_sc.json and use it for your user journey

### User

- [ ] A user can log in with a valid username and password through a login screen

- [ ] A user can see a list of clients

- [ ] A user can see a client

- [ ] A user can edit a client to fill his informations

- [ ] A user can set a monthly objective for his revenue

- [ ] A user can see his total revenue on a given period

### Client

- [ ] A client has all the data you can find in the json as attributes, store the more relevant

- [ ] A client has a revenue that is the money the caller make

- [ ] A client needs to have a status to be qualified

## Bonus

- Some nice to haves, when there is time to spare.

- [ ] A user can set a revenue obective for the month

- [ ] A user can see the money he made during the month

- [ ] A user can generate a monthly invoice

- [ ] Add or improve a feature of your own choice
