<?
if($_POST)
    {
        $tw = new Twext();
        $tw->save($_POST['title'], $_POST['twexted_text']);
    }
class Twext
{
    /**
     * Used for saving a twexted text to a file
     */
    function save($title, $twexted_text)
    {
        $filename = $this->filename_safe($title) . '.txt';
        $file = fopen('saved/'.$filename, 'x');
        fwrite($file,$twexted_text);
        fclose($file);
        header('Location: saved/');
    }
    /**
     * Create a safe file name
     */
    function filename_safe($filename) {
        $temp = $filename;

        // Lower case
        $temp = strtolower($temp);

        // Replace spaces with a '_'
        $temp = str_replace(" ", "_", $temp);

        // Loop through string
        $result = '';
        for ($i=0; $i<strlen($temp); $i++) {
            if (preg_match('([0-9]|[a-z]|_)', $temp[$i])) {
                $result = $result . $temp[$i];
            }
        }

        // Return filename
        return $result;
    }
}