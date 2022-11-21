<?php  include 'connection.php';
       include 'includes/header.php';
       include 'includes/navbar.php';
       include 'includes/main-content.php';
?>



<div class="row">
                     <div class="col-lg-6">
                        <div class="form-group mb-3">
                           <div class="input-group input-group-alternative">
                              <select class="form-control custom-select" id="select_atoll" name="jenis_pengenalan">
                                 <option value="0" >Select Atoll</option>
                                 <?php 
                                    // Fetch Atoll
                                    $sql_atoll = "SELECT * FROM atoll";
                                    $atoll_data = mysqli_query($con,$sql_atoll);
                                    while($row = mysqli_fetch_assoc($atoll_data) ){
                                       $atollid = $row['id'];
                                       $atoll_name = $row['atoll_name'];
                                    
                                       // Option
                                       echo "<option value='".$atollid."' >".$atoll_name."</option>";
                                    }
                                    ?>
                              </select>
                           </div>
                        </div>
                     </div> 

                        <div class="col-lg-6">
                           <div class="form-group mb-3">
                              <div class="input-group input-group-alternative">
                                 <select class="form-control custom-select" id="select_island" name="jenis_pengenalan">
                                    <option value="0" >Select Island</option>
                                 </select>
                              </div>
                           </div>
                        </div> 
                                 