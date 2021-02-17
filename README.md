# Github_Ranking_Scrapper 
A command line tool that displays the list of active github users in your country. We built this as the capstone project for Ruby, it's meant to practice several object oriented programming concepts to ensure mastery. 

![screenshot](https://raw.githubusercontent.com/ybadmus/Github_Ranking_Scrapper/features/images/app_screenshot_1.PNG)
![screenshot](https://raw.githubusercontent.com/ybadmus/Github_Ranking_Scrapper/features/images/app_screenshot_2.PNG)
![screenshot](https://raw.githubusercontent.com/ybadmus/Github_Ranking_Scrapper/features/images/app_screenshot_3.PNG)
![screenshot](https://raw.githubusercontent.com/ybadmus/Github_Ranking_Scrapper/features/images/app_screenshot_4.PNG)
![screenshot](https://raw.githubusercontent.com/ybadmus/Github_Ranking_Scrapper/features/images/app_screenshot_5.PNG)

## Getting Started

To get a local copy up and running follow these simple steps.

- Go to the main page of the repo. "git clone https://github.com/ybadmus/Github_Ranking_Scrapper.git"
- Press the "Code" button and get the repo link.
- Clone it using git.
- Open terminal on that folder.
- Run "bundler install" to install all the dependencies the program uses.

## Usage instructions

- First run "ruby ./bin/main.rb" in the terminal being in the root folder.
- The program will welcome you and show a list of countries from which you will be prompted to select from.
- Select the country you want to view the list of most active github users.
- After selecting a country, you will be provided with the 4 options below to choose from. 
- **(1) All active users in the selected country,** selecting this option will list all 256 active users.
- **(2) Active users in a range eg: (10 - 20),** this option will prompt you for a range. 
    - Range must not be greater than 256, 
    - Beginning range must not be greater than the ending range.
- **(3) Search by active user's name,** selecting this will prompt for the user's names you are looking for and subsequently list all the matching results.
- **(4) Active organizations,** this option lists all the active company using github in the country you selected.

## Prerequisites

Before you continue, be sure that you have installed:

- A Git GUI.
- Ruby 2.7.x and RubyGem
- An Integrated Development Environment.
- A keyboard to respond to the prompts.

## Built With

- Ruby
- Using Linters for Ruby
- Git, GitHub, Nokogiri & RSpec
- Using Bundler

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ybadmus/Github_Ranking_Scrapper/issues).

### Steps

1. Fork this repository.

2. Create a branch: git checkout -b <branch_name>.

3. Make your changes and commit them: git commit -m '<commit_message>'

4. Push to the original branch: git push origin <project_name>/

5. Create the pull request.

Alternatively see the GitHub documentation on creating a pull request. Feel free to check the issues page.

## Show your support

Give a ⭐️ if you like this project!

## Authors

👤 **Yusuf A. Badmus**

- GitHub: [@ybadmus](https://github.com/ybadmus)

## Acknowledgments

- [Microverse](https://www.microverse.org)
- [Ruby-Doc](https://ruby-doc.org/)
- Microverse team 140 - The Cupids
- The Odin project

## 📝 License

<p>This project is <a href="LICENSE">MIT</a> licensed.</p>

## Enjoy!