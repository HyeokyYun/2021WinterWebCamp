<html>
  <head>
  <meta charset="UTF-8">
    <title>jQuerySamplesPHP</title>
    <style>
        #result{
            color: red;
        }
    </style>
  </head>
  <body>
    <p>What you wrote...</p>
    <p id="result"><?php echo $_POST["input"]; ?></p>
  </body>
</html>