# Capstone Progress Report: 2025-06-04

## Concepts Learned:
`No concepts learned. This is a work update log.`

## Tasks Completed:
* Created the base framework for initial web application, including setting up Flask, a python [venv](https://docs.python.org/3/library/venv.html), SQLite3, and some base files
* Finished Login System, login.html



**Summary**  
Today is the first major update date of my web application. I finished setting up the basic environment for the server to operate, including downloading all the requirements. I found that Flask operates differently when hosted locally, and a large amount of settings had to be pre-configured before I could start coding. After I started coding, I designed a basic login page using sessions, for security purposes. I also set up a blank SQL database to store data in.

**Challenges:** <br>
Experienced web developers should know that the main way most websites handle login sessions, such as shopping carts and user-specific features, is through cookies. However, I found that not only were cookies difficult to set up, they were less secure than some other methods I encountered. Therefore, I decided to use server sessions instead of cookies. This eliminates the need for a server private key, while still maintaining the basic functionality of a web application. 



**There is no finished code for this status update.**

## Capstone Status:
![10%](https://us-central1-progress-markdown.cloudfunctions.net/progress/15)  
While the basic login functions are implemented already, the website is still relatively nonfunctional. I will work on implementing features for the inner website in the future.