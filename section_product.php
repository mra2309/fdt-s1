<?php include 'connection.php'; ?>

<?php 
function rupiah($num){
	$hasil_rupiah = number_format($num,0,',','.');
	return $hasil_rupiah;
}

function tagharga($data){
	$hasil = explode(".",$data,2);
	return 'Rp <b style="font-size: 35px;">'.$hasil[0].'</b>.'.$hasil[1];

}
?>
<section>

	<div class="row m-0 my-3">
		<?php foreach ($data as $key => $value): ?>
			<?php if ($value['best_seller']): ?>
				<div class="col-md-3 p-0 mb-2">
					<div class="card border-primary">
						<div class="ribbon ribbon-top-left"><span>BEST SELLER!</span></div>
						<div class="card-header bg-primary text-center border-0">
							<h5 class="font-weight-bold text-white text-capitalize"><?= $value['name'] ?></h5>
						</div>
						<div class="card-header text-center bg-primary text-white border-0">
							<s>Rp. <?= rupiah($value['price_normaly']) ?></s>
							<br>
							<?= tagharga(rupiah($value['price_normaly'])) ?> / bulan
						</div>
						<div class="card-header bg-primary-100 text-center text-white">
							<label class="m-auto" ><?= rupiah($value['users_count']) ?> Penguna Terdaftar</label>
						</div>
						<div class="card-body text-center">
							<ul class="list-unstyled text-capitalize">
								<?php foreach ($value['detail'] as $key => $details): ?>
									<li class="py-1 text-capitalize"><b class="mr-2 text-capitalize"><?= $details['item_quota']; ?></b><?= $details['item_name']; ?></li>
								<?php endforeach ?>
							</ul>

							<?php if ($value['discount']!=null): ?>
								<a href="#" class="btn btn-white border-dark text-dark font-weight-bold rounded-pill px-4 mt-4">Diskon <?= $value['discount'] ?>%</a>
								<?php else: ?>
									<a href="#" class="btn btn-primary border-primary text-white font-weight-bold rounded-pill px-4 mt-4">Pilih Sekarang</a>
								<?php endif ?>
							</div>
						</div>
					</div>
					<?php else: ?>
						<div class="col-md-3 p-0 mb-2">
							<div class="card border-light">
								<div class="card-header bg-white text-center border-light">
									<h5 class="font-weight-bold text-capitalize"><?= $value['name'] ?></h5>
								</div>
								<div class="card-header bg-white text-center border-light">
									<s>Rp. <?= rupiah($value['price_normaly']) ?></s>
									<br>
									<?= tagharga(rupiah($value['price_normaly'])) ?> / bulan
								</div>
								<div class="card-header bg-white text-center border-light">
									<label class="m-auto" ><?= rupiah($value['users_count']) ?> Penguna Terdaftar</label>
								</div>
								<div class="card-body text-center">
									<ul class="list-unstyled">
										<?php foreach ($value['detail'] as $key => $details): ?>
											<li class="py-1 text-capitalize"><b class="mr-2"><?= $details['item_quota']; ?></b><?= $details['item_name']; ?></li>
										<?php endforeach ?>
									</ul>

									<?php if ($value['discount']!=null): ?>
										<a href="#" class="btn btn-white border-dark text-dark font-weight-bold rounded-pill px-4 mt-4">Diskon <?= $value['discount'] ?>%</a>
										<?php else: ?>
											<a href="#" class="btn btn-white border-dark text-dark font-weight-bold rounded-pill px-4 mt-4">Pilih Sekarang</a>
										<?php endif ?>
									</div>
								</div>
							</div>
						<?php endif ?>
					<?php endforeach ?>
				</div>
			</section>