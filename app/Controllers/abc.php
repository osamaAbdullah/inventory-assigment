<?php

include'../config.php';
$main = array();
$cat = array();
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
	
	
	$rowsperpage = 5;
	$qry = "SELECT * FROM app_category order by id DESC ";
	$res = mysqli_query($con, $qry);
	$records = mysqli_fetch_array($res, MYSQLI_ASSOC);
	$rowcount = mysqli_num_rows($res);
	if ($rowcount > 1) {
		foreach ($res as $records) {
			
			$cat = $records;
			// lets find out how many rows are in the MySQL table
			$sql = "SELECT COUNT(*) FROM app_news WHERE cat_id='" . $cat['id'] . "'";
			$result = mysqli_query($con, $sql) or die(mysql_error());
			$r = mysqli_fetch_row($result);
			$numrows = $r[0];
			// find out total pages
			$totalpages = ceil($numrows / $rowsperpage);
			
			if (isset($_GET['currentpage']) && is_numeric($_GET['currentpage'])) {
				$currentpage = (int) $_GET['currentpage'];
			} else {
				$currentpage = 1;  // default page number
			}
			
			// if current page is greater than total pages
			if ($currentpage > $totalpages) {
				// set current page to last page
				$currentpage = $totalpages;
			}
			// if current page is less than first page
			if ($currentpage < 1) {
				// set current page to first page
				$currentpage = 1;
			}
			// the offset of the list, based on current page
			$offset = ($currentpage - 1) * $rowsperpage;
			
			
			$qry = "SELECT * FROM app_news where cat_id='" . $cat['id'] . "' LIMIT $offset, $rowsperpage";
			$res1 = mysqli_query($con, $qry);
			
			$json1 = array();
			
			while ($records1 = mysqli_fetch_array($res1, MYSQLI_ASSOC)) {
				$news_id = $records1['news_id'];
				$news_title = $records1['title'];
				$news_des = $records1['description'];
				$news_des = htmlspecialchars_decode(str_replace("&quot;", "\"", $news_des));
				$news_image = $records1['image'];
				
				$json1[] = array("news_id" => $news_id, "title" => $news_title, "image" => $imgapi . $news_image, "description" => $news_des);
			}
			$cat['All-news'] = array("total no of pages" => $totalpages, "data" => $json1);
			$main[] = $cat;
			unset($json1);
			unset($json);
			unset($cat);
		}
		unset($totalpages);
		//header("Content-Type: application/json; charset=utf-8");
		echo json_encode($main, JSON_UNESCAPED_SLASHES);
		unset($main);
		mysqli_close($con);
	} else {
		$minfo = array("success" => 'false', "message" => 'No result to display. Please add First category.');
		$jsondata = json_encode($minfo);
		print_r($jsondata);
		mysqli_close($conn);
		exit();
	}
}




if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	include_once'../config.php';
	if (isset($_POST['cat_id'])) {
		$rowsperpage = 5;
		$catid = $_POST['cat_id'];
		$qry = "SELECT * FROM app_category WHERE id='" . $catid . "' ";
		$res = mysqli_query($con, $qry);
		while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
			$cat=$row;
		}
		// lets find out how many rows are in the MySQL table
		$sql = "SELECT COUNT(*) FROM app_news WHERE cat_id='" . $cat['id'] . "'";
		$result = mysqli_query($con, $sql) or die(mysql_error());
		$r = mysqli_fetch_row($result);
		$numrows = $r[0];
		// find out total pages
		$totalpages = ceil($numrows / $rowsperpage);
		///Checkeing for page requested
		if (isset($_POST['currentpage']) && is_numeric($_POST['currentpage'])) {
			$currentpage = (int) $_POST['currentpage'];
		} else {
			$currentpage = 1;  // default page number
		}
		// if current page is greater than total pages
		if ($currentpage > $totalpages) {
			// set current page to last page
			$currentpage = $totalpages;
		}
		// if current page is less than first page
		if ($currentpage < 1) {
			// set current page to first page
			$currentpage = 1;
		}
		// the offset of the list, based on current page
		$offset = ($currentpage - 1) * $rowsperpage;
		
		$qry = "SELECT * FROM app_news where cat_id='" . $catid . "' LIMIT $offset, $rowsperpage";
		$res1 = mysqli_query($con, $qry);
		$json1 = array();
		
		while ($records1 = mysqli_fetch_array($res1, MYSQLI_ASSOC)) {
			$news_id = $records1['news_id'];
			$news_title = $records1['title'];
			$news_des = $records1['description'];
			$news_des = htmlspecialchars_decode(str_replace("&quot;", "\"", $news_des));
			$news_image = $records1['image'];
			
			$json1[] = array("news_id" => $news_id, "title" => $news_title, "image" => $imgapi . $news_image, "description" => $news_des);
		}
		$cat['All-news'] = array("total no of pages" => $totalpages, "data" => $json1);
		$main[] = $cat;
		unset($json1);
		unset($json);
		unset($cat);
		
		
		echo json_encode($main, JSON_UNESCAPED_SLASHES);
		unset($main);
		unset($totalpages);
		mysqli_close($con);
	}
}