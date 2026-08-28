.class public Lcom/google/crypto/tink/aead/internal/LegacyFullAead;
.super Ljava/lang/Object;
.source "LegacyFullAead.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field private final identifier:[B

.field private final rawAead:Lcom/google/crypto/tink/Aead;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/Aead;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawAead",
            "identifier"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->rawAead:Lcom/google/crypto/tink/Aead;

    .line 84
    array-length p1, p2

    if-eqz p1, :cond_15

    array-length p1, p2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 85
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "identifier has an invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_15
    :goto_15
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->identifier:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/Aead;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawAead",
            "outputPrefix"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;

    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;-><init>(Lcom/google/crypto/tink/Aead;[B)V

    return-object v0
.end method

.method public static create(Lcom/google/crypto/tink/internal/LegacyProtoKey;)Lcom/google/crypto/tink/Aead;
    .registers 5
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

    .line 47
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyData;

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/internal/RegistryConfiguration;->get()Lcom/google/crypto/tink/internal/RegistryConfiguration;

    move-result-object v2

    const-class v3, Lcom/google/crypto/tink/Aead;

    invoke-virtual {v2, v1, v3}, Lcom/google/crypto/tink/internal/RegistryConfiguration;->getLegacyPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/Aead;

    .line 56
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 58
    sget-object v2, Lcom/google/crypto/tink/aead/internal/LegacyFullAead$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_85

    const/4 v3, 0x2

    if-eq v2, v3, :cond_74

    const/4 v3, 0x3

    if-eq v2, v3, :cond_74

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5f

    .line 69
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    goto :goto_8b

    .line 72
    :cond_5f
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown output prefix type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_74
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    goto :goto_8b

    .line 60
    :cond_85
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    .line 75
    :goto_8b
    new-instance v0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;-><init>(Lcom/google/crypto/tink/Aead;[B)V

    return-object v0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    .line 100
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->identifier:[B

    array-length v1, v0

    if-nez v1, :cond_c

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->rawAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 104
    :cond_c
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->rawAead:Lcom/google/crypto/tink/Aead;

    const/4 v1, 0x5

    array-length v2, p1

    .line 109
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 108
    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 105
    :cond_1f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "wrong prefix"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->identifier:[B

    array-length v1, v0

    if-nez v1, :cond_c

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->rawAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/LegacyFullAead;->rawAead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
