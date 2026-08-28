.class public final Lcom/google/crypto/tink/shaded/protobuf/Method;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "Method.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/Method;",
        "Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/MethodOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_STREAMING_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_TYPE_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_STREAMING_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_TYPE_URL_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7


# instance fields
.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private requestStreaming_:Z

.field private requestTypeUrl_:Ljava/lang/String;

.field private responseStreaming_:Z

.field private responseTypeUrl_:Ljava/lang/String;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 862
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;-><init>()V

    .line 865
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 866
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->name_:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/Method;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearResponseTypeUrl()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setResponseTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/crypto/tink/shaded/protobuf/Method;Z)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setResponseStreaming(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearResponseStreaming()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/Iterable;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearOptions()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/crypto/tink/shaded/protobuf/Method;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/crypto/tink/shaded/protobuf/Method;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setSyntaxValue(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearSyntax()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setRequestTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearRequestTypeUrl()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setRequestTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/shaded/protobuf/Method;Z)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setRequestStreaming(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/shaded/protobuf/Method;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->clearRequestStreaming()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->setResponseTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->ensureOptionsIsMutable()V

    .line 292
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 282
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->ensureOptionsIsMutable()V

    .line 284
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->ensureOptionsIsMutable()V

    .line 275
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 56
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .registers 2

    .line 299
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRequestStreaming()V
    .registers 2

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestStreaming_:Z

    return-void
.end method

.method private clearRequestTypeUrl()V
    .registers 2

    .line 103
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearResponseStreaming()V
    .registers 2

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseStreaming_:Z

    return-void
.end method

.method private clearResponseTypeUrl()V
    .registers 2

    .line 176
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearSyntax()V
    .registers 2

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->syntax_:I

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 254
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 256
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Method;
    .registers 1

    .line 871
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .registers 1

    .line 428
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/Method;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 404
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 411
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 367
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 374
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 416
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 423
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 391
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 398
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 354
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 361
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 379
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Method;
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

    .line 386
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 877
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOptions(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->ensureOptionsIsMutable()V

    .line 306
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 65
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->name_:Ljava/lang/String;

    return-void
.end method

.method private setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->ensureOptionsIsMutable()V

    .line 267
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequestStreaming(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 132
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestStreaming_:Z

    return-void
.end method

.method private setRequestTypeUrl(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setRequestTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 112
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setResponseStreaming(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 205
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseStreaming_:Z

    return-void
.end method

.method private setResponseTypeUrl(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setResponseTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 185
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Syntax;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->syntax_:I

    return-void
.end method

.method private setSyntaxValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 333
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->syntax_:I

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

    .line 806
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/Method$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_76

    .line 855
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 849
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 834
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Method;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 836
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/Method;

    monitor-enter p2

    .line 837
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Method;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 839
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 842
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/Method;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 844
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

    .line 831
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    return-object p1

    :pswitch_36
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "requestTypeUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "requestStreaming_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "responseTypeUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "responseStreaming_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "options_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 814
    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/Option;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "syntax_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0007\u0004\u0208\u0005\u0007\u0006\u001b\u0007\u000c"

    .line 827
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 811
    :pswitch_6a
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Method$1;)V

    return-object p1

    .line 808
    :pswitch_70
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;-><init>()V

    return-object p1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6a
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p1
.end method

.method public getOptionsCount()I
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequestStreaming()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestStreaming_:Z

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->requestTypeUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseStreaming_:Z

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->responseTypeUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .registers 2

    .line 325
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->syntax_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Syntax;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_a

    .line 326
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    :cond_a
    return-object v0
.end method

.method public getSyntaxValue()I
    .registers 2

    .line 317
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method;->syntax_:I

    return v0
.end method
