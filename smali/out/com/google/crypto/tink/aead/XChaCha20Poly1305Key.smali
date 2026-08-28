.class public final Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "XChaCha20Poly1305Key.java"


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

.field private final parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .registers 5
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

    .line 49
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    .line 51
    iput-object p2, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 52
    iput-object p3, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 53
    iput-object p4, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
    .registers 5
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
            "variant",
            "secretBytes",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-eq p0, v0, :cond_22

    if-eqz p2, :cond_7

    goto :goto_22

    .line 97
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "For given Variant "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " the value of idRequirement must be non-null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_22
    :goto_22
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-ne p0, v0, :cond_31

    if-nez p2, :cond_29

    goto :goto_31

    .line 101
    :cond_29
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_47

    .line 109
    invoke-static {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object p0

    .line 110
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    .line 111
    invoke-static {p0, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getOutputPrefix(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;-><init>(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v0

    .line 105
    :cond_47
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    move-result-object p0

    return-object p0
.end method

.method private static getOutputPrefix(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;
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

    .line 58
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-ne v0, v1, :cond_b

    .line 59
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object p0

    .line 61
    :cond_b
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-ne v0, v1, :cond_1c

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1c
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-ne v0, v1, :cond_2d

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 67
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

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
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 136
    instance-of v0, p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 139
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    .line 141
    iget-object v0, p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 142
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    .line 143
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getParameters()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getParameters()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    return-object v0
.end method
