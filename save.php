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
        $tw->save($_POST['title'], $_POST['twexted_text'], 1,$_POST['first_language'], $_POST['second_language']);
        //        $tw->format_dodo( $_POST['twexted_text']);
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
    function save($title, $twexted_text, $dodo = 0, $first_language, $second_language)
    {
        $title = ($title) ? $title : date('Y_m_d');
        // format filename as dodo spec http://twext.com/dod0
        if($second_language)
            {
                $filename = strtoupper($this->filename_safe($title)) . '..'
                    .strtoupper($first_language) . '.' . strtolower($second_language) . '..'
                    . date("ymd.His") . '..dod0.txt';
            }
        else
            {
                $filename = strtoupper($this->filename_safe($title)) . '..'
                    .$first_language . '..' . date("ymd.His") . '..dod0.txt';
            }
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
                $all_data = $title . "\n";
                $data = $this->format_dodo($twexted_text); //get all twexted info
                  /* prepare dodo data format */
                $all_data = $data["dodo"] . str_repeat("TEXT",10) . "\n\n";
                /* prepare first language */
                $all_data .= $data["first_lang"] . str_repeat("twxt",10) . "\n\n";
                /* prepare second language */
                $all_data .= $data["second_lang"] . str_repeat("PREVIEW",6) . "\n\n";
                $all_data .= strtoupper($title) . "\n\n";
                $all_data .= $data["preview"];
                /* write everything to file */
                fwrite($file,$all_data);
            }
        fclose($file);
        /* redirect to index */
        header('Location: twext/');
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
                              $lines["dodo"] .= strtoupper( $twext[$i][$j][$k][0] ) . str_repeat(' ',$spaces);
                            $lines["first_lang"] .= strtoupper( $twext[$i][$j][$k][0] ) . "\n";
                            $lines["preview"] .= $this->parse_dodo_preview( strtoupper( $twext[$i][$j][$k][0] ) ) . "\n";
                            // write second column and append newline
                            $lines["dodo"] .= strtolower( $twext[$i][$j][$k][1] );
                            $lines["second_lang"] .= strtolower( $twext[$i][$j][$k][1] ) . "\n";
                            $lines["preview"] .= strtolower( $twext[$i][$j][$k][1] ) . "\n\n";
                            $lines["dodo"] .= "\n";
                        }
                $lines["dodo"] .= "\n";
                $lines["first_lang"] .= "\n";
                $lines["second_lang"] .= "\n";
                $lines["preview"] .= "\n";
                }
                // write a new line after each paragraph
                $lines["dodo"] .= "\n";
                $lines["first_lang"] .= "\n";
                $lines["second_lang"] .= "\n";
                $lines["preview"] .= "\n";
            }
        return $lines;
    }

/**
  *Format the preview section of dodo file
  *
  * @param string $text The string of text to parse
  * @return string
  */
    public function parse_dodo_preview ( $text )
      {
        $preview = "";
        for($i = 0;$i < strlen($text); $i++)
          {
            if($text[$i] != "\n" && $text[$i] != " ")
              {
                $preview .= $text[$i] . " ";
              }
            else if($text[$i] == " "){
              $preview .= str_repeat(" ",3);
            }
            else if($text[$i] == "\n"){
              $preview .= "\n";
            }
          }
        return $preview;
      }
}