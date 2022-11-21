<?php  include 'db.php';
       include 'validations.php'; 
       include 'islandquery.php';
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

                    <input type="text"  id="Name" name="Name" class="form-control  <?php echo (!empty($name_error)) ? 'is-invalid' : ''; ?>"placeholder=" Full name">
                        <span class="invalid-feedback"><?php echo $name_error;?></span> 
                     </div>
                  </div>

                   <!-- 2nd field -->
                  <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">

                    <input type="text"  id="ID_card" name="ID_card"  class="form-control  <?php echo (!empty($ID_error)) ? 'is-invalid' : ''; ?>"placeholder=" ID Card number">
                        <span class="invalid-feedback"><?php echo $ID_error;?></span> 
                     </div>
                  </div>

                     <!-- 3rd field -->
                  <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">

                    <input type="text"  id="address" name="address"  class="form-control  <?php echo (!empty($address_error)) ? 'is-invalid' : ''; ?>"placeholder=" Your Address">
                        <span class="invalid-feedback"><?php echo $address_error;?></span> 
                     </div>
                  </div>

                     <!-- 4th field -->
                  <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">

                    <input type="text"  id="email" name="email"  class="form-control  <?php echo (!empty($email_error)) ? 'is-invalid' : ''; ?>"placeholder=" Email" >
                        <span class="invalid-feedback"><?php echo $email_error;?></span> 
                     </div>
                  </div>


                      <!-- 5th field -->
                  <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">
                       <select required  class="form-control custom-select" required id="select_island" name="select_island">
                          <option value = "">--Select Atoll and Island --</option>
                           <?php foreach($results as $output) {?>
                           <option><?php echo $output["name"]; ?></option>
                           <?php  }  ?> 
                       </select>
                     </div>
                  </div>


                      <!-- 6th field -->
                  <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">
                         <select class="form-control custom-select" name="zakat_rates">
                          <option>--Select Zakat Categories--</option>
                          <option value="65" >Normal Rice - MVR 65.00</option> 
                          <option value="95" >Basmatee Rice - MVR 95.00</option>
                       </select>
                     </div>
                  </div>

                      <!-- 7th field -->
                  <div class="form-group mb-3">
                   	<div class="main-content-container container-fluid px-1">
                          <select class="form-control custom-select" name="dependents">
                           <option>--Select number of dependents--</option>
                           <option value="1" >1 person</option>
                           <option value="2" >2 persons</option>
                           <option value="3" >3 persons</option>
                           <option value="4" >4 persons</option>
                           <option value="5" >5 persons</option>
                       </select>
                     </div>
                  </div>










                  
                
                           
                          


                              
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
                           <h4 class="mt-5 text-white font-weight-bolder position-relative">"As-salamu alaykum!"</h4>
                           <p class="text-white position-relative">Pay Fitr Zakat with our new Internet banking platform."</p>
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