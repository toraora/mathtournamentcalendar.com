<!DOCTYPE html>
<html>
  <head>
    <title>Math Tournament Calendar</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="description"
      content="A listing of upcoming math tournaments and events"
    />
    <meta name="keywords" content="math tournament contest calendar" />

    <style>
      body {
        font-family: Verdana, sans-serif;
      }

      a {
        white-space: initial;
      }

      .container {
        padding: 2em;
      }

      .event {
        margin-top: 1em;
      }

      .date {
        float: left;
        width: 16em;
      }

      .title {
        cursor: pointer;
        text-decoration: underline;
        padding-right: 2em;
      }

      .description {
        margin-left: 1em;
        white-space: pre-line;
      }

      footer {
        margin-top: 2em;
      }
    </style>

    <script type="text/javascript">
      function toggle(id) {
        var elem = document.getElementById(id);
        elem.style.display = elem.style.display ? null : "none";
      }
    </script>
  </head>

  <body>
    <div class="container">
      <h2>Math Tournament Calendar</h2>

      <p class="banner"></p>

<!-- event data here -->

      <p style="margin-top: 5em"></p>

      <hr />

      <footer>
        Please direct inquiries to
        <a href="mailto:hello@mathtournamentcalendar.com"
          >hello@mathtournamentcalendar.com</a
        >.
      </footer>
    </div>
  </body>
</html>
