<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<div class="container">
<?php
if (isset($_GET['id'])) {
    include "db/koneksi.php";
    $show = mysqli_query($koneksi, "SELECT * FROM post WHERE id_post='$_GET[id]'");
    while ($a = mysqli_fetch_array($show)) {
?>
    <div class="card my-md-2 p-md-3">
        <div class="card-body">
            <h5 class="card-title"><?php echo $a['judul'] ?></h5>
            <p class="card-text"><?php echo $a['post'] ?></p>
        </div>
<?php
        $komen = mysqli_query($koneksi, "SELECT * FROM komen INNER JOIN user ON komen.user_id = user.id_user WHERE komen.post_id='$_GET[id]' ");
        while ($b = mysqli_fetch_array($komen)) {
?>

        <div class="row">
            <div class="col-md-4">
                <div class="card p-md-3">
                <?php echo $b['nama'] ?>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card p-md-3">
                <?php echo $b['isi'] ?>
                </div>
            </div>
            <hr>
        </div>
<?php
        }
?>
        

 
        
    
<?php
    }
}else {
    echo "post tidak ada";
}
?>
    </div>