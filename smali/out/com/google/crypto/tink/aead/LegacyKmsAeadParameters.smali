.class public final Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "LegacyKmsAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;
    }
.end annotation


# instance fields
.field private final keyUri:Ljava/lang/String;

.field private final variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyUri",
            "variant"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyUri",
            "variant"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)V

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

    .line 78
    instance-of v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 81
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    .line 82
    iget-object v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

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

    .line 87
    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keyUri()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LegacyKmsAead Parameters (keyUri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public variant()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    return-object v0
.end method
