.class public final Lcom/google/crypto/tink/proto/AesCtrParams;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "AesCtrParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCtrParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/AesCtrParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/AesCtrParams;",
        "Lcom/google/crypto/tink/proto/AesCtrParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCtrParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

.field public static final IV_SIZE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ivSize_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 224
    new-instance v0, Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/AesCtrParams;-><init>()V

    .line 227
    sput-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    .line 228
    const-class v1, Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/AesCtrParams;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/AesCtrParams;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/AesCtrParams;->setIvSize(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/AesCtrParams;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCtrParams;->clearIvSize()V

    return-void
.end method

.method private clearIvSize()V
    .registers 2

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/google/crypto/tink/proto/AesCtrParams;->ivSize_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/AesCtrParams;
    .registers 1

    .line 233
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/AesCtrParams$Builder;
    .registers 1

    .line 121
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrParams;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/AesCtrParams;)Lcom/google/crypto/tink/proto/AesCtrParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrParams;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 97
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/AesCtrParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 104
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/AesCtrParams;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 60
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 67
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 109
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 116
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 84
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 91
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 47
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 54
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 72
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrParams;
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

    .line 79
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/AesCtrParams;",
            ">;"
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrParams;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIvSize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    iput p1, p0, Lcom/google/crypto/tink/proto/AesCtrParams;->ivSize_:I

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

    .line 176
    sget-object p2, Lcom/google/crypto/tink/proto/AesCtrParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_52

    .line 217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 211
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/proto/AesCtrParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 198
    const-class p2, Lcom/google/crypto/tink/proto/AesCtrParams;

    monitor-enter p2

    .line 199
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/proto/AesCtrParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 201
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 204
    sput-object p1, Lcom/google/crypto/tink/proto/AesCtrParams;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 206
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

    .line 193
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    return-object p1

    :pswitch_36
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "ivSize_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    .line 189
    sget-object p3, Lcom/google/crypto/tink/proto/AesCtrParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/AesCtrParams;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_46
    new-instance p1, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/AesCtrParams$Builder;-><init>(Lcom/google/crypto/tink/proto/AesCtrParams$1;)V

    return-object p1

    .line 178
    :pswitch_4c
    new-instance p1, Lcom/google/crypto/tink/proto/AesCtrParams;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/AesCtrParams;-><init>()V

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getIvSize()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/google/crypto/tink/proto/AesCtrParams;->ivSize_:I

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
