
# Whatsapp api

whatsapp rest api for sending mmesseges via whatsapp

## Deployment (okteto.com)

1. fork or clone this repo.
2. modify docker-compose.yml, change with your username
```bash
  image: your-github-username/whatsapp-api:latest
  #example   image: hakimfrh/whatsapp-api:latest
```
3. login into okteto with github and deploy
4. open the enpoint and goto /scan
```
   example: https://app-hakimfrh.cloud.okteto.net/scan
```
5. scan the qr code to login into whatsapp
## Running Tests

php

```bash
  <?php
  $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => 'http://your-endpoint-link/send-message',
    //example CURLOPT_URL => 'http://app-hakimfrh.cloud.okteto.net/send-message',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => array('message' => 'text_messeges','number' => '08123456789  '),
  ));

  $response = curl_exec($curl);

  curl_close($curl);
  echo $response;
```

