# Capstone Progress Report: 2025-06-13

## Concepts Learned:
`No concepts learned. This is a work update log.`

## Tasks Completed:
* Created and polished multiple frontends for webpages, including:
    * `login.html`
    * `index.html`
    * `agenda.html`
* Redesigned `login.html` to better use bootstrap logic
* Moved the agenda to a `.csv` file
* Redesigned the backend to use `numpy` and `pandas` **dataframes** for parsing table-related data.


**Summary**  
Unfortunately, I have been extremely busy for the past few days, and have not found much time to work on my project. However, I have managed to complete a few frontend pages, polish the frontend, and work on a basic framework. After careful consideration, I have decided to move the agenda to a csv file, and use `pandas`, a python module, to interact with the data. This is because the dynamic code on the frontend relies on csv code to generate a table. 

**Challenges:** <br>
To fully display and interact with data, I found that it was almost impossible to implement my choices using my previously preferred methods, which was using `jinja2` syntax to dynamically generate HTML code. However, due to the sheer amount of choices, even statically implementing the frame of the table proved tedious. However, I found a method to dynamically generate the code using a JavaScript script. This code relied on csv data, and I was forced to implement the agenda into CSV. Thankfully, I found that `pandas` was able to read csv data into dataframes, which I could use to parse data.


**There is no finished code for this status update. All codes will be uploaded into the repository once the project is finished.**

## Capstone Status:
![50%](https://us-central1-progress-markdown.cloudfunctions.net/progress/50)  
The basic login function is fully completed, and the dynamically-generating frontend code is also completely finished. The only thing left to do is complete the backend code to intelligently populate the table, which will most likely be done through SQLite's built-in `ORDER BY` functions, and through list parsing. 
Unfortunately, **This project is overdue**. This is due to delays mentioned in previous weeks. Nevertheless, I will still be able to finish the project on time for the presentation, and I will continue to work on the backend code.