<html>
  <head>
    <title>Twexter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="twexter/jquery.js" language="javascript" type="text/javascript"></script>
    <script src="twexter.js" language="javascript"
    type="text/javascript"></script>
    <script src="example.js" language="javascript" type="text/javascript"></script>
    <link rel="stylesheet" href="twext.css" type="text/css">
  </head>
  <body>
    <div class='xcroll-preview'></div>
    <form action="javscript:void(0)" method="post" accept-encoding="utf-8">
    <textarea name='text1' id='xscroll-left' onkeyup="javascript:growTextAreas('right')"><?php echo htmlspecialchars($post['text1']);?></textarea>
    <textarea name='text2' id='xscroll-right' onkeyup="javascript:growTextAreas('left')"><?php echo htmlspecialchars($post['text2']);?></textarea>
    <input type='button' value='twext me' onclick="javascript:twext_text();"/>
  </body>

<script language="javascript" type="text/javascript">

var left = document.getElementById('xscroll-left');
var right = document.getElementById('xscroll-right');

left.value = text1;
right.value = text2;


left.style.height = left.scrollHeight + 25 + 'px';
right.style.height = right.scrollHeight +25 + 'px';


function growTextAreas(othertextarea)
{
  var other = document.getElementById(othertextarea);
  this.style.height = this.scrollHeight + 'px';
  other.style.height = other.style.height;
}
</script>
</html>
