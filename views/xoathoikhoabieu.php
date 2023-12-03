
<?php
$conn = new mysqli("localhost", "root", "", "db_event_management");
$result = [];
if (isset($_GET["xoathongtin"])) {
    $datestart = $_GET["datestart"];
    $dateend = $_GET["dateend"];
    $sql = "DELETE FROM tbl_thoikhoabieu WHERE 1=1 ";
    if (isset($_GET["datestart"]) || isset($_GET["dateend"]) && $datestart != "" && $dateend != "") {
        $sql .= " and startDate BETWEEN '$datestart' AND '$dateend'";
    }
    $lophocphan = $_GET["lophocphan"];
    if (isset($_GET["lophocphan"]) && $lophocphan != "") {
        $sql .= " and Subject='$lophocphan' ";
    }
    $result = $conn->query($sql);
    if($result){
        echo('Xóa thành công');
        header("Location: ../views/?v=LTT");
    }
    else{
        echo ('Xóa k thành công');
    }
}
?>