<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $tambahnomer = $_POST['tambahnomer'];
        $data = file_get_contents("./assets/data/nomer.json");
        $array = json_decode($data, true);
        $array['daftar'][] = $tambahnomer;
        file_put_contents('./assets/data/nomer.json', json_encode($array));
        header('Location: index.html');
        exit();
}
?>