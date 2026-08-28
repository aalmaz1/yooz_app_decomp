.class public final Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "FieldMask.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/FieldMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldMask;",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldMaskOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATHS_FIELD_NUMBER:I = 0x1


# instance fields
.field private paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 356
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;-><init>()V

    .line 359
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    .line 360
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/FieldMask;ILjava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->setPaths(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/FieldMask;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->addPaths(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/FieldMask;Ljava/lang/Iterable;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->addAllPaths(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/FieldMask;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->clearPaths()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/shaded/protobuf/FieldMask;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->addPathsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method private addAllPaths(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->ensurePathsIsMutable()V

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPaths(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->ensurePathsIsMutable()V

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPathsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 108
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->ensurePathsIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearPaths()V
    .registers 2

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePathsIsMutable()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 59
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 61
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
    .registers 1

    .line 365
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;
    .registers 1

    .line 189
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/FieldMask;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 165
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 172
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 128
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 135
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 177
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 184
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 152
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 159
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 115
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 122
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 140
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/FieldMask;
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

    .line 147
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldMask;",
            ">;"
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPaths(ILjava/lang/String;)V
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

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->ensurePathsIsMutable()V

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 308
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/FieldMask$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_52

    .line 349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 343
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 328
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 330
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    monitor-enter p2

    .line 331
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 333
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 336
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 338
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

    .line 325
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    return-object p1

    :pswitch_36
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "paths_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    .line 321
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 313
    :pswitch_46
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/FieldMask$1;)V

    return-object p1

    .line 310
    :pswitch_4c
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;-><init>()V

    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getPaths(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPathsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 55
    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPathsCount()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPathsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldMask;->paths_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method
