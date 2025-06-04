# Capstone Progress Report: 2025-05-20

## Concepts Learned:
`No new concepts learned. This is a work progress log.`  

## Tasks Completed:
* Finished Problem 2: Homepage
###### This problem was finished over multiple days. Therefore, there shall be a timeline in this summary documenting my progress.
  

## Problem 2: Homepage
**The Task: Create a simple homepage that introduces yourself, your favorite hobby or extracurricular, or anything else of interest to you.**


## Timeline:
| Date (2025, MM-DD) |                                                                                                                     Progress Report                                                                                                                     |   |   |   |
|:------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|---|---|---|
|        05-31       | - Started Project. Created base files `index.html`, `styles.css`, and `script.js`. Laid down basic HTML and CSS for index. - Created page `interests.html`. Created basic HTML/CSS for the page. Added colour-changing JavaScript for `interests.html`. |   |   |   |
|        06-02       | - Refined CSS for `index.html`. Refined `interests.html`  to use an accordion list. Added JS interaction to `index.html`. Finished both pages. - Added webpages `schedule.html` and `others.html`. Placed todo messages in both.                        |   |   |   |
|        06-03       | - Finished `schedule.html` by adding a schedule table. - Finished `others.html` by adding a nonfunctional feedback form. The form will not work without a backend, however that is a concern for another week. Polished website's CSS and JS.           |   |   |   |
  
---
  
**Summary:**  
This problem is one of the most open-ended problems I have ever encountered. For most of these problems, there exists a program called [`check50`](https://cs.harvard.edu/malan/publications/fp252-sharpA.pdf), which evaluates student code for correctness. However, this tool is not present for any of the H/C/J problem sets. Because of this, the methods of solving the problem become even more open-ended than what is usually expected of software development. For this problem, the homepage must follow certain criteria displayed in the specification. It was a challenge to meet these goals, although in the later days of development I found myself exceeding the goals of the specification. 

**Challenges:**
This problem is highly open-ended. I find that when pertaining to open-ended questions, the most difficult part is to start. After a general vision of the website is acquired through half an hour of experimentation, the goals I wish to accomplish become easier to realize. However, I did not find much issue with the coding and programming aspects of this problem. This problem focuses on the frontend of a website, and is used solely for "making the website *look* pretty". Therefore, the HTML used for this problem could be sourced from front-end frameworks such as [Bootstrap](https://getbootstrap.com/), especially when the problem encourages doing so in the specification. Furthermore, HTML and CSS are mainly key/tag dependant. In other words, these languages rely more on memorizing vocabulary than syntax(Both HTML and CSS are very relaxed with syntax, especially spacing-related formatting.), which renders the process of creating code very simple when given access to a reference sheet.

---

**Specification:**  
Implement in your `homepage` directory a website that must:

* Contain at least four different `.html` pages, at least one of which is `index.html` (the main page of your website), and it should be possible to get from any page on your website to any other page by following one or more hyperlinks.
* Use at least ten (10) distinct HTML tags besides `<html>`, `<head>`, `<body>`, and `<title>`. Using some tag (e.g., `<p>`) multiple times still counts as just one (1) of those ten!
* Integrate one or more features from Bootstrap into your site. Bootstrap is a popular library (that comes with lots of CSS classes and more) via which you can beautify your site. See [Bootstrap’s documentation](https://getbootstrap.com/docs/5.2/getting-started/introduction/) to get started. In particular, you might find some of [Bootstrap’s components](https://getbootstrap.com/docs/5.2/components/accordion/) of interest. To add Bootstrap to your site, it suffices to include 
    ```
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    ```
    in your pages’ `<head>`, 
    below which you can also include  
    `<link href="styles.css" rel="stylesheet">`  
    to link your own CSS.

* Have at least one stylesheet file of your own creation, `styles.css`, which uses at least five (5) different CSS selectors (e.g. tag (`example`), class (`.example`), or ID (`#example`)), and within which you use a total of at least five (5) different CSS properties, such as `font-size`, or `margin`; and
* Integrate one or more features of JavaScript into your site to make your site more interactive. For example, you can use JavaScript to add alerts, to have an effect at a recurring interval, or to add interactivity to buttons, dropdowns, or forms. Feel free to be creative!
* Ensure that your site looks nice on browsers both on mobile devices as well as laptops and desktops.

You should also create a text file, `specification.txt`, which lists the 10 HTML tags and 5 CSS properties you’ve used, as well as a brief (one-sentence) description of how you chose to use JavaScript and Bootstrap.

---

**The code I created for these problems can be found in this directory's subfolder, as well as the specification file.**
###### Note: HTML files do not need a compiler to render, they can be opened directly in the web browser, if all required dependancies are in the subfolder and the computer has access to an internet connection. If you are viewing this log, this problem may be one of the only ones you are able to fully preview.

## Capstone Status:
- [x] Problem 1  
- [x] Problem 2   
  
## Week 8 Complete 🎉
Week 8, HTML/CSS/JS, is officially finished. Starting `Wednesday, June 5`, I will start work on the lecture and problemsets for **Week 9: Flask**. This problemset should be rather trivial due to my previous extended knowledge of `python`. After I finish this final problemset, I will officially start work on my final project.

