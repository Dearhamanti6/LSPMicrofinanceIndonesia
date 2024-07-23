<?php

if (!function_exists('notifikasi')) {
    function notifikasi($result, $pesan, $warna)
    {
        $output = '<div id="myAlert" class="alert alert-' . $warna . ' fade show">
            <strong>' . $result . '!</strong> ' . $pesan . '..
            </div>';

        $output .= '<style>
            .alert {
                transition: opacity 1s ease-in-out;
            }
        </style>';

        $output .= '<script>
            setTimeout(function() {
                var alert = document.getElementById("myAlert");
                alert.style.opacity = "0";
                setTimeout(function() {
                    alert.style.display = "none";
                }, 1000);
            }, 2000);
        </script>';

        return $output;
    }
}
