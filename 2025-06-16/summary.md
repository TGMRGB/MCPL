# Capstone Progress Report: 2025-06-16

## Concepts Learned:
`No concepts learned. This is a work update log.`

## Tasks Completed:
* Finished backend implementation of assigning agenda roles, writing roles to a csv file, and then giving the option to download said file
* Finished backend implementation of updating timestamps in SQL database
* Created error handlers for `400` and `405` errors


**Summary**  
Over the past few days, I have been working on the backend implementation of the agenda software. I accomplished this by creating lists of members and nested lists for agenda position ids, then using `for` loops to iterate over a list of members, organized by SQL's `ORDER BY ` function. Finally,  I implemented a few QOL features, such as custom error messages and the ability to download the latest CSV.

**Challenges:**
Implementing the backend resulted in a large amount of bugs, due to the convoluted methods I was using. Solving the various bugs introduced by the algorithm required advanced formatting of code, which I was forced to search for. Furthermore, I implemented the SQL timestamp update function after the agenda function had been fully completed, requiring me to globalize some variables in order to access them. I was also forced to use two unique variables, rendering my code slightly inefficient, to successfully parse the required timestamps and update them accordingly. Nevertheless, the project is fully finished.


**The code for the final project will be found in a folder in the main directory labeled `Source Code`.**

## Capstone Status:
![100%](https://us-central1-progress-markdown.cloudfunctions.net/progress/100)  

# Capstone Finished 🎉
I have successfully implemented all features that I require of myself. Members of my club are now able to assign roles through the click of a button, eliminating the need for manual assignment. The program performs well and has been stress tested to some extent. All that is left is the presentation of the capstone. 
## Final Summary:
* **Time started**: `2025-05-15`
* **Time Ended**: `2025-06-16`
* **Time Spent Working:**: `33 days`  
* **Lines of Code written**: `2,413`
