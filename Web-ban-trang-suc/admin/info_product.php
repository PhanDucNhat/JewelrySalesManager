<?php 
include_once 'config.php';
if(isset($_POST['ID']))
{
    $productID = $_POST['ID'];

    $sql = "SELECT * FROM sanpham WHERE MaSP =".$productID;
    $result_set=mysqli_query($con, $sql);
        if(mysqli_num_rows($result_set)>0)
        {
            while($row=mysqli_fetch_array($result_set))
            {
                ?>
                    <table style = "border:0 ;width:100%">
                    <tr>
                        <td width="200" >
                            <img width="200" src="../image/<?php echo $row['AnhSP']; ?>">
                            <div class="d-flex">
                                <img width="100" height="100" src="../image/<?php echo $row['AnhSP2']; ?>">
                                <img width="100" height="100" src="../image/<?php echo $row['AnhSP3']; ?>">
                            </div>
                        </td>
                        <td style="padding:20px;">
                        <p style="margin-bottom: 8px; font-weight: 500;">Tên trang sức: <?php echo $row['TenSP']; ?></p>
                        <p style="margin-bottom: 8px;">Mã trang sức: <?php echo $row['MaSP']; ?></p>
                        <p style="margin-bottom: 8px;">Xuất xứ : <?php echo $row['XuatXu']; ?></p>
                        <p style="margin-bottom: 8px;">Năm sản xuất: <?php echo $row['NamSX']; ?></p>
                        <p style="margin-bottom: 8px;">Trọng lượng: <?php echo $row['TrongLuong']; ?></p>
                        <p style="margin-bottom: 8px;">Chất liệu: <?php echo $row['ChatLieu']; ?></p>
                        <p style="margin-bottom: 8px;">Đối tượng: <?php echo $row['DoiTuong']; ?></p>
                        <p style="margin-bottom: 8px;">Size: <?php echo $row['Size']; ?></p>
                        <p style="margin-bottom: 8px;">Số lượng: <?php echo $row['SoLuongSP']; ?></p>
                        <p style="margin-bottom: 8px;">Mô tả: <?php echo $row['MoTa']; ?></p>
                        <p style="margin-bottom: 8px;">Giá: <?php echo number_format(floatval($row['Gia'])); ?></p>
                        </td>
                    </tr>
                    </table>
                <?php
            }
        }
}
?>