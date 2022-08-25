<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $datarespon = $_POST['hapusnomer'];
        $data = file_get_contents("./assets/data/nomer.json");
        $array = json_decode($data, true);
        $arraydaftar = $array['daftar'];

        $lenghtArrayData = count($arraydaftar);
        if( $lenghtArrayData = 1){
            array_splice($arraydaftar, $datarespon, 1); 
            // unset($arraydaftar[$datarespon]); 
            $array['daftar'] = $arraydaftar;
            var_dump($arraydaftar);
            // var_dump($array);
            file_put_contents('./assets/data/nomer.json', json_encode($array));
            header('Location: index.html');
        }else{
            array_splice($arraydaftar, $datarespon, $datarespon); 
            // unset($arraydaftar[$datarespon]); 
            $array['daftar'] = $arraydaftar;
            var_dump($arraydaftar);
            // var_dump($array);
            file_put_contents('./assets/data/nomer.json', json_encode($array));
            header('Location: index.html');
        }

}
?>
