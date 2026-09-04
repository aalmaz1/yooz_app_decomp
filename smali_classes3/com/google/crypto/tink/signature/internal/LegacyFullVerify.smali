.class public final Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;
.super Ljava/lang/Object;
.source "LegacyFullVerify.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final messageSuffix:[B

.field private final outputPrefix:[B

.field private final rawVerifier:Lcom/google/crypto/tink/PublicKeyVerify;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/PublicKeyVerify;[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawVerifier",
            "outputPrefix",
            "messageSuffix"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->rawVerifier:Lcom/google/crypto/tink/PublicKeyVerify;

    .line 80
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->outputPrefix:[B

    .line 81
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->messageSuffix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/LegacyProtoKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 3
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

    .line 43
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    .line 45
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyData;

    .line 50
    const-class v1, Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/Registry;->getPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 51
    new-instance v1, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;

    .line 53
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->getOutputPrefix(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)[B

    move-result-object v2

    .line 54
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->getMessageSuffix(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;-><init>(Lcom/google/crypto/tink/PublicKeyVerify;[B[B)V

    return-object v1
.end method

.method static getMessageSuffix(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v0, p0, v0

    return-object p0

    :cond_0
    new-array p0, v0, [B

    return-object p0
.end method

.method static getOutputPrefix(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)[B
    .locals 2
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

    .line 58
    sget-object v0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    .line 65
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public verify([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->messageSuffix:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->rawVerifier:Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    return-void

    .line 99
    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->messageSuffix:[B

    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    .line 104
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p2

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->outputPrefix:[B

    array-length v0, v0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->rawVerifier:Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    return-void

    .line 100
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
