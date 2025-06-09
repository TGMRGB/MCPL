# Capstone Progress Report: 2025-06-04

## Concepts Learned:
**The basics of Flask, including:**
* Routes
* Decorators
* Requests (Such as GET or POST)
* Sessions
* Cookies
* Basic Jinja Syntax
* Dynamic HTML code
* HTML Templates and Layouts

## Tasks Completed:
* Watched 2/3 of Lecture 9
* Reviewed Problem Set 8 with a human instructor
* Started work on Problem Set 9, Problem 1: Birthdays


## Problem 1: Birthdays
**The Task: Create a web application to keep track of friends’ birthdays.**



**Summary:**  
This problem requires me to use all skills learned in Lecture 9. Having watched Lecture 9, this problem did not present me any challenge. However, I customized the problem to use python's built in SQL parsing module, `sqlite3`, rather than CS50's custom module. Besides this change, *Birthdays* is a simple introduction to Flask backend development.  
Note that *Birthdays* uses CS50's Distribution Code.

**Challenges:** <br>
`none`

---

**Specification:**  
Complete the implementation of a web application to let users store and keep track of birthdays.

* When the / route is requested via GET, your web application should display, in a table, all of the people in your database along with their birthdays.
    * First, in app.py, add logic in your GET request handling to query the birthdays.db database for all birthdays. Pass all of that data to your index.html template.
    * Then, in index.html, add logic to render each birthday as a row in the table. Each row should have two columns: one column for the person’s name and another column for the person’s birthday.
* When the / route is requested via POST, your web application should add a new birthday to your database and then re-render the index page.
    * First, in index.html, add an HTML form. The form should let users type in a name, a birthday month, and a birthday day. Be sure the form submits to / (its “action”) with a method of post.
    * Then, in app.py, add logic in your POST request handling to INSERT a new row into the birthdays table based on the data supplied by the user.

Optionally, you may also:
* Add the ability to delete and/or edit birthday entries.
* Add any additional features of your choosing!

---

**There is no finished code for this status update.**

## Capstone Status:
- [ ] Problem 1  
- [ ] Problem 2   

Aside from previous delays, my schedule is proceeding surprisingly well. I am on course to completing the first problem set by `Tomorrow, 2025-06-05`, and am on track to completing the second problem set by `2025-06-09`. This is, of course, slightly behind schedule, and I may have to balance my presentation creation with my final project creation.

