.class public final Lcom/google/crypto/tink/aead/XAesGcmParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "XAesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;
    }
.end annotation


# instance fields
.field private final saltSizeBytes:I

.field private final variant:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variant",
            "saltSizeBytes"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->variant:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    .line 71
    iput p2, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->saltSizeBytes:I

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variant",
            "saltSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x8

    if-lt p1, v0, :cond_e

    const/16 v0, 0xc

    if-gt p1, v0, :cond_e

    .line 63
    new-instance v0, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;-><init>(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)V

    return-object v0

    .line 61
    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Salt size must be between 8 and 12 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 85
    instance-of v0, p1, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 88
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    .line 89
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_1d

    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v0

    if-ne p1, v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public getSaltSizeBytes()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->saltSizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->variant:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->variant:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 94
    const-class v2, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->variant:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->saltSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X-AES-GCM Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->variant:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "salt_size_bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/aead/XAesGcmParameters;->saltSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
