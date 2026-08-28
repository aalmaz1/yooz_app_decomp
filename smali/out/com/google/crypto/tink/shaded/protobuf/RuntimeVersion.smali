.class public final Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;
.super Ljava/lang/Object;
.source "RuntimeVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;,
        Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;
    }
.end annotation


# static fields
.field public static final DOMAIN:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final MAJOR:I = 0x4

.field public static final MINOR:I = 0x1c

.field public static final OSS_DOMAIN:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final OSS_MAJOR:I = 0x4

.field public static final OSS_MINOR:I = 0x1c

.field public static final OSS_PATCH:I = 0x2

.field public static final OSS_SUFFIX:Ljava/lang/String; = ""

.field public static final PATCH:I = 0x2

.field public static final SUFFIX:Ljava/lang/String; = ""

.field private static final VERSION_STRING:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 28
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->OSS_DOMAIN:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    .line 34
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->DOMAIN:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    const/4 v0, 0x2

    const-string v1, ""

    const/4 v2, 0x4

    const/16 v3, 0x1c

    .line 40
    invoke-static {v2, v3, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDisabled()Z
    .registers 2

    const-string v0, "TEMORARILY_DISABLE_PROTOBUF_VERSION_CHECK"

    .line 147
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "true"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static validateProtobufGencodeVersion(Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "major",
            "minor",
            "patch",
            "suffix",
            "location"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->checkDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 63
    :cond_7
    invoke-static/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->validateProtobufGencodeVersionImpl(Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static validateProtobufGencodeVersionImpl(Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "major",
            "minor",
            "patch",
            "suffix",
            "location"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->checkDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 72
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_b4

    if-ltz p2, :cond_b4

    if-ltz p3, :cond_b4

    .line 79
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->DOMAIN:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p0, v1, :cond_a0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4a

    if-ne p1, v4, :cond_34

    .line 90
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->logger:Ljava/util/logging/Logger;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    aput-object v1, p1, v2

    aput-object p5, p1, v5

    const-string v1, " Protobuf gencode version %s is exactly one major version older than the runtime version %s at %s. Please update the gencode to avoid compatibility violations in the next runtime release."

    .line 91
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4a

    .line 97
    :cond_34
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p5, p1, v3

    aput-object v0, p1, v2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    aput-object p2, p1, v5

    const-string p2, "Detected mismatched Protobuf Gencode/Runtime major versions when loading %s: gencode %s, runtime %s. Same major version is required."

    .line 98
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_4a
    const/16 p0, 0x1c

    if-lt p0, p2, :cond_8a

    if-ne p2, p0, :cond_52

    if-lt v5, p3, :cond_8a

    :cond_52
    if-gt p0, p2, :cond_56

    if-le v5, p3, :cond_6b

    .line 113
    :cond_56
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->logger:Ljava/util/logging/Logger;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    aput-object p2, p1, v2

    aput-object p5, p1, v5

    const-string p2, " Protobuf gencode version %s is older than the runtime version %s at %s. Please avoid checked-in Protobuf gencode that can be obsolete."

    .line 114
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6b
    const-string p0, ""

    .line 121
    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_74

    return-void

    .line 122
    :cond_74
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p5, p1, v3

    aput-object v0, p1, v2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    aput-object p2, p1, v5

    const-string p2, "Detected mismatched Protobuf Gencode/Runtime version suffixes when loading %s: gencode %s, runtime %s. Version suffixes must be the same."

    .line 123
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_8a
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p5, p1, v3

    aput-object v0, p1, v2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    aput-object p2, p1, v5

    const-string p2, "Detected incompatible Protobuf Gencode/Runtime versions when loading %s: gencode %s, runtime %s. Runtime version cannot be older than the linked gencode version."

    .line 108
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_a0
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p5, p2, v3

    aput-object p0, p2, v2

    aput-object v1, p2, v5

    const-string p0, "Detected mismatched Protobuf Gencode/Runtime domains when loading %s: gencode %s, runtime %s. Cross-domain usage of Protobuf is not supported."

    .line 81
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_b4
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid gencode version: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static versionString(IIILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "major",
            "minor",
            "patch",
            "suffix"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "%d.%d.%d%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
