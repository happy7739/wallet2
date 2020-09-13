<?php
namespace org;

use think\Cache;

class Rsa {

    /**
     * 获得证书公钥
     */
    public static function getCrt()
    {
        return file_get_contents(__DIR__.'/ca.crt');
    }

    /**
     * 获得证书密钥
     */
    public static function getKey()
    {
        return file_get_contents(__DIR__.'/ca.key');
    }

    /**
     * 加密
     */
    public static function encode($data)
    {
        $res = openssl_get_publickey(self::getCrt());
        openssl_public_encrypt($data, $sign, $res);
        openssl_free_key($res);
        return base64_encode($sign);
    }

    /**
     * 解密
     */
    public static function decode($data)
    {
        $res = openssl_get_privatekey(self::getKey());
        openssl_private_decrypt(base64_decode($data), $sign, $res);
        openssl_free_key($res);
        return $sign;
    }
}