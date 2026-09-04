.class public final Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;
.super Ljava/lang/Object;
.source "AesGcmJceUtil.java"


# static fields
.field public static final IV_SIZE_IN_BYTES:I = 0xc

.field public static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final localCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->localCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParams([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->getAndroidApiLevel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 74
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0, p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    return-object v0
.end method

.method public static getSecretKey([B)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    array-length v0, p0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 57
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getThreadLocalCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method
