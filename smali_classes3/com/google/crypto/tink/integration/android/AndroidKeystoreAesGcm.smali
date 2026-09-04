.class public final Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;
.super Ljava/lang/Object;
.source "AndroidKeystoreAesGcm.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field private static final MAX_WAIT_TIME_MILLISECONDS_BEFORE_RETRY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AndroidKeystoreAesGcm"


# instance fields
.field private final keystoreAead:Lcom/google/crypto/tink/Aead;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/crypto/tink/integration/android/AndroidKeystore;->getAead(Ljava/lang/String;)Lcom/google/crypto/tink/Aead;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->keystoreAead:Lcom/google/crypto/tink/Aead;

    return-void
.end method

.method private static sleepRandomAmount()V
    .locals 4

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 77
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 3
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

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->keystoreAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 68
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->sleepRandomAmount()V

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->keystoreAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 66
    throw p1
.end method

.method public encrypt([B[B)[B
    .locals 3
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

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->keystoreAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->sleepRandomAmount()V

    .line 55
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->keystoreAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method
