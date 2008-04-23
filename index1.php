<html>
  <head>
    <title>Twexter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="twext.css" type="text/css">
  </head>
  <body>
    <div id='preview'></div>
    <form action="javscript:void(0)" method="post" accept-encoding="utf-8">
    <textarea name='text1' id='xscroll-left' onkeyup="javascript:growTextAreas('xscroll-left','xscroll-right')"><?php echo htmlspecialchars($post['text1']);?></textarea>
    <textarea name='text2' id='xscroll-right' onkeyup="javascript:growTextAreas('xscroll-right','xscroll-left')"><?php echo htmlspecialchars($post['text2']);?></textarea>
    <input type='button' value='twext me' onclick="javascript:twext_text();"/>
  </body>
    <script src="example.js" language="javascript" type="text/javascript"></script>
    <script src="twexter.js" language="javascript" type="text/javascript"></script>
</html>
