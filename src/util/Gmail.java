package util;

import javax.mail.PasswordAuthentication;

public class Gmail {
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("KLlCK.tomak0@gmail.com", "doublekllck");
	}
}
