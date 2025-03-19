<!DOCTYPE html>
<html lang="en">

<head>
    <!--
    Flutter Firebase Todo Application
    Author: Rick Smith
    Date: 03/16/2024  
    Project: RTSmith801/flutter_firebase_todo
    -->
    <meta charset="utf-8">
</head>
<body>
    <header>
        <a href="https://pixeltapestry.com/" target="_blank">
            <img src="https://i.postimg.cc/nhhdyr9p/Pixel-Tapestry-logo-yellow.png" style="height: 50px; width: auto;" alt="Pixel Tapestry Logo">
        </a>
        <h1>Flutter Firebase Todo</h1>
        <p>A <i>CRUD</i> Flutter todo project that utilizes Firebase.</p>
    </header>
    <main>
        <h2>Introduction</h2>
        <p>This is my inaugural functional <i>CRUD (create | read | update | delete)</i> application, developed to explore Flutter's development environment within Android Studio. Leveraging Firebase, the application mandates login via email and password. Users can create lists upon signing up, access existing lists upon signing in, modify tasks to update these lists, and delete list items, all within the app.</p>
        <h3>Features:</h3>
        <ul>
            <li>Multi-page layout:</li>
            <ul>
                <li>Splash Page</li>
                <li>Login Page</li>
                <li>Sign Up Page</li>
                <li>Home Page / Todo Task Page</li>
            </ul>
            <li>Email and password authentication required for login.</li>
            <li>Database of todo tasks is linked to individual user accounts.</li>
        </ul>
        <h3>Takeaways</h3>
        <p>The primary hurdle encountered was configuring the development environment with the necessary packages. This involved utilizing the terminal for required installations and downloads, which proved to be somewhat daunting.</p>
        <h3>Access the Application</h3>
        <p>A web version of this application has been deployed via Firebase through Git and is accessible <a href="https://flutterfirebasetodo-6dd0b.web.app/#/login" target="_blank">here</a>.</p>
        <p align="center"><img src="flutter_firebase_todo_demo.gif" style="max-width: 680px; margin: auto; text-align: center;" alt="App demo gif"></p>
    </main>

</body>
</html>
