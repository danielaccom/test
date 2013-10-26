
<?php
	session_start();
	
	include "config/connect.php";
	
	$email = $_GET["user"];
	$password = $_GET["pass"];

	$hasil = mysql_query("SELECT email FROM customer where email='$email'");
	if(mysql_num_rows($hasil)!=0)
	{
			$hasil = mysql_query("SELECT password FROM customer WHERE email = '$email' and password= '$password'");
			if(mysql_num_rows($hasil)!=0)
			{
				 $hasil = mysql_query("SELECT * FROM customer where email='$email'");
				while($baris=mysql_fetch_row($hasil))
				{
				$idmember=$baris[1];
				$getID=$baris[0];
				}
								$_SESSION["user"] = $idmember;
								$_SESSION["id"] = $getID;
								setcookie("user1", $idmember, time()+3600);
								setcookie("user2", $getID, time()+3600);
								$return = array();
								$return['nama'] = $idmember;
								$return['id'] = $getID;

								echo json_encode($return);
								
								//header("location: index.php");
								//echo $_SESSION["user"];
                                
                                /* $ip=$_COOKIE['ip'];
                                $noip=$_COOKIE['noip'];
                                echo $ip;
                                echo $noip;
                                $query3 = "SELECT * 
                                    FROM tabel_keranjang_sementara
                                    where (ip='$ip' && noip='$noip')";
                                $hasil3 = mysql_query($query3) or die("Kesalahan pada queryaaaaaaa!");
                                if ($hasil3)
                                {
                                    while ($barisdata = mysql_fetch_array($hasil3)) {
                                        $idbuku = $barisdata["idbuku"];
                                        $jmlbeli = $barisdata["jmlbeli"];
                                        $query2 = "INSERT into tabel_keranjang_user values ('','$idmember','$idbuku','$jmlbeli')";
                                        $hasil2 = mysql_query($query2) or die("Kesalahan pada querybbbbbbb!");
                                    }
                                    $query4 = "delete from tabel_keranjang_sementara where (ip='$ip' && noip='$noip')";
                                    $hasil4 = mysql_query($query4) or die("Kesalahan pada querybbbbbbb!");
                                }
                                
                                setcookie(ip,'');
                                setcookie(noip,'');
                                if (isset($_COOKIE['posisi']) && ($_COOKIE['posisi']=='cekout'))
                                {
                                    header("location: bayar.php");
                                    //echo "cookie posisi";
                                }
                                else 
                                {
                                    header("location: index.php");
                                    //echo "gfagal";
                                } */
			
		}
		else
		{		
				echo "Login Gagal, Password salah";
		}
		
	}
	else
		{
				echo "Login Gagal, Email tidak valid";

		}
?>
