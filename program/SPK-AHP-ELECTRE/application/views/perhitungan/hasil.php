<?php $this->load->view('layouts/header_admin'); ?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-chart-area"></i> Data Hasil Perangkingan</h1>
	
	<a href="<?= base_url('Laporan'); ?>" class="btn btn-primary"> <i class="fa fa-print"></i> Cetak Data </a>
</div>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-warning"><i class="fa fa-table"></i> Data Hasil Perangkingan</h6>
    </div>

    <div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" width="100%" cellspacing="0">
				<thead class="bg-warning text-white">
					<tr align="center">
						<th>Nama Alternatif</th>
						<th width="25%">Total Nilai</th>
						<th width="5%">Rank</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$rank = $rank;
					$no = 1;
					foreach ($rank as $key => $val) : ?>
						<tr align="center">
							<td><?= $alt[$key] ?></td>
							<td><?= $electre->total[$key] ?></td>
							<td><?= $no ?></td>
						</tr>
					<?php 
					$no++;
					endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<?php
$this->load->view('layouts/footer_admin');
?>