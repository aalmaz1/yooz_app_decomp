.class final Lcom/google/crypto/tink/integration/android/AndroidKeystore$AeadImpl;
.super Ljava/lang/Object;
.source "AndroidKeystore.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/integration/android/AndroidKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AeadImpl"
.end annotation


# static fields
.field private static final IV_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "keyStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystore$AeadImpl;->key:Ljavax/crypto/SecretKey;

    if-eqz p2, :cond_f

    return-void

    .line 139
    :cond_f
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keystore cannot load the key with ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 168
    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_25

    .line 172
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const-string v1, "AES/GCM/NoPadding"

    .line 174
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 175
    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystore$AeadImpl;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 176
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 177
    array-length p2, p1

    sub-int/2addr p2, v3

    invoke-virtual {v1, p1, v3, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 169
    :cond_25
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 147
    array-length v0, p1

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_3b

    .line 151
    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    const-string v2, "AES/GCM/NoPadding"

    .line 152
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    const/4 v2, 0x1

    .line 153
    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystore$AeadImpl;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v8, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 154
    invoke-virtual {v8, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    const/4 v4, 0x0

    .line 155
    array-length v5, p1

    const/16 v7, 0xc

    move-object v2, v8

    move-object v3, p1

    move-object v6, v0

    .line 156
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 157
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 158
    array-length p2, p1

    if-ne p2, v1, :cond_33

    const/4 p2, 0x0

    .line 161
    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 159
    :cond_33
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "IV has unexpected length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_3b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
