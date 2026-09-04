.class public final Lcom/google/crypto/tink/aead/XAesGcmKey;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "XAesGcmKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/aead/XAesGcmParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/XAesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->parameters:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    .line 44
    iput-object p2, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 45
    iput-object p3, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 46
    iput-object p4, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/XAesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XAesGcmKey;
    .locals 2
    .param p2    # Ljava/lang/Integer;
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
            "secretBytes",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "For given Variant "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " the value of idRequirement must be non-null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 88
    new-instance v0, Lcom/google/crypto/tink/aead/XAesGcmKey;

    .line 89
    invoke-static {p0, p2}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getOutputPrefix(Lcom/google/crypto/tink/aead/XAesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/crypto/tink/aead/XAesGcmKey;-><init>(Lcom/google/crypto/tink/aead/XAesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v0

    .line 84
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "XAesGcmKey key must be constructed with key of length 32 bytes, not "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getOutputPrefix(Lcom/google/crypto/tink/aead/XAesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;
    .locals 2
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

    .line 51
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 52
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 114
    instance-of v0, p1, Lcom/google/crypto/tink/aead/XAesGcmKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/aead/XAesGcmKey;

    .line 119
    iget-object v0, p1, Lcom/google/crypto/tink/aead/XAesGcmKey;->parameters:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->parameters:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/aead/XAesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 120
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/aead/XAesGcmKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->idRequirement:Ljava/lang/Integer;

    .line 121
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XAesGcmKey;->parameters:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    return-object v0
.end method
