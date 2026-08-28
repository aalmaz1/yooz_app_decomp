.class public Lcom/sun/mail/auth/Ntlm;
.super Ljava/lang/Object;
.source "Ntlm.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static hex:[C


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private fac:Ljavax/crypto/SecretKeyFactory;

.field private hostname:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private md4:Lcom/sun/mail/auth/MD4;

.field private ntdomain:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private type1:[B

.field private type3:[B

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 358
    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/auth/Ntlm;->hex:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V
    .registers 9

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    .line 131
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_11
    const/16 v0, 0x5c

    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2a

    .line 135
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2e

    :cond_2a
    if-nez p1, :cond_2e

    const-string p1, ""

    .line 140
    :cond_2e
    :goto_2e
    iput-object p1, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "DEBUG NTLM"

    invoke-virtual {p5, p1, p2}, Lcom/sun/mail/util/MailLogger;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    .line 145
    invoke-direct {p0}, Lcom/sun/mail/auth/Ntlm;->init0()V

    return-void
.end method

.method private calcLMHash()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 214
    fill-array-data v1, :array_6a

    .line 217
    :try_start_7
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iso-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 v2, 0x0

    :goto_17
    const/16 v3, 0xe

    new-array v4, v3, [B

    .line 223
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_24

    goto :goto_25

    :cond_24
    move v3, v5

    :goto_25
    const/4 v5, 0x0

    .line 226
    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {p0, v4, v5}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 229
    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    const/4 v6, 0x7

    invoke-direct {p0, v4, v6}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 231
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v4, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 232
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v4, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 234
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1, v5, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 235
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 236
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v1, v5, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    const/16 v3, 0x15

    new-array v3, v3, [B

    .line 239
    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-static {v1, v5, v3, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :array_6a
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private calcNTHash()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    const-string v1, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    const/4 v0, 0x0

    .line 251
    :goto_a
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->md4:Lcom/sun/mail/auth/MD4;

    invoke-virtual {v1, v0}, Lcom/sun/mail/auth/MD4;->digest([B)[B

    move-result-object v0

    const/16 v1, 0x15

    new-array v1, v1, [B

    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 253
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private calcResponse([B[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 266
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 267
    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    const/16 v4, 0xe

    invoke-direct {p0, p1, v4}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 268
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 270
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 272
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/16 v3, 0x8

    invoke-virtual {p1, p2, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    .line 273
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 274
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p2, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 275
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 276
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p2, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p2

    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 278
    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-static {v0, v1, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x10

    .line 280
    invoke-static {p2, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private copybytes([BILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 150
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 151
    array-length p4, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method private init0()V
    .registers 7

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 87
    iput-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    new-array v0, v0, [B

    .line 88
    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v0, 0x9

    new-array v2, v0, [B

    .line 89
    fill-array-data v2, :array_6c

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/4 v2, 0x3

    const/16 v4, 0xc

    aput-byte v2, v1, v4

    const/16 v2, 0xd

    const/16 v5, -0x4e

    .line 92
    aput-byte v5, v1, v2

    const/16 v2, 0x1c

    const/16 v5, 0x20

    .line 93
    aput-byte v5, v1, v2

    new-array v1, v0, [B

    .line 94
    fill-array-data v1, :array_76

    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v1, 0x18

    aput-byte v1, v0, v4

    const/16 v2, 0xe

    .line 97
    aput-byte v1, v0, v2

    const/16 v2, 0x14

    .line 98
    aput-byte v1, v0, v2

    const/16 v2, 0x16

    .line 99
    aput-byte v1, v0, v2

    const/16 v1, 0x40

    .line 100
    aput-byte v1, v0, v5

    const/16 v1, 0x3c

    const/4 v2, 0x1

    .line 101
    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, -0x7e

    .line 102
    aput-byte v2, v0, v1

    :try_start_53
    const-string v0, "DES"

    .line 105
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    const-string v0, "DES/ECB/NoPadding"

    .line 106
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    .line 107
    new-instance v0, Lcom/sun/mail/auth/MD4;

    invoke-direct {v0}, Lcom/sun/mail/auth/MD4;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->md4:Lcom/sun/mail/auth/MD4;
    :try_end_6a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_53 .. :try_end_6a} :catch_6a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_53 .. :try_end_6a} :catch_6a

    :catch_6a
    return-void

    nop

    :array_6c
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
        0x1t
    .end array-data

    nop

    :array_76
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
        0x3t
    .end array-data
.end method

.method private makeDesKey([BI)[B
    .registers 14

    .line 197
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_12

    .line 199
    aget-byte v4, p1, v3

    if-gez v4, :cond_d

    add-int/lit16 v4, v4, 0x100

    :cond_d
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    const/16 p1, 0x8

    new-array p1, p1, [B

    add-int/lit8 v0, p2, 0x0

    .line 202
    aget v0, v1, v0

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    const/4 v2, 0x7

    shl-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, p2, 0x1

    .line 203
    aget v3, v1, v3

    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, p1, v4

    const/4 v0, 0x6

    shl-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, p2, 0x2

    .line 204
    aget v5, v1, v5

    shr-int/lit8 v6, v5, 0x2

    or-int/2addr v3, v6

    int-to-byte v3, v3

    const/4 v6, 0x2

    aput-byte v3, p1, v6

    const/4 v3, 0x5

    shl-int/2addr v5, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, p2, 0x3

    .line 205
    aget v7, v1, v7

    shr-int/lit8 v8, v7, 0x3

    or-int/2addr v5, v8

    int-to-byte v5, v5

    const/4 v8, 0x3

    aput-byte v5, p1, v8

    const/4 v5, 0x4

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, p2, 0x4

    .line 206
    aget v9, v1, v9

    shr-int/lit8 v10, v9, 0x4

    or-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    shl-int/lit8 v5, v9, 0x3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, p2, 0x5

    .line 207
    aget v7, v1, v7

    shr-int/lit8 v8, v7, 0x5

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    shl-int/lit8 v3, v7, 0x2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p2, v0

    .line 208
    aget p2, v1, p2

    shr-int/lit8 v1, p2, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    shl-int/2addr p2, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    return-object p1
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 6

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 363
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    .line 364
    sget-object v2, Lcom/sun/mail/auth/Ntlm;->hex:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/mail/auth/Ntlm;->hex:[C

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 365
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateType1Msg(I)Ljava/lang/String;
    .registers 7

    .line 159
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 160
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    const/16 v2, 0x10

    aput-byte v1, v0, v2

    .line 161
    div-int/lit16 v2, p1, 0x100

    int-to-byte v2, v2

    const/16 v3, 0x11

    aput-byte v2, v0, v3

    const/16 v3, 0x12

    .line 162
    aput-byte v1, v0, v3

    const/16 v1, 0x13

    .line 163
    aput-byte v2, v0, v1

    if-nez p1, :cond_29

    const/16 v1, 0xd

    .line 165
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, -0x11

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    :cond_29
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/16 v3, 0x18

    aput-byte v2, v1, v3

    .line 169
    div-int/lit16 v3, v0, 0x100

    int-to-byte v3, v3

    const/16 v4, 0x19

    aput-byte v3, v1, v4

    const/16 v4, 0x1a

    .line 170
    aput-byte v2, v1, v4

    const/16 v2, 0x1b

    .line 171
    aput-byte v3, v1, v2

    .line 173
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    const/16 v3, 0x20

    const-string v4, "iso-8859-1"

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/16 v3, 0x14

    aput-byte v2, v1, v3

    .line 176
    div-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/16 v3, 0x15

    aput-byte v2, v1, v3

    add-int/2addr v0, p1

    .line 178
    new-array p1, v0, [B

    const/4 v2, 0x0

    .line 179
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 181
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type 1 message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 185
    :cond_91
    :try_start_91
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object p1

    invoke-direct {v0, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_91 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    const/4 v0, 0x0

    :goto_9c
    return-object v0
.end method

.method public generateType3Msg(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, "UnicodeLittleUnmarked"

    const-string v1, "type 3 message: "

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "us-ascii"

    .line 291
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object p1
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    goto/16 :goto_136

    :catch_13
    move-object p1, v2

    :goto_14
    const/16 v3, 0x8

    :try_start_16
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/16 v6, 0x18

    .line 297
    invoke-static {p1, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 300
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v7, p1, 0x100

    int-to-byte v7, v7

    const/16 v8, 0x26

    aput-byte v7, v3, v8

    const/16 v8, 0x24

    aput-byte v7, v3, v8

    .line 301
    div-int/lit16 v7, p1, 0x100

    int-to-byte v7, v7

    const/16 v8, 0x27

    aput-byte v7, v3, v8

    const/16 v8, 0x25

    aput-byte v7, v3, v8

    .line 302
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 303
    iget-object v7, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v8, v3, 0x100

    int-to-byte v8, v8

    const/16 v9, 0x1e

    aput-byte v8, v7, v9

    const/16 v9, 0x1c

    aput-byte v8, v7, v9

    .line 304
    div-int/lit16 v8, v3, 0x100

    int-to-byte v8, v8

    const/16 v9, 0x1f

    aput-byte v8, v7, v9

    const/16 v9, 0x1d

    aput-byte v8, v7, v9

    .line 305
    iget-object v7, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    .line 306
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v9, v7, 0x100

    int-to-byte v9, v9

    const/16 v10, 0x2e

    aput-byte v9, v8, v10

    const/16 v10, 0x2c

    aput-byte v9, v8, v10

    .line 307
    div-int/lit16 v9, v7, 0x100

    int-to-byte v9, v9

    const/16 v10, 0x2f

    aput-byte v9, v8, v10

    const/16 v10, 0x2d

    aput-byte v9, v8, v10

    .line 310
    iget-object v9, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-direct {p0, v8, v10, v9, v0}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    int-to-byte v9, v10

    const/16 v11, 0x20

    aput-byte v9, v8, v11

    int-to-byte v9, v5

    const/16 v11, 0x21

    .line 312
    aput-byte v9, v8, v11

    add-int/2addr v3, v10

    .line 314
    iget-object v9, p0, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    invoke-direct {p0, v8, v3, v9, v0}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v9, v3, 0x100

    int-to-byte v9, v9

    const/16 v10, 0x28

    aput-byte v9, v8, v10

    .line 316
    div-int/lit16 v9, v3, 0x100

    int-to-byte v9, v9

    const/16 v10, 0x29

    aput-byte v9, v8, v10

    add-int/2addr v3, p1

    .line 318
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-direct {p0, v8, v3, p1, v0}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v0, v3, 0x100

    int-to-byte v0, v0

    const/16 v8, 0x30

    aput-byte v0, p1, v8

    .line 320
    div-int/lit16 v0, v3, 0x100

    int-to-byte v0, v0

    const/16 v8, 0x31

    aput-byte v0, p1, v8

    add-int/2addr v3, v7

    .line 323
    invoke-direct {p0}, Lcom/sun/mail/auth/Ntlm;->calcLMHash()[B

    move-result-object p1

    .line 324
    invoke-direct {p0, p1, v4}, Lcom/sun/mail/auth/Ntlm;->calcResponse([B[B)[B

    move-result-object p1

    .line 325
    invoke-direct {p0}, Lcom/sun/mail/auth/Ntlm;->calcNTHash()[B

    move-result-object v0

    .line 326
    invoke-direct {p0, v0, v4}, Lcom/sun/mail/auth/Ntlm;->calcResponse([B[B)[B

    move-result-object v0

    .line 327
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    invoke-static {p1, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v4, v3, 0x100

    int-to-byte v4, v4

    const/16 v7, 0x10

    aput-byte v4, p1, v7

    .line 329
    div-int/lit16 v4, v3, 0x100

    int-to-byte v4, v4

    const/16 v7, 0x11

    aput-byte v4, p1, v7

    add-int/2addr v3, v6

    .line 331
    invoke-static {v0, v5, p1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v0, v3, 0x100

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 333
    div-int/lit16 v0, v3, 0x100

    int-to-byte v0, v0

    const/16 v4, 0x19

    aput-byte v0, p1, v4

    add-int/2addr v3, v6

    .line 335
    rem-int/lit16 v0, v3, 0x100

    int-to-byte v0, v0

    const/16 v4, 0x38

    aput-byte v0, p1, v4

    .line 336
    div-int/lit16 v0, v3, 0x100

    int-to-byte v0, v0

    const/16 v4, 0x39

    aput-byte v0, p1, v4

    .line 338
    new-array v0, v3, [B

    .line 339
    invoke-static {p1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_129

    .line 341
    iget-object p1, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/security/GeneralSecurityException; {:try_start_16 .. :try_end_129} :catch_10

    .line 345
    :cond_129
    :try_start_129
    new-instance p1, Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v0

    const-string v1, "iso-8859-1"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_134
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_129 .. :try_end_134} :catch_135
    .catch Ljava/security/GeneralSecurityException; {:try_start_129 .. :try_end_134} :catch_10

    move-object v2, p1

    :catch_135
    return-object v2

    .line 353
    :goto_136
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "GeneralSecurityException"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method
