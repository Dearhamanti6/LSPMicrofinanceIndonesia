<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Content extends Controller_Backend {

	private $custom_header_form;

	private $custom_footer_form;

	public function before() {

		parent::before();

		// Header Multiple SElect
		$this->custom_header_form = '
			<link rel="stylesheet" href="/assets/plugins/select2/select2.min.css">
			<link rel="stylesheet" href="/assets/dist/css/AdminLTE.min.css">
		';

		// Custom header for daterangepicker
		$this->custom_header_form .= '<link rel="stylesheet" href="/assets/plugins/daterangepicker/daterangepicker-bs3.css">';

		// Tinymce
		$this->custom_footer_form = '
			<script src="/assets/tinymce/tinymce.min.js"></script>
			<script>
				$(function() {
					$(\'#publish_time\').daterangepicker({
						format: \'DD/MM/YYYY HH:mm:ss\',
						timePicker: true,
						singleDatePicker: true,
						timePickerIncrement: 1,
						timePicker12Hour: false,
						//minDate: \'' . date('d-m-Y H:i:s') . '\'
					});
				});
				tinymce.init({
					paste_data_images: true,
					valid_elements : \'*[*]\',
					selector: \'.f_tinymce\',
					theme: \'modern\',
                    templates: [{title: \'Berita Lainnya\', description: \'Berita Lainnya\', url: \'/template/terkait.html\'},{title: \'Button Selengkapnya\', description: \'Button Selengkapnya\', url: \'/template/selengkapnya.html\'},{title: \'Sharing\', description: \'Sharing Information\', url: \'/template/sharing.html\'},{title: \'Mutiara\', description: \'Informasi Mutiara\', url: \'/template/komunitas.html\'},{title: \'Download Arena\', description: \'Link Download Aplikasi Arena\', url: \'/template/arena.html\'}],
					plugins: [
						\'example advlist autolink lists link image charmap print preview hr anchor pagebreak\',
						\'searchreplace wordcount visualblocks visualchars code fullscreen\',
						\'insertdatetime media nonbreaking save table contextmenu directionality\',
						\'emoticons template paste textcolor colorpicker textpattern imagetools\'
					],
					toolbar1: \'insertfile undo redo | styleselect | fontsizeselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image\',
					toolbar2: \'fullscreen preview media | forecolor backcolor emoticons | pagebreak | my_image\',
					image_advtab: true,
                                        pagebreak_separator: "<!--PAGE_SEPARATOR-->",
                                        pagebreak_split_block: true,
                                        setup: function (editor) {
                                        editor.addButton(\'my_image\', {
                                            text: \'Add Image From Gallery\',
                                            icon: false,
                                            onclick: function () {
                                                open_popup_img_tmce();
                                            }
                                        });
                                      },
				});
			</script>
		';

		// Multiple SElect
		$this->custom_footer_form .= '
			<script src="/assets/plugins/select2/select2.full.min.js"></script>
			<script>
				$(".select2").select2();
			</script>
		';

		// Custom footer for daterangepicker
		$this->custom_footer_form .= '
			<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
			<script src="/assets/plugins/daterangepicker/daterangepicker.js"></script>
			<!--Tinymce hidden for append image textarea-->
			<input type="hidden" id="image_popup_tmce" />
			<script>
				function open_popup_img() {
					PopupCenter("/library/index/1/0/image_popup", "google", "840", "576");
				}

				function open_popup_img_tmce() {
					PopupCenter("/library/index/1/0/image_popup_tmce", "google", "640", "480");
				}

				function image_popup_tmce() {
					var str = $(\'#image_popup_tmce\').val();
					var n = str.lastIndexOf(".");
					var res = str.substring(0, n)+"_512x351"+str.substring(n);
					tinyMCE.activeEditor.insertContent(\'<img src="\' + res + \'" width="100%" />\');
				}

				function image_popup() {
					$(\'#previewImage\').html(\'\');
					$(\'#previewImage\').append(\'<div style=" position: absolute; width: 20px; height: 20px; left: 186px; margin-top: 4px; background-color: rgb(255, 0, 0); "><center><span style="color: #FFFFFF;cursor: pointer;" onclick="javascript:delPreview();">X</span></center></div>\');
					$(\'#previewImage\').append(\'<img src="\' + $(\'#image_popup\').val() + \'" style="width:200px;"/>\');
				}

				function delPreview() {
					$(\'#previewImage\').html(\'\');
					$(\'#image_popup\').val(\'\');
				}
                
                $(\'.refresh_tags\').click(function() {
                    $(this).html(\'Loading ...\');
                    $(\'select[name="tags[]"]\').empty();

                    $.getJSON( "/tags/ajax", function( data ) {
                        $.each( data, function( key, val ) {
                            $(\'select[name="tags[]"]\').append(\'<option value="\' + val.id + \'">\' + val.name + \'</option>\')
                        }, chlabel());
                    });
                })

                $(document).ready(function(){
                    //$(\'select[name="tags[]"]\').empty();
                    ajax_tags()
                });

                $(\'select[name="tags[]"]\').change(function() {ajax_tags()})

                function ajax_tags() {
                    $(\'.select2-search__field\').on("keyup", function(e){
                        if (e.which <= 90 && e.which >= 48) {
                            var str = $(\'.select2-search__field\').val();
                            var n = str.length;
                            if(n >= 2) {
                                $(\'.refresh_tags\').html(\'Loading ...\');
                                console.log("Ajax Search : " + $(\'.select2-search__field\').val());
                                $.getJSON( "/tags/ajax/" + $(\'.select2-search__field\').val(), function( data ) {
                                    var arrJs = [];
                                    $(\'select[name="tags[]"] option\').each(function() {
                                        arrJs.push($(this).val())
                                    });
                                    $.each( data, function( key, val ) {
                                        var id_data = val.id;
                                        var sid_data = id_data.toString();
                                        if(arrJs.indexOf(sid_data) == -1) {
                                            $(\'select[name="tags[]"]\').append(\'<option value="\' + val.id + \'">\' + val.name + \'</option>\')
                                        }
                                    }, chlabel());
                                });
                            }
                        }
                    })
                }

                // Jika Diakses dari mobile
                if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
                    var oldData = "";
                    setInterval(function(){
                        var newData = $(\'.select2-search__field\').val();
                        if(oldData != newData) {
                            oldData = newData
                            var n = newData.length;
                            if(n >= 3) {
                                $(\'.refresh_tags\').html(\'Loading ...\');
                                console.log("Ajax Search : " + $(\'.select2-search__field\').val());
                                $.getJSON( "/tags/ajax/" + $(\'.select2-search__field\').val(), function( data ) {
                                    var arrJs = [];
                                    $(\'select[name="tags[]"] option\').each(function() {
                                        arrJs.push($(this).val())
                                    });
                                    $.each( data, function( key, val ) {
                                        var id_data = val.id;
                                        var sid_data = id_data.toString();
                                        if(arrJs.indexOf(sid_data) == -1) {
                                            $(\'select[name="tags[]"]\').append(\'<option value="\' + val.id + \'">\' + val.name + \'</option>\')
                                        }
                                    }, chlabel());
                                });
                            }
                        }
                    }, 500);
                }

                function chlabel() {
                    $(\'.refresh_tags\').html(\'( Click Here For Refresh Tags )\');
                }

			</script>
		';

	}
    
    public function action_edit() {
		$session = Session::instance();

        // Paramter
		$main = $this->request->param('main');
		$table = $this->request->param('table');
        
		$data['main_title'] = __('Content | Edit Data');
		$data['menu_active'] = $main;
		$data['menu_active_child'] = $table;

		$data['custom_header'] = $this->custom_header_form;
		$data['custom_footer'] = $this->custom_footer_form;
        
		// Load Model
		$content_model = new Model_Content();

		// Detail Data
		$content_detail = $content_model->detail_data($table);
 
		$data['detail'] = $content_detail;
		$data['main'] = $main;
		$data['table'] = $table;
		$view = Briliant::admin_template('content/' . Kohana::$config->load('path.main_template') . '/edit', $data);
		$this->response->body($view);

	}
    
    public function action_update() {
        // Paramter
		$main = $this->request->param('main');
		$table = $this->request->param('table');
        
        // Load Model
        $content_model = new Model_Content();

        // Update Data
        $update_data = $content_model->update_data($this->request->post(), $table);

        $this->redirect('/content/edit/' . $main . '/' . $table);
    }

	public function action_organisasi() {

		$session = Session::instance();
		if(isset($_POST['version'])) $session->set('version_organisasi', $_POST['version']);
		$data['version'] = $version = $session->get("version_organisasi", "");
		if(isset($_POST['search'])) $session->set('search_news', $_POST['search']);
		$data['search'] = $search = $session->get("search_news", "");

		// print_r($_GET);exit();

		$data['main_title'] = __('Struktur Organisasi List');
		$data['menu_active'] = 'about';
		$data['menu_active_child'] = 'content_organisasi';
		$data['menu_active_child_1'] = '';

		// Redirect jika mengepost search agar bisa menggunakan paginasi dengan beauty url
		// $post_search = $this->request->post('search');

		/* if(!empty($post_search)) {
			$this->redirect('news/search/' . base64_encode($post_search) . '/?date_range=' . $date_range);
		} */

		// Param search
		// $data['search'] = $search = base64_decode($this->request->param('search'));

		// Custom header for daterangepicker
		$data['custom_header'] = '<link rel="stylesheet" href="/assets/plugins/daterangepicker/daterangepicker-bs3.css">';

		// Custom footer for daterangepicker
		$data['custom_footer'] = '
			<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
			<script src="/assets/plugins/daterangepicker/daterangepicker.js"></script>
			<script>
				//Date range picker
				$(function() {
					$(\'#reservation\').daterangepicker(
						{
							format: \'DD/MM/YYYY\'
						}, function (start, end) {
							window.location = "/content/search/?date_range=" + $(\'#reservation\').val();
						}
					);
				});
			</script>
		';

		// Yes No Confirm
		$data['custom_footer'] .= '
			<script type="text/javascript">
				function del_confirm(id) {
					var dialog = confirm("' . __('Are you sure for delete this data ?') . '");
					if (dialog == true) {
						window.location.href="/content/delete_anggota/" + id;
					}
				}
			</script>
		';
		// Page
		$page = intval($this->request->param('page'));
		if(empty($page)) {
			$page = 1;
		}

		// $user_model = new Model_User();
        // $data['all_user'] = $user_model->list_all();

		// Load model news
		$content_model = new Model_Content();

		// Count all data
		$count_all = $content_model->count_search($search);
		$data['count_all'] = $count_all;

		// Pagination
		$pagination = 	Pagination::factory(array(
							'total_items'    		=> $count_all,
							'items_per_page'		=> 20,
							'current_page'			=> $page,
							'base_url'				=> '/content/organisasi/',
							'view'					=> 'pagination/admin'
							// 'suffix'				=> '?date_range=' . $date_range,
						));

		$data['list'] = $content_model->list_search($search, $pagination->items_per_page, $pagination->offset);
		$data['pagination'] = $pagination->render();

		// print_r($data['list']);exit;

		// Session
		$data['session_user_id'] = $session->get('user_id');

		$view = Briliant::admin_template('content/' . Kohana::$config->load('path.main_template') . '/list', $data);

		$this->response->body($view);

	}

	public function action_new_anggota() {
		$data['main_title'] = __('Anggota | Add New Data');
		$data['menu_active'] = 'about';
		$data['menu_active_child'] = '';
		$data['menu_active_child_1'] = '';

		$data['custom_header'] = $this->custom_header_form;
		$data['custom_footer'] = $this->custom_footer_form;

		$data['custom_footer'] .=  '
			<script type="text/javascript">
				function checkValid(){
					var img = document.getElementById("image_popup").value;
					var detail = document.getElementById("wysiwyg").value;
					if(img == "" || img === undefined){
						alert("belum memilih gambar");
						return false;
					}
					if(detail == "" || detail === undefined){
						alert("detail belum diisi");
						return false;
					}
				}
			</script>
		';

		$view = Briliant::admin_template('content/' . Kohana::$config->load('path.main_template') . '/new', $data);
		$this->response->body($view);
	}

	public function action_save_anggota() {
		// print_r($this->request->post());exit;
		$session = Session::instance();

			// Get user id from session

			$user_id = $session->get('adminId');

			// Load Model
			$anggota = new Model_Content();

			// Save data
			$save_data = $anggota->save_data_organisasi($this->request->post(), $user_id);

			$this->redirect('/content/organisasi');

	}

	public function action_edit_anggota() {
		$session = Session::instance();

		$data['main_title'] = __('Anggota | Edit Data');
		$data['menu_active'] = 'about';
		$data['menu_active_child'] = '';

		$data['custom_header'] = $this->custom_header_form;
		$data['custom_footer'] = $this->custom_footer_form;

		// Paramter ID
		$id = $this->request->param('id');

		// Get user id from session
		$user_id = $session->get('adminId');

		// Load Model
		$content_model = new Model_Content();

		// Detail Data
		$news_detail = $content_model->detail_data_anggota($id);

		$data['detail'] = $news_detail;
		$data['detail']['publishTime'] = date("d/m/Y H:i:s", strtotime($data['detail']['publishTime']));
		$view = Briliant::admin_template('content/' . Kohana::$config->load('path.main_template') . '/edit_anggota', $data);
		$this->response->body($view);
	}

	public function action_update_anggota() {

		// Get user id from session
		$session = Session::instance();
		$user_id = $session->get('adminId');

		// Check permission data
		$id_parameter = $this->request->post('id');
		// Load Model
		$content_model = new Model_Content();

		// Update Data
		$update_data = $content_model->update_data_anggota($this->request->post(), $user_id);

		$this->redirect('/content/organisasi');

	}
    
	public function action_delete_anggota() {

		// ID Parameter
		$id = $this->request->param('id');
		// Get user id from session
		$session = Session::instance();
		$user_id = $session->get('adminId');

		// Load Model News
		$content_model = new Model_Content();

		// Change status to 0
		$content_model->delete_data($id);

		// Redirect
		$this->redirect('/content/organisasi');

	}
}