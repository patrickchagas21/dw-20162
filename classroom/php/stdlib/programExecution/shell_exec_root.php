<?php

$connection = ssh2_connect('localhost', 22);
ssh2_auth_password($connection, 'vagrant', 'vagrant');

$stream = ssh2_exec($connection, 'sudo cat /etc/shadow');
stream_set_blocking($stream, true);
$stream_out = ssh2_fetch_stream($stream, SSH2_STREAM_STDIO);
$output = stream_get_contents($stream_out);

// https://www.aychedee.com/2012/03/14/etc_shadow-password-hash-formats/
// https://www.cyberciti.biz/faq/understanding-etcshadow-file/
// 1 -> MD5
// 2a -> Blowfish
// 5 -> SHA-256
// 6 -> SHA-512
// mkpasswd -m sha-512 // sudo apt-get install whois
// mkpasswd -m sha-512 -S H.czqcYc vagrant
echo "<pre>{$output}</pre>";

http://php.net/manual/en/function.crypt.php
echo crypt('vagrant', '$6$H.czqcYc$');
