<?php  include 'connection.php';
       include 'validations.php'; 
       include 'success.php'; 
       include 'includes/header.php';
       include 'includes/navbar.php';
       include 'includes/main-content.php';
?>

              <!--  <form action="zakatprocess.php" method="post" id ="zakatfrm"> -->
               <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?> "  id ="zakatfrm" method="post">
                     <!-- 1st field -->
               <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">

                    <input type="text"  id="Name" name="Name" oninput = "confirmName.value = Name.value" class="form-control  
                         <?php echo (!empty($name_error)) ? 'is-invalid' : ''; ?>
                         "placeholder=" Full name"
                    >
                        
                        <span class="invalid-feedback"><?php echo $name_error;?></span> 
                       
                       
                       
                        
                         
                     </div>
                  </div>
                  <!-- 2nd field -->
                  <div class="row">
                     <div class="col-lg-6">
                        <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">
                              <input class="form-control"    <?php echo (!empty($idCard_error)) ? 'is-invalid' : ''; ?>
                               placeholder="ID Card number" type="text" name="ID" value="" oninput = "confirmID.value = ID.value" >
                              <span class="invalid-feedback"><?php echo $idCard_error;?></span> 
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group mb-3">
                      	<div class="main-content-container container-fluid px-1">
                              <input class="form-control" placeholder="Address" type="text" name="Address" value="" oninput = "confirmAddress.value = Address.value" >
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- 3rd field -->
                  <div class="form-group mb-3">
                     	<div class="main-content-container container-fluid px-1">
                        <input class="form-control" placeholder="Email address" type="text" name="Email" value="" oninput = "confirmEmail.value = Email.value" >
                     </div>
                  </div>

                           
                  
                     
                     <div class="col-lg-6">
                        <div class="form-group mb-3">
                        <select class="form-control custom-select" id="select_island" name="island">
                                      <?php
                // use a while loop to fetch data
                // from the $all_categories variable
                // and individually display as an option
                while ($island = mysqli_fetch_array(
                        $all_islands,MYSQLI_ASSOC)):;
            ?>
                <option value="<?php echo $island["id"];
                    // The value we usually set is the primary key
                ?>">
                    <?php echo $island["name"];
                        // To show the category name to the user
                    ?>
                </option>
            <?php
                endwhile;
                // While loop must be terminated
            ?>
                        </select>
                        </div>
                     </div>
                   </div>
                              

                           <?php 
                               $sqli = "SELECT * FROM  zakat_rates";
                               $result = mysqli_query($con, $sqli);
                            ?>

                           <div class="col-lg-6">
                              <div class="form-group mb-3">
                                 <div class="input-group input-group-alternative">
                                    <select class="form-control custom-select" name="zakat_rates">
                                       <option value="0" disabled >Zakat categories</option>
                           <?php 
                                 while ($row = mysqli_fetch_array($result)) {
                                 echo '<option data-amount='.$row['rate'].' >'.$row['rate'].'</option>';
                                 }
                           ?>
                           </select>
                                 </div>
                              </div>
                           </div>


                                 <div class="col-lg-6">
                                    <div class="form-group mb-3">
                                       <div class="input-group input-group-alternative">
                                          <select class="form-control custom-select" name="dependents">
                                          <button type="button" class="btn btn-lg btn-primary btn-lg w-100 mt-4 mb-0">Dependents</button>
                                         
                                          <option value="1" >1 person</option>
                                          <option value="2" >2 persons</option>
                                          <option value="3" >3 persons</option>
                                          <option value="4" >4 persons</option>
                                          <option value="5" >5 persons</option>
                                          <option value="6" >6 persons</option>
                                          <option value="7" >7 persons</option>
                                          <option value="8" >8 persons</option>
                                          <option value="9" >9 persons</option>
                                          <option value="10" >10 persons</option>
                                          <option value="11" >11 persons</option>
                                          <option value="12" >12 persons</option>
                                          <option value="13" >13 persons</option>
                                          <option value="14" >14 persons</option>
                                          <option value="15" >15 persons</option>
                                          <option value="16" >16 persons</option>
                                          <option value="17" >17 persons</option>
                                          <option value="18" >18 persons</option>
                                          <option value="19" >19 persons</option>
                                          <option value="20" >20 persons</option>
                                          <option value="21" >21 persons</option>
                                          <option value="22" >22 persons</option>
                                          <option value="23" >23 persons</option>
                                          <option value="24" >24 persons</option>
                                          <option value="25" >25 persons</option>
                                          <option value="26" >26 persons</option>
                                          <option value="27" >27 persons</option>
                                          <option value="28" >28 persons</option>
                                          <option value="29" >29 persons</option>
                                          <option value="30" >30 persons</option>
                                          </select>
                                       </div>
                                    </div>
                                 </div>
                             </div>
                             
                   
                            <!--  <div class="form-group mb-3">
                                 <div class="input-group input-group-alternative">
                                    <input class="form-control" placeholder="Sadat amount" type="number" name="nama_penuh" value="" >
                                 </div>
                              </div> -->

                           
                           
                              <label for="payment_summary" class="form-control-label">Customer info Summary</label>
                              <hr>

                              <label for="Customer info summary" class="form-control-label">Customer Name:  <br><br>
                                 <input type="text" class="mycreditcard" id="confirmName" readonly><br/>
                               <br> 
                              </label>

                              <label for="Customer info summary" class="form-control-label">ID Card No:  <br><br>
                                 <input type="text" class="mycreditcard" id="confirmID" readonly><br/>
                                 <br> 
                              </label>

                              <label for="Customer info summary" class="form-control-label">Address:  <br><br>
                                 <input type="text" class="mycreditcard" id="confirmAddress" readonly><br/>
                                 <br> 
                              </label>

                              <label for="Customer info summary" class="form-control-label">Email  <br><br>
                                 <input type="text" class="mycreditcard" id="confirmEmail" readonly><br/>
                                 <br> 
                              </label>


                              <label for="Customer info summary" class="form-control-label">Atoll  <br><br>
                                 <input type="text" class="mycreditcard" id="confirmAtoll" readonly><br/>
                                 <br> 
                              </label>



                              
                              <label for="payment_summary" class="form-control-label">Payment Summary</label>
                                   <input type="text" id="zakat"  name="zakat" class="form-control" readonly>
                           <br>

                           <div class="caption caption-md">
                              <blockquote>
                                 I hereby issue the obligatory Zakat Fitrah on myself / dependents in lieu of rice as much as <strong>MVR <span id="zakatW">0.00</span></strong>
                              </blockquote>
                           </div>

                           <div class="text-center">
                                <button id ="save" name="submit" class="btn btn-sm btn-primary btn-sm w-100 mt-4 mb-0">Pay Zakat</button>
                           </div>

               </form>
                           </div>
                         
                        </div>
                     </div>
                     <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
                        <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden" 
                           background-size: cover;">
                           <span class="mask bg-gradient-primary opacity-6"></span>
                           <h4 class="mt-5 text-white font-weight-bolder position-relative">"Attention is the new currency"</h4>
                           <p class="text-white position-relative">The more effortless the writing looks, the more effort the writer actually put into the process."</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </main>
      <!--   Core JS Files   -->

     <?php include 'scripts.php'?>
   </body>
</html>