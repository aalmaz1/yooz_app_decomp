.class public final Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;
.super Ljava/lang/Object;
.source "LegacyFullHybridEncrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridEncrypt;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final outputPrefix:[B

.field private final rawHybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/HybridEncrypt;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawHybridEncrypt",
            "outputPrefix"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;->rawHybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

    .line 84
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;->outputPrefix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/LegacyProtoKey;)Lcom/google/crypto/tink/HybridEncrypt;
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

    .line 52
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyData;

    .line 59
    const-class v2, Lcom/google/crypto/tink/HybridEncrypt;

    invoke-static {v1, v2}, Lcom/google/crypto/tink/Registry;->getPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/HybridEncrypt;

    .line 61
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 63
    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

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

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 79
    :goto_0
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;-><init>(Lcom/google/crypto/tink/HybridEncrypt;[B)V

    return-object v0
.end method


# virtual methods
.method public encrypt([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;->rawHybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/HybridEncrypt;->encrypt([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/LegacyFullHybridEncrypt;->rawHybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/HybridEncrypt;->encrypt([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
