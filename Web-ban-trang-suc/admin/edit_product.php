<?php
include_once 'config.php';
?>
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
    // Lấy dữ liệu từ data lên text
    if(isset($_GET['ID']))
    {
        $sql="SELECT * FROM sanpham WHERE MaSP=".$_GET['ID'];
        $result_set=mysqli_query($con, $sql);
        $fetched_row=mysqli_fetch_array($result_set);
    } 
    //Sửa dữ liệu
    if(isset($_POST["btn-update"]))
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
        //sửa dũ liệu
        $sql = "UPDATE sanpham 
        SET TenSP = '$TenSP', AnhSP = '$AnhSP',AnhSP2 = '$AnhSP2',AnhSP3 = '$AnhSP3',ThuongHieu = '$ThuongHieu',XuatXu = '$XuatXu',
        NamSX = '$NamSX',TrongLuong = '$TrongLuong',ChatLieu = '$ChatLieu',DoiTuong = '$DoiTuong',`Size` = '$Size', `SoLuongSP` = '$SoluongSP', MoTa = '$MoTa', Gia = '$GiaSP' 
        WHERE MaSP=".$_GET['ID'];
        if($AnhSP == "")
        {
            ?> 
            <script> 
            alert("Ảnh sản phẩm không được để trống");
            </script> <?php
        }
        else
        {
            if(mysqli_query($con, $sql))
            {   
                ?> 
                <script> 
                alert("Cập nhật thành công");
                window.location.href='index.php?page=display_product'; 
                </script> <?php
            }
            else
            {
                ?> 
                <script> 
                alert("Cập nhật không thành công");
                </script> <?php
            }
        }   
    }
    if(isset($_POST['btn-back']))
        {
            header("Location: index.php?page=display_product");
        } ?>
    <div class="container">
    <div class="main__title mb-3 rounded">
            Sửa thông tin sản phẩm
        </div>
        <div class="main__content main__edit shadow bg-white rounded ">
            <form method="post">    
                <div class="flex"><span class="span-block">Tên trang sức </span><input type="text" name="TenSP" placeholder="Tên trang sức" value="<?php echo $fetched_row['TenSP']; ?>" required class="form-control text"/></div>
                <div class="flex">
                        <span class="span-block">Ảnh trang sức 1</span>
                        <div class="row__img">
                            <img src="../image/<?php echo $fetched_row['AnhSP']; ?>" style="height: 46.6px;" >
                            <input class="form-control file"  type="file" name="AnhSP" value="<?php echo $fetched_row['AnhSP']; ?>">
                        </div>
                </div>
                <div class="flex">
                        <span class="span-block">Ảnh trang sức 2</span>
                        <div class="row__img">
                            <img src="../image/<?php echo $fetched_row['AnhSP2']; ?>" style="height: 46.6px;" >
                            <input class="form-control file"  type="file" name="AnhSP2" value="<?php echo $fetched_row['AnhSP2']; ?>">
                        </div>
                </div>   
                <div class="flex">
                        <span class="span-block">Ảnh trang sức 3</span>
                        <div class="row__img">
                            <img src="../image/<?php echo $fetched_row['AnhSP3']; ?>" style="height: 46.6px;" >
                            <input class="form-control file"  type="file" name="AnhSP3" value="<?php echo $fetched_row['AnhSP3']; ?>">
                        </div>
                </div>  
                <div class="flex"><span class="span-block">Thương hiệu </span><input type="text" name="ThuongHieu" 
                 value="<?php echo $fetched_row['ThuongHieu']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Xuất xứ </span><input type="text" name="XuatXu" 
                value="<?php echo $fetched_row['XuatXu']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Năm sản xuất </span><input type="text" name="NamSX" 
                value="<?php echo $fetched_row['NamSX']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Trọng lượng </span><input type="text" name="TrongLuong" 
                value="<?php echo $fetched_row['TrongLuong']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Chất liệu </span><input type="text" name="ChatLieu" 
                value="<?php echo $fetched_row['ChatLieu']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Đối tượng </span><input type="text" name="DoiTuong" 
                value="<?php echo $fetched_row['DoiTuong']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Size </span><input type="text" name="Size" 
                value="<?php echo $fetched_row['Size']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Số lượng </span><input type="text" name="SoLuongSP" 
                value="<?php echo $fetched_row['SoLuongSP']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Giá trang sức </span><input type="text" name="GiaSP"
                value="<?php echo $fetched_row['Gia']; ?>" required class="form-control text"/></div>
                <div class="flex"><span class="span-block">Mô tả </span><textarea type="text" name="MoTa" 
                style="height: 300px;" class="form-control text"><?php echo $fetched_row['MoTa']; ?></textarea></div>
                <div class="flex" style="justify-content: center;">
                <button class="btn__main" style="padding: 10px 20px" type="submit" name="btn-update"> Cập nhật </button>
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