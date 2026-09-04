.class public Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;
.super Ljava/lang/Object;
.source "LegacyFullDeterministicAead.java"

# interfaces
.implements Lcom/google/crypto/tink/DeterministicAead;


# instance fields
.field private final identifier:[B

.field private final outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

.field private final rawDaead:Lcom/google/crypto/tink/DeterministicAead;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/DeterministicAead;Lcom/google/crypto/tink/proto/OutputPrefixType;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawDaead",
            "outputPrefixType",
            "identifier"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->rawDaead:Lcom/google/crypto/tink/DeterministicAead;

    .line 87
    iput-object p2, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 88
    iput-object p3, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->identifier:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/LegacyProtoKey;)Lcom/google/crypto/tink/DeterministicAead;
    .locals 4
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

    .line 50
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyData;

    .line 59
    invoke-static {}, Lcom/google/crypto/tink/internal/RegistryConfiguration;->get()Lcom/google/crypto/tink/internal/RegistryConfiguration;

    move-result-object v2

    const-class v3, Lcom/google/crypto/tink/DeterministicAead;

    invoke-virtual {v2, v1, v3}, Lcom/google/crypto/tink/internal/RegistryConfiguration;->getLegacyPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/DeterministicAead;

    .line 61
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 63
    sget-object v2, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown output prefix type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    .line 81
    :goto_0
    new-instance v2, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;-><init>(Lcom/google/crypto/tink/DeterministicAead;Lcom/google/crypto/tink/proto/OutputPrefixType;[B)V

    return-object v2
.end method


# virtual methods
.method public decryptDeterministically([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->rawDaead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->identifier:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->rawDaead:Lcom/google/crypto/tink/DeterministicAead;

    const/4 v1, 0x5

    array-length v2, p1

    .line 111
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    move-result-object p1

    return-object p1

    .line 108
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "wrong prefix"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptDeterministically([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 94
    iget-object v0, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->rawDaead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->identifier:[B

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/crypto/tink/daead/internal/LegacyFullDeterministicAead;->rawDaead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v1, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
