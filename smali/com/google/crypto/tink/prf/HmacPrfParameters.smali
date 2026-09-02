.class public final Lcom/google/crypto/tink/prf/HmacPrfParameters;
.super Lcom/google/crypto/tink/prf/PrfParameters;
.source "HmacPrfParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;,
        Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;
    }
.end annotation


# static fields
.field private static final MIN_KEY_SIZE:I = 0x10


# instance fields
.field private final hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

.field private final keySizeBytes:I


# direct methods
.method private constructor <init>(ILcom/google/crypto/tink/prf/HmacPrfParameters$HashType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "hashType"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfParameters;-><init>()V

    .line 90
    iput p1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->keySizeBytes:I

    .line 91
    iput-object p2, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/crypto/tink/prf/HmacPrfParameters$HashType;Lcom/google/crypto/tink/prf/HmacPrfParameters$1;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/prf/HmacPrfParameters;-><init>(ILcom/google/crypto/tink/prf/HmacPrfParameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;
    .registers 2

    .line 95
    new-instance v0, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/prf/HmacPrfParameters$Builder;-><init>(Lcom/google/crypto/tink/prf/HmacPrfParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 108
    instance-of v0, p1, Lcom/google/crypto/tink/prf/HmacPrfParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 111
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/prf/HmacPrfParameters;

    .line 112
    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1d

    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HmacPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public getHashType()Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->keySizeBytes:I

    return v0
.end method

.method public hasIdRequirement()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 117
    const-class v2, Lcom/google/crypto/tink/prf/HmacPrfParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->keySizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HMAC PRF Parameters (hashType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HmacPrfParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/prf/HmacPrfParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
