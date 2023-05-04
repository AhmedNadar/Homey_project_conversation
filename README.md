# Homey Project Conversation History

**Contents:**
- [Tasks](#task)
- [Questions to ask](#questions-to-ask)
- [Notes](#notes)
- [How to run the project locally](#how-to-run-the-project-locally)

## Task

- Use Ruby on Rails to build a project conversation history. A user should be able to:
  * leave a comment
  * change the status of the project
- The project conversation history should list comments and changes in status.
## Questions to ask
- What are the statuses tha the project needs to have? How many?
  - pending, in_progress, completed, cancelled. Pending is the default status.
- What status a project have on creation?
  - Pending
- What happens to the project when a status is changed?
  - The project status is updated to the new status and a confirmation message is displayed.
- Do we need to delete comments?
  - No, we just need add new comments.
- What kind of projects to show on the project index page?
  - Projects with status in_progress only.
- Do I need to show projects with the other statuses?
  Yes, but on a different page such as dashboard.
- What do you mean by **"The project conversation history should changes in status."**? Do you mean the project show page should show its' status?
  - If so, then it is already done.
## Notes
- Added styles using Tailwind CSS.
- Add a simple admin area for project show view.
- Published project to [Heroku](https://obscure-tor-97028.herokuapp.com/)
- Added scope to project model to filter projects by status.
- Added a simple dashboard to show all projects.
- Using fake gem added some data to the database.
- Add devise navigation links to the navbar.
- Use seed data to login on Heroku.
- Dev stack: Ruby on Rails 7, Tailwind CSS, Devise, Faker, Heroku.
## How to run the project locally
- Clone the project
- Run `bundle install`
- Run `rails db:create`
- Run `rails db:migrate`
- Run `rails db:seed`
- Run `rails s`
- Open your browser and go to `localhost:3000`
- Login with the following credentials:
  - email: `admin@homey.com`, password: `password`
- Enjoy! 🎉 😊
