# Basics

* [What is a TLS Cipher Suite?](https://www.youtube.com/watch?v=ZM3tXhPV8v0)

* [Breaking Down the TLS Handshake](https://www.youtube.com/watch?v=cuR05y_2Gxc&t=1s)


# Random Links

* [How to create self signed certificate](https://sectigo.com/resource-library/what-is-a-self-signed-certificate)

* [How to create ssh key in Ubuntu](https://tecnstuff.net/how-to-set-up-ssh-keys-on-ubuntu-20-04/)

* [TLS 1.3: Everything you need to know](https://www.thesslstore.com/blog/tls-1-3-everything-possibly-needed-know/)

    * shorter handshake
    * 0-RTT (single hello message, hey did you remmeber me?) (prone to replay attack (mim) --> design your application properly (server is responsible to prevent replay attacks))
    * old ciphers removed
    * AEAD ciphers
    * Hello server + encrypted
    * version negotiation removed (downgrade attack)
    * PFS (Perfect Forward Secrecy)

* [How to create eliptic curve ecdh with openssl](https://xenovation.com/blog/security/pki/creating-elliptic-curve-ecdh-key-with-openssl)

* [Understanding a TLS 1.3 0-RTT replay attack](https://security.stackexchange.com/questions/166156/understanding-a-tls-1-3-0-rtt-replay-attack)

* [The 2021 TLS Telemetry Report](https://www.f5.com/labs/articles/threat-intelligence/the-2021-tls-telemetry-report)

* [Crypto++](https://cryptopp.com/wiki/Main_Page)

* [Transport Layer Protection Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)

* [OWASP SSL advanced forensic tool / OWASP SSL audit for testers](https://owasp.org/www-project-o-saft/)

* [Test SSL](https://github.com/drwetter/testssl.sh)

* [Cryptographic Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html)

* OWASP Top 10 [Presentation](./OWASP_Top_Ten_2021.pdf) & Youtube [link](https://www.youtube.com/watch?v=pLsH-TT26Mo)

# TLS/SSL RFC Links

* [Clarifications for Elliptic Curve Cryptography Subject Public Key Information](https://datatracker.ietf.org/doc/rfc8813/)

* [The Transport Layer Security (TLS) Protocol Version 1.3](https://www.rfc-editor.org/rfc/rfc8446.html)

* [Elliptic Curve Cryptography (ECC) Cipher Suites for Transport Layer Security (TLS) Versions 1.2 and Earlier](https://datatracker.ietf.org/doc/rfc8422/)

* [Negotiated Finite Field Diffie-Hellman Ephemeral Parameters for Transport Layer Security (TLS)](https://datatracker.ietf.org/doc/rfc7919/)

* [Elliptic Curve Cryptography (ECC) Cipher Suites for Transport Layer Security (TLS)](https://datatracker.ietf.org/doc/rfc4492/)

* [Elliptic Curve Cryptography Subject Public Key Information](https://datatracker.ietf.org/doc/rfc5480/)

* [Algorithms and Identifiers for the Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile](https://datatracker.ietf.org/doc/rfc3279/)

* [ChaCha20 and Poly1305 for IETF Protocols](https://datatracker.ietf.org/doc/html/rfc8439)


# Open SSL

[man pages](https://www.mkssoftware.com/docs/man1/openssl_enc.1.asp)

[Command Line Elliptic Curve Operations](https://wiki.openssl.org/index.php/Command_Line_Elliptic_Curve_Operations)


The list of supported curves for TLS use is [here](https://github.com/openssl/openssl/blob/OpenSSL_1_0_2-stable/ssl/t1_lib.c#L231)

Each curve gets assigned a unique number by IANA (as shown in the above list). If a curve isn't assigned a number by IANA then we can't include it. The current IANA list is [here](https://www.iana.org/assignments/tls-parameters/tls-parameters.xhtml#tls-parameters-8)

[Reference](https://github.com/openssl/openssl/issues/6332)

[List of cipher suites and hexadecimal value representation](https://testssl.sh/openssl-iana.mapping.html)

# Boring SSL

[Open SSL vs Boring SSL](https://www.interserver.net/tips/kb/openssl-vs-boringssl-boringssl-install-boringssl/)


# QUIC

* [QUIC: A UDP-Based Multiplexed and Secure Transport](https://datatracker.ietf.org/doc/html/rfc9000)

* [Quicker: On the design and implementation of the QUIC protocol](https://quic.edm.uhasselt.be/files/quicker_KevinPittevils_August2018.pdf)

* [RFC 9001 - Using TLS to Secure QUIC](https://www.rfc-editor.org/rfc/rfc9001.html)


# JDK Security JEPs

* [JDK-8140436 : Negotiated Finite Field Diffie-Hellman Ephemeral Parameters for TLS](https://bugs.java.com/bugdatabase/view_bug.do?bug_id=8140436)

* [JDK-8145252 : JEP 332: Transport Layer Security (TLS) 1.3](https://bugs.java.com/bugdatabase/view_bug.do?bug_id=JDK-8145252)


# Brainpool Curve Links

Elliptic Curve Cryptography (ECC) Brainpool curves were an option for authentication and key exchange in the Transport Layer Security (TLS) protocol version 1.2 but were deprecated by the IETF for use with TLS version 1.3 because they had little usage. However, these curves have not been shown to have significant cryptographical weaknesses, and there is some interest in using several of these curves in TLS 1.3.

* [RFC 8734 Elliptic Curve Cryptography (ECC) Brainpool Curves for Transport Layer Security (TLS) Version 1.3](https://www.rfc-editor.org/rfc/rfc8734.html)

* [Elliptic Curve Cryptography (ECC) Brainpool Standard Curves and Curve Generation](https://www.rfc-editor.org/rfc/rfc5639.html)

* [Elliptic Curve Cryptography (ECC) Brainpool Curves for Transport Layer Security (TLS)](https://www.rfc-editor.org/rfc/rfc7027.html)

* [Elliptic Curve Cryptography (ECC) Brainpool Standard Curves and Curve Generation](https://datatracker.ietf.org/doc/rfc5639/)

# TODO

* [Tink Cryptographic Library](https://developers.google.com/tink)
