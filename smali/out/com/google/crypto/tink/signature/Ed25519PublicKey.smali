.class public final Lcom/google/crypto/tink/signature/Ed25519PublicKey;
.super Lcom/google/crypto/tink/signature/SignaturePublicKey;
.source "Ed25519PublicKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/signature/Ed25519Parameters;

.field private final publicKeyBytes:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/Ed25519Parameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
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
            "publicKeyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePublicKey;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->parameters:Lcom/google/crypto/tink/signature/Ed25519Parameters;

    .line 43
    iput-object p2, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->publicKeyBytes:Lcom/google/crypto/tink/util/Bytes;

    .line 44
    iput-object p3, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 45
    iput-object p4, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/Ed25519PublicKey;
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
            "publicKeyBytes",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz p2, :cond_f

    goto :goto_2a

    .line 88
    :cond_f
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

    .line 92
    :cond_2a
    :goto_2a
    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    if-nez p2, :cond_35

    goto :goto_3d

    .line 93
    :cond_35
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result p0

    const/16 v1, 0x20

    if-ne p0, v1, :cond_4f

    .line 102
    new-instance p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    .line 103
    invoke-static {v0, p2}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->createOutputPrefix(Lcom/google/crypto/tink/signature/Ed25519Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;-><init>(Lcom/google/crypto/tink/signature/Ed25519Parameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object p0

    .line 97
    :cond_4f
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ed25519 key must be constructed with key of length 32 bytes, not "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/signature/Ed25519PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static createOutputPrefix(Lcom/google/crypto/tink/signature/Ed25519Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;
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

    .line 50
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    if-ne v0, v1, :cond_b

    .line 51
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object p0

    .line 53
    :cond_b
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    if-eq v0, v1, :cond_46

    .line 54
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    if-ne v0, v1, :cond_1c

    goto :goto_46

    .line 57
    :cond_1c
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    if-ne v0, v1, :cond_2d

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 60
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_46
    :goto_46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0
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

    .line 128
    instance-of v0, p1, Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 131
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    .line 133
    iget-object v0, p1, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->parameters:Lcom/google/crypto/tink/signature/Ed25519Parameters;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->parameters:Lcom/google/crypto/tink/signature/Ed25519Parameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->publicKeyBytes:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->publicKeyBytes:Lcom/google/crypto/tink/util/Bytes;

    .line 134
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p1, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->idRequirement:Ljava/lang/Integer;

    .line 135
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

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->parameters:Lcom/google/crypto/tink/signature/Ed25519Parameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->publicKeyBytes:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method
