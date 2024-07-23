<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo __('Add Aggota'); ?>
		</h1>
		<ol class="breadcrumb">
			<li><?php echo __('Struktur Organisasi'); ?></li>
			<!-- <li class="active"><a href="/cms/content"><?php echo __('News'); ?></a></li> -->
		</ol>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title"><?php echo __('Add New Data'); ?></h3>
					</div>
					<form role="form" method="post"  onsubmit="return checkValid()" action="<?=URL::base()?>/content/save_anggota">
						<div class="box-body">
							<?php
							if(!empty($data['errors'])) {
								?>
								<div class="alert alert-danger alert-dismissable">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									<h4><i class="icon fa fa-ban"></i> <?php echo __('Alert!'); ?></h4>
									<?php
									foreach($data['errors'] as $v_errors) {
										echo ucfirst($v_errors) . '</br>';
									}
									?>
								</div>
								<?php
							}
							?>
							<div class="form-group">
								<label><?php echo __('Tanggal Masuk') ?></label>
								<div class="input-group">
									<input type="text" name="publish_time" id="publish_time" value="<?php echo !empty($data['post']['publish_time']) ? $data['post']['publish_time'] : ''; ?>" placeholder="<?php echo __('Optional'); ?>" class="form-control">
									<div class="input-group-addon">
										<i class="fa fa-calendar"></i>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label><?php echo __('Nama') ?></label>
								<input type="text" name="nama" value="<?php echo !empty($data['post']['title']) ? $data['post']['title'] : ''; ?>" minlength="3" maxlength="90" placeholder="<?php echo __('Only 90 Characters'); ?>" class="form-control" required>
							</div>
							<div class="form-group">
								<label><?php echo __('Jabatan') ?></label>
								<input type="text" name="jabatan" value="<?php echo !empty($data['post']['title']) ? $data['post']['title'] : ''; ?>" minlength="3" maxlength="90" placeholder="<?php echo __('Only 90 Characters'); ?>" class="form-control" required>
							</div>
							<div class="form-group">
								<label><?php echo __('Image') ?></label>
								<div id="previewImage" style="width: 100%; height: auto; margin-bottom: 10px;">
									<?php
									$val_hidden_image = '';
									// Image preview edit
									if(!empty($data['post']['image'])) {
										// Get id image from full url image
										$base_image = basename($data['post']['image']).PHP_EOL;
										if(!empty($base_image)) {
											$ex_base = explode('.', $base_image);
											list($id_image, $file_type) = $ex_base;
										}
										$split_id = str_split($id_image);
										$path_folder_image = implode('/', $split_id);
										echo '<div style=" position: absolute; width: 20px; height: 20px; left: 186px; margin-top: 4px; background-color: rgb(255, 0, 0); "><center><span style="color: #FFFFFF;cursor: pointer;" onclick="javascript:delPreview();">X</span></center></div><img src="uploads/library/' . $path_folder_image . '/' . $id_image . '.' . $file_type . '" style="width:200px;">';
										$val_hidden_image = $data['post']['image'];
									}
									?>
								</div>
								<input type="hidden" name="image" id="image_popup" value="<?php echo $val_hidden_image; ?>" class="form-control">
								<a href="javascript:open_popup_img()"><button type="button" class="btn btn-block btn-default" id="image_popup_btn" style="width:200px"><?php echo __('Browse'); ?></button></a>
							</div>
							<div class="form-group">
								<label><?php echo __('CV') ?></label>
								<textarea id="wysiwyg" class="form-control f_tinymce" rows="15" name="detail" minlength="3" required><?php echo !empty($data['post']['detail']) ? $data['post']['detail'] : '
								<div class="boxRiwayat">
                                <div class="boxRiwayatInner">
                                    <h4>Riwayat Pendidikan</h4>
                                    <ul>
                                            <li class="py-1"><span class="ti-control-forward mr-2 text-secondary"></span> S2 - Magister Manajemen, Prasetya Mulya.</li>
                                            <li class="py-1"><span class="ti-control-forward mr-2 text-secondary"></span> S1 - Sarjana Agronomi, Institut Pertanian Bogor.</li>
                                    </ul>
                                </div>
                                <div class="boxRiwayatInner">
                                    <h4>Riwayat Pekerjaan</h4>
                                    <ul>
                                            <li class="py-1"><span class="ti-control-forward mr-2 text-secondary"></span>​​​​​​​Wakil Direktur Utama PT. Bank Rakyat Indonesia (Persero) Tbk. (2019 - sekarang)</li>
                                            <li class="py-1"><span class="ti-control-forward mr-2 text-secondary"></span>Direktur Bisnis Kecil & Jaringan PT Bank Negara Indonesia, Tbk (Persero) 2017-2019)</li>
                                          <li class="py-1"><span class="ti-control-forward mr-2 text-secondary"></span>Direktur PT Bank Tabungan Negara (Persero) Tbk (2016-2017)</li>
                                            <li class="py-1"><span class="ti-control-forward mr-2 text-secondary"></span>Senior Executive Vice Presiden (SEVP) PT Bank Rakyat Indonesia (Persero)​​​​​​ Tbk. (2016)</li>
                                    </ul>
                                </div>
                            </div>'; ?></textarea>
							</div>
						</div>
						<!-- /.box-body -->

						<div class="box-footer">
							<button type="submit" class="btn btn-primary"><?php echo __('Save Data'); ?></button>
							<a href="/news"><button type="button" class="btn btn-danger"><?php echo __('Cancel'); ?></button></a>
						</div>
					</form>
					<!-- /.box-header -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
