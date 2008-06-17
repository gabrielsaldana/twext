<?
/**
 * This file is used to load a saved Twext from a file in filesystem
 *
 * @author Gabriel Saldana <gsaldana@gmail.com>
 * @license GPL v2.0
 */
if ($handle = opendir('saved')) {
    $files = array();
    /* This is the correct way to loop over the directory. */
    while (false !== ($file = readdir($handle))) {
        /* avoid system's . and .. directories (UNIX filesytems) */
        if($file != '.' && $file != '..')
            {
                $files[] = $file;
            }
        /* sort files alphabetically */
        sort($files, SORT_STRING);
    }
    closedir($handle);
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <title>Twexter</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<h1>Saved Twexts</h1>
<form action="index.php" method="post">
<ul>
<? foreach($files as $file): ?>
<li><input type="radio" name="script" value="<?= $file ?>"><label><?= $file ?></label></li>
<? endforeach ?>
</ul>
<input type="submit" value="Load">
</form>
</body>
</html>