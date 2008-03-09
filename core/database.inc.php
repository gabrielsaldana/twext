<?php

class TDatabase {

	var $_res = '';

	function TDatabase() {
		$this->_res = mysql_connect(DB_HOST, DB_USER, DB_PASS);
		mysql_select_db(DB_NAME, $this->_res);
	}

	function close() {
		return mysql_close($this->_res);
	}

	function query($sql) {
		$this->_res = mysql_query($sql, $this->_res);
	}

	function getRowsCount() {
		return mysql_num_rows($this->_res);
	}

	function getAffectedRowsCount() {
		return mysql_affected_rows($this->_res);
	}

	function getRow() {
		return mysql_fetch_array( $this->_res );
	}

	function getRows() {		
		$arr = array();
		while($row = mysql_fetch_array( $this->_res )) $arr[]=$row;
		return $arr;
	}


}

?>