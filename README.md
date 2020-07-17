# Lifestyle Articles


![screenshot](./docs/screenshot.png)

This project built with Ruby on Rails is based on the Lifestyle Articles website. The following list includes technical skills that were implemented in the project:

- Use MVP architectural pattern
- Configure RESTFUL routes
- Use the drivers to intercept user requests.
- Use view templates for HTML with embedded data
- Use asset channeling
- Connect the database to the application
- Use the active record as ORM
- Use ActiveRecord validations
- Pass user input from view through a controller to model securely
- Remember about thin drivers and the distinction between levels of logic and presentation
- Avoid the problem of n + 1 queries
- Use unit tests (Rspec)
- Deploy applications (Heroku)

## :package: Built With

- Ruby
- Ruby on rails


## :mag: Live Demo

[Live Demo Link](https://lifestyle-articles-project.herokuapp.com/)

## :computer: Getting Started

To get a local copy up and running follow these simple steps.

### Download

1) Clone the repository to your local machine

```sh
  $ git clone https://github.com/mcervantes71/Lifestyle_Articles.git
```

2) cd into the directory

```sh
  $ cd Lifestyle_Articles
```

### Setup

Install gems with:

```sh
  $ bundle install
```

Setup database with:

```sh
  $ rails db:create
  $ rails db:migrate
```

Populating the database with:

```sh
  $ rails db:seed
```

### Usage

run localhost server:

```sh
  $ rails server
```

if presented with and `Error` message similar to this:

![image](./docs/error.png)

Run:

```sh
  $ yarn install --check-files
```

### Testing
[Pre-requisite] 
``` sh
  $ gem install rspec
```

1) cd into the directory

```sh
  $ cd Lifestyle_Articles
```

2) Load the testing module

```sh
  $ rspec
```

## :busts_in_silhouette: Author

👤 **Martin Cervantes**

- Linkedin: [Martin Cervantes](https://www.linkedin.com/in/cervantesmartin/)
- Twitter: [@M4rt1nC3rv4nt3s](https://twitter.com/M4rt1nC3rv4nt3s)
- Github: [@mcervantes71](https://github.com/mcervantes71)
- Gmail: [cervantes.martine](mailto:cervantes.martine@gmail.com)

:pencil2: Design idea by [Nelson Sakwa on Behance](https://www.behance.net/sakwadesignstudio)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](../../issues).

## :star2: Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.
