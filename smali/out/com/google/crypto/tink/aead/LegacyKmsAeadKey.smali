.class public Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "LegacyKmsAeadKey.java"


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .registers 4
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->parameters:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    .line 43
    iput-object p2, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 44
    iput-object p3, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->create(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;
    .registers 4
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    if-ne v0, v1, :cond_2d

    if-eqz p1, :cond_25

    const/4 v0, 0x5

    .line 57
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    goto :goto_3e

    .line 53
    :cond_25
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_2d
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    if-ne v0, v1, :cond_4c

    if-nez p1, :cond_44

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 63
    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    .line 67
    :goto_3e
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;-><init>(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v1

    .line 60
    :cond_44
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_4c
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 95
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    .line 96
    iget-object v0, p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->parameters:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->parameters:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p1, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->idRequirement:Ljava/lang/Integer;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->parameters:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    return-object v0
.end method
