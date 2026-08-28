.class public final Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "PrfBasedDeriverKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

.field public static final PARAMS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRF_KEY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

.field private prfKey_:Lcom/google/crypto/tink/proto/KeyData;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 423
    new-instance v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;-><init>()V

    .line 426
    sput-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    .line 427
    const-class v1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
    .registers 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;I)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/KeyData;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->setPrfKey(Lcom/google/crypto/tink/proto/KeyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/KeyData;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->mergePrfKey(Lcom/google/crypto/tink/proto/KeyData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->clearPrfKey()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->mergeParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->clearParams()V

    return-void
.end method

.method private clearParams()V
    .registers 2

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 138
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private clearPrfKey()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 92
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
    .registers 1

    .line 432
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    if-eqz v0, :cond_22

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 127
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 128
    invoke-static {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->newBuilder(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    goto :goto_24

    .line 130
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 132
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private mergePrfKey(Lcom/google/crypto/tink/proto/KeyData;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    if-eqz v0, :cond_22

    .line 80
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 82
    invoke-static {v0}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    goto :goto_24

    .line 84
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 86
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;
    .registers 1

    .line 218
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 194
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 201
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 157
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 164
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 206
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 213
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 181
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 188
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 144
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 169
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 176
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
            ">;"
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 117
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private setPrfKey(Lcom/google/crypto/tink/proto/KeyData;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 71
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

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

    .line 39
    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->version_:I

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

    .line 371
    sget-object p2, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_62

    .line 416
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 410
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 395
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 397
    const-class p2, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    monitor-enter p2

    .line 398
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 400
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 403
    sput-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 405
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

    .line 392
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

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

    const-string p3, "prfKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "params_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\u1009\u0001"

    .line 388
    sget-object p3, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 376
    :pswitch_55
    new-instance p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;-><init>(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$1;)V

    return-object p1

    .line 373
    :pswitch_5b
    new-instance p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;-><init>()V

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

.method public getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPrfKey()Lcom/google/crypto/tink/proto/KeyData;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .registers 2

    .line 102
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPrfKey()Z
    .registers 3

    .line 56
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

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
