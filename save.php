<?
/**
 * This file is used to save a Twext as a file in filesystem
 *
 * @author Gabriel Saldana <gsaldana@gmail.com>
 * @license GPL v2.0
 */
if($_POST)
    {
        $tw = new Twext();
        $tw->save($_POST['title'], $_POST['twexted_text'], $_POST['first_language'], $_POST['second_language']);
    }
class Twext
{
    /**
     * Used for saving a twexted text to a file
     */
    function save($title, $twexted_text, $first_language = 'ENGLISH', $second_language = 'ESPANOL')
    {
        $title = ($title) ? $title : date('Y_m_d');
        $filename = strtoupper($this->filename_safe($title)) . '..' . $first_language . '.' . $second_language . '..' . date("Ymd.His") . '..dod0.txt';
        if(($file = fopen('saved/'.$filename, 'wb')) === FALSE)
            {
                die('Failed to open file for writing');
            }
        fwrite($file,$twexted_text);
        fclose($file);
        header('Location: load.php');
    }
    /**
     * Create a safe file name
     */
    function filename_safe($filename) {
        $temp = $filename;

        // Lower case
        $temp = strtolower($temp);

        // Replace spaces with a '.'
        $temp = str_replace(" ", ".", $temp);

        // Loop through string
        $result = '';
        for ($i=0; $i<strlen($temp); $i++) {
            if (preg_match('([0-9]|[a-z]|_|\.)', $temp[$i])) {
                $result = $result . $temp[$i];
            }
        }

        // Return filename
        return $result;
    }
}