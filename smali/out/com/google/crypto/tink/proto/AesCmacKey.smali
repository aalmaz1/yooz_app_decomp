.class public final Lcom/google/crypto/tink/proto/AesCmacKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCmacKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCmacKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCmacKey;",
        "Lcom/google/crypto/tink/proto/AesCmacKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCmacKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x2

.field public static final PARAMS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private params_:Lcom/google/crypto/tink/proto/AesCmacParams;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 410
    new-instance v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;-><init>()V

    .line 413
    sput-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    .line 414
    const-class v1, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCmacKey;I)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesCmacKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/AesCmacKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacKey;->clearKeyValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->setParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->mergeParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/AesCmacKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacKey;->clearParams()V

    return-void
.end method

.method private clearKeyValue()V
    .registers 2

    .line 86
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearParams()V
    .registers 2

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 132
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 1

    .line 419
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    if-eqz v0, :cond_22

    .line 120
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 121
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 122
    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesCmacParams;->newBuilder(Lcom/google/crypto/tink/proto/AesCmacParams;)Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesCmacParams;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    goto :goto_24

    .line 124
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 126
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .registers 1

    .line 212
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesCmacKey;)Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCmacKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesCmacKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCmacKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCmacKey;",
            ">;"
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/AesCmacParams;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iput-object p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    .line 111
    iget p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    return-void
.end method

.method private setVersion(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 358
    sget-object p2, Lcom/google/crypto/tink/proto/AesCmacKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_62

    .line 403
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 397
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 382
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 384
    const-class p2, Lcom/google/crypto/tink/proto/AesCmacKey;

    monitor-enter p2

    .line 385
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 387
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 390
    sput-object p1, Lcom/google/crypto/tink/proto/AesCmacKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 392
    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    .line 379
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "keyValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "params_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\u1009\u0000"

    .line 375
    sget-object p3, Lcom/google/crypto/tink/proto/AesCmacKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 363
    :pswitch_55
    new-instance p1, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCmacKey$1;)V

    return-object p1

    .line 360
    :pswitch_5b
    new-instance p1, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesCmacKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_55
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/AesCmacParams;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->params_:Lcom/google/crypto/tink/proto/AesCmacParams;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .registers 3

    .line 96
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
