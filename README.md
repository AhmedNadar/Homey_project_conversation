# Home Project Conversation History
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

## Notes
- Added styles using Tailwind CSS.
- Add a simple admin area for project show view.