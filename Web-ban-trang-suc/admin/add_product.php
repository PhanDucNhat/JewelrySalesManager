
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <title>Home</title>
</head>
<body>
<?php
include_once 'config.php';
if(isset($_POST["btn-add"]))
    {
        // lấy giá trị
        $TenSP = $_POST['TenSP'];
        $AnhSP = $_POST['AnhSP'];
        $AnhSP2 = $_POST['AnhSP2'];
        $AnhSP3 = $_POST['AnhSP3'];
        $ThuongHieu = $_POST['ThuongHieu'];
        $XuatXu = $_POST['XuatXu'];
        $NamSX = $_POST['NamSX'];
        $TrongLuong = $_POST['TrongLuong'];
        $ChatLieu = $_POST['ChatLieu'];
        $DoiTuong = $_POST['DoiTuong'];
        $Size = $_POST['Size'];
        $SoLuongSP = $_POST['SoLuongSP'];
        $MoTa = $_POST['MoTa'];
        $GiaSP = $_POST['GiaSP'];
        //thêm dũ liệu
        $sql = "INSERT INTO sanpham(TenSP,AnhSP,AnhSP2,AnhSP3,XuatXu,NamSX,MoTa,ThuongHieu,TrongLuong,ChatLieu,DoiTuong,`Size`,SoLuongSP,Gia)  
        VALUES('$TenSP','$AnhSP','$AnhSP2','$AnhSP3','$XuatXu','$NamSX','$MoTa','$ThuongHieu','$TrongLuong','$ChatLieu','$DoiTuong','$Size','$SoLuongSP','$GiaSP')";

        if(mysqli_query($con, $sql))
        {   
            ?> 
            <script> 
            alert("Thêm thành công");
            window.location.href='index.php?page=display_product'; 
            </script> <?php
        }
        else
        {
            ?> 
            <script> 
            alert("Thêm không thành công");
            </script> <?php
        }
    }
if(isset($_POST['btn-back']))
    {
        header("Location: index.php?page=display_product");
    } 



?>
    <div class="container">
    <div class="main__title mb-3 rounded">
            Thêm sản phẩm
        </div>
        <div class="main__content main__edit shadow bg-white rounded ">
            <form method="post">    
                <div class="flex"><span class="span-block">Tên trang sức </span><input type="text" name="TenSP" placeholder="Tên trang sức"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Ảnh trang sức 1</span><input type="file" name="AnhSP"  class="form-control " style="width: 700px"></div>      
                <div class="flex"><span class="span-block">Ảnh trang sức 2</span><input type="file" name="AnhSP2"  class="form-control " style="width: 700px"></div>   
                <div class="flex"><span class="span-block">Ảnh trang sức 3</span><input type="file" name="AnhSP3"  class="form-control " style="width: 700px"></div>     
                <div class="flex"><span class="span-block">Thương hiệu </span><input type="text" name="ThuongHieu" placeholder="Thương hiệu"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Xuất xứ </span><input type="text" name="XuatXu" placeholder="Xuất xứ"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Năm sản xuất </span><input type="text" name="NamSX" placeholder="Năm sản xuất"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Trọng lượng </span><input type="text" name="TrongLuong" placeholder="Trọng lượng"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Chất liệu </span><input type="text" name="ChatLieu" placeholder="Chất liệu"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Đối tượng </span><input type="text" name="DoiTuong" placeholder="Đối tượng"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Size </span><input type="text" name="Size" placeholder="Size"  class="form-control text"/></div>
                <div class="flex"><span class="span-block" <?= $SoLuongSP > 0?>>Số lượng </span><input type="text" name="SoLuongSP" placeholder="SoLuongSP"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Giá trang sức </span><input type="text" name="GiaSP" placeholder="Giá trang sức"  class="form-control text"/></div>
                <div class="flex"><span class="span-block">Mô tả </span><textarea type="text" name="MoTa" placeholder="Mô tả sản phẩm" style="height: 300px;" class="form-control text"></textarea></div>
                <div class="flex" style="justify-content: center;">
                <button class="btn__main" style="padding: 10px 20px" type="submit" name="btn-add"> Thêm  </button>
                <button class="btn__main" style="padding: 10px 20px" type="submit" name="btn-back"> Quay lại </button>
                </div>
            </form>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</body>
</html>