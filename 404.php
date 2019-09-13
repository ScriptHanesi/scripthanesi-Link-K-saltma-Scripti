<?php require 'header.php'; ?>

<div class="container-fluid mt-2">
	<div class="row justify-content-center">		
		<div class="col-md-6 shadow-lg bg-white p-5 rounded" id="sifretamami">
			<div>
				<div class="row">
					<div class="col-md-12">
						<div class="text-center">
							<hr>
							<form onsubmit="return false" id="sifreformu">
								<div class="form-row justify-content-around p-2">
									<div class="col-md-12">
										<div class="badge badge-danger shadow" style="font-size: 3rem; font-weight: 300; padding: 0.8rem;">404</div><br><br>
										<div class="badge badge-info shadow" style="font-size: 1.2rem; font-weight: 300; padding: 0.8rem;"><?php echo $dil['bulunamadi'] ?></div>
									</div>
								</div>
							</form>
						</div>						
						<hr>
						
					</div>
				</div>								
			</div>
		</div>
	</div>
</div>
<?php require 'footer.php'; ?>
