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
        $tw->save($_POST['title'], $_POST['twexted_text'], $_POST['first_language'], $_POST['second_language'], 1);
    }
/**
 * Class Twext
 * @todo Must pack all functionality here for portability and mantainability
 */
class Twext
{
    /**
     * Used for saving a twexted text to a file
     *
     * @author Gabriel Saldana <gsaldana@gmail.com>
     *
     * @var string $title The title of the file
     * @var string $twexted_text The parsed string of twexted text to save
     * @var string $first_language The name of the first language
     * @var string $second_language The name of the second language
     * @var boolean $dodo 1 for saving file contents in dodo format, 0 for JSON format
     */
    function save($title, $twexted_text, $first_language = 'ENGLISH', $second_language = 'ESPANOL', $dodo = 0)
    {
        $title = ($title) ? $title : date('Y_m_d');
        // format filename as dodo spec http://twext.com/dod0
        $filename = strtoupper($this->filename_safe($title)) . '..' .strtoupper($first_language) . '.' . strtolower($second_language) . '..' . date("Ymd.His") . '..dod0.txt';
        //if permissions are denied, display error
        if(($file = fopen('twext/'.$filename, 'wb')) === FALSE)
            {
                die('Failed to open file for writing');
            }
        if(!$dodo) //if set to save contents as json format
            {
                fwrite($file,$twexted_text);
            }
        else // if its set to save contents as dod0 spec
            {
                fwrite($file,$this->format_dodo($twexted_text));
            }
        fclose($file);
        // redirect to index
        header('Location: load.php');
    }
    /**
     * Create a safe file name
     *
     * @author Gabriel Saldana <gsaldana@gmail.com>
     *
     * @var string $filename The string to be the name of the file
     * @return string $result The name of the file without illegal chars
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
    /**
     * Parse twexted text to dodo format
     *
     * @TODO: Must find a way to improve this horrible algorithm, but works
     *
     * @var string $twexted_text JSON twexted text
     * @return sting $lines Formatted strings to save
     */
    function format_dodo($twexted_text)
    {
        $tmp = str_replace("\\",'', $twexted_text);
        $twext = json_decode($tmp);
        $lines = '';
        //get widest line
        $widest = 0;
        for($i = 0; $i < count($twext); $i++)
            {
                //parse lines
                for($j = 0; $j < count($twext[$i]); $j++)
                {
                    //parse chunks
                    for($k = 0; $k < count($twext[$i][$j]); $k++)
                        {
                            // check for widest string in first column
                            if($widest < strlen($twext[$i][$j][$k][0]))
                                {
                                    $widest = strlen($twext[$i][$j][$k][0]);
                                }
                        }
                }
            }
        //parse paragraphs
        for($i = 0; $i < count($twext); $i++)
            {
                //parse lines
                for($j = 0; $j < count($twext[$i]); $j++)
                {
                    //parse chunks
                    for($k = 0; $k < count($twext[$i][$j]); $k++)
                        {
                            // set amount of spaces between columns
                            $spaces = $widest + 3 - strlen($twext[$i][$j][$k][0]);
                            // write first column with spaces
                            $lines .= $twext[$i][$j][$k][0] . str_repeat(' ',$spaces);
                            // write second column and append newline
                            $lines .= $twext[$i][$j][$k][1];
                            $lines .= "\n";
                        }
                }
                // write a new line after each paragraph
                $lines .= "\n";
            }
        return $lines;
    }
}