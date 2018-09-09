package com.kh.iclass.common.util;

import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

public class RSAKeySet {

	private Key publicKey;
	private Key privateKey;
	private String publicKeyModulus;
	private String publicKeyExponent;
	
	public RSAKeySet() throws Exception {
		KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
		keyPairGenerator.initialize(1024);
		KeyPair keyPair = keyPairGenerator.genKeyPair();
		
		publicKey = keyPair.getPublic(); // 공개키
		privateKey = keyPair.getPrivate();
		
		setPublicKeySpec();
	}
	
	public RSAKeySet(Key publicKey, Key privateKey) {
		this.publicKey = publicKey;
		this.privateKey = privateKey;
	}
	
	public RSAKeySet(String encodedPublic, String encodedPrivate) throws Exception {
		Decoder decoder = Base64.getDecoder();

		publicKey = KeyFactory.getInstance("RSA").generatePublic(
				new X509EncodedKeySpec(decoder.decode(encodedPublic)));
		privateKey = KeyFactory.getInstance("RSA").generatePublic(
				new X509EncodedKeySpec(decoder.decode(encodedPrivate)));
		
		setPublicKeySpec();
	}
	
	public Key getPublicKey() {
		return publicKey;
	}
	
	public Key getPrivateKey() {
		return privateKey;
	}
	
	public String getPublicKeyModulus() {
		return publicKeyModulus;
	}

	public String getPublicKeyExponent() {
		return publicKeyExponent;
	}

	public String getEncodedPublic() {
		Encoder encoder = Base64.getEncoder();
		return encoder.encodeToString(publicKey.getEncoded());
	}
	
	public String getEncodedPrivate() {
		Encoder encoder = Base64.getEncoder();
		return encoder.encodeToString(privateKey.getEncoded());
	}
	
	private void setPublicKeySpec() throws Exception {
		RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) KeyFactory.getInstance("RSA").getKeySpec(publicKey, RSAPublicKeySpec.class);
        publicKeyModulus = publicSpec.getModulus().toString(16);
        publicKeyExponent = publicSpec.getPublicExponent().toString(16);
	}
}
