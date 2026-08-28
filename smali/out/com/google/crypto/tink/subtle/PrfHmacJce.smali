.class public final Lcom/google/crypto/tink/subtle/PrfHmacJce;
.super Ljava/lang/Object;
.source "PrfHmacJce.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field static final MIN_KEY_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final key:Ljava/security/Key;

.field private final localMac:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private final maxOutputLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfHmacJce$1;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/PrfHmacJce$1;-><init>(Lcom/google/crypto/tink/subtle/PrfHmacJce;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->localMac:Ljava/lang/ThreadLocal;

    .line 64
    sget-object v1, Lcom/google/crypto/tink/subtle/PrfHmacJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v1}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 69
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->algorithm:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->key:Ljava/security/Key;

    .line 71
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    const/16 v1, 0x10

    if-lt p2, v1, :cond_95

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_a6

    goto :goto_61

    :sswitch_2b
    const-string p2, "HMACSHA512"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    goto :goto_61

    :cond_34
    const/4 v1, 0x4

    goto :goto_61

    :sswitch_36
    const-string p2, "HMACSHA384"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    goto :goto_61

    :cond_3f
    const/4 v1, 0x3

    goto :goto_61

    :sswitch_41
    const-string p2, "HMACSHA256"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    goto :goto_61

    :cond_4a
    const/4 v1, 0x2

    goto :goto_61

    :sswitch_4c
    const-string p2, "HMACSHA224"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    goto :goto_61

    :cond_55
    const/4 v1, 0x1

    goto :goto_61

    :sswitch_57
    const-string p2, "HMACSHA1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    packed-switch v1, :pswitch_data_bc

    .line 93
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown Hmac algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_79
    const/16 p1, 0x40

    .line 90
    iput p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    goto :goto_91

    :pswitch_7e
    const/16 p1, 0x30

    .line 87
    iput p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    goto :goto_91

    :pswitch_83
    const/16 p1, 0x20

    .line 84
    iput p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    goto :goto_91

    :pswitch_88
    const/16 p1, 0x1c

    .line 81
    iput p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    goto :goto_91

    :pswitch_8d
    const/16 p1, 0x14

    .line 78
    iput p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    .line 97
    :goto_91
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    return-void

    .line 72
    :cond_95
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "key size too small, need at least 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_9d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x6ca99674 -> :sswitch_57
        0x1762408f -> :sswitch_4c
        0x176240ee -> :sswitch_41
        0x1762450a -> :sswitch_36
        0x17624bb1 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/subtle/PrfHmacJce;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/subtle/PrfHmacJce;)Ljava/security/Key;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->key:Ljava/security/Key;

    return-object p0
.end method

.method public static create(Lcom/google/crypto/tink/prf/HmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 102
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HMAC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/HmacPrfParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 104
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HmacPrfKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    return-object v0
.end method


# virtual methods
.method public compute([BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    if-gt p2, v0, :cond_20

    .line 113
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->localMac:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 114
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->localMac:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 110
    :cond_20
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too big"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxOutputLength()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce;->maxOutputLength:I

    return v0
.end method
