<?php
/**FORMAT TANGGAL INDONESIA**/
function tgl_indonesia($date){
    /***ARRAY UNTUK HARI DAN BULAN**/
    $Hari = array ("Senin" , "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu");
    $Bulan = array ("jan","Feb","Mar","Apr","May","Jun","Jul","Agt","Sep","Oct","Nov","Dec");
    
    /**Memisahkan format tanggal,bulan,tahun dengan substring**/
    $tahun = substr($date, 0, 4);
    $bulan = substr($date, 5, 2);
    $tgl = substr($date, 8, 2);
    $waktu = substr($date, 11, 5);
    $hari = date("w", strtotime($date));
    
    $result = $Hari[$hari] . "," .$tgl. " " .$Bulan[(int)$bulan-1]." " .$tahun. " " .$waktu. " WIB";
    return $result;



}  ?>