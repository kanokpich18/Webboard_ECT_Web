<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post</title>
</head>
<body>
    <h1 style="text-align: center;">Webboard GungGing</h1>
    <hr>
    <div style="text-align: center;">
        ต้องการดูกระทู้หมายเลข <?php echo $_GET['id']; ?> <br>
</div>
<br>
 <form>
    <table style="border: 2px solid black; width: 40%;" align="center">
    <tr><td colspan="2" style="background-color: #6CD2FE;">แสดงความคิดเห็น</td></tr>
    <tr><td> <textarea rows="10" cols="70"></textarea></td></tr>
    <tr><td colspan="2" align="center"><input type="submit" value="ส่งข้อความ"></td></tr>
    </table>
 </form>
 <br>
 <div style="text-align: center;"><a href="index.html">กลับไปสู่หน้าหลัก</a> </div>
</body>
</html>