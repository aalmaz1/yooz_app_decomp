.class public final Lcom/google/crypto/tink/shaded/protobuf/Duration;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "Duration.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/Duration;",
        "Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DurationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

.field public static final NANOS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x1


# instance fields
.field private nanos_:I

.field private seconds_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 280
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;-><init>()V

    .line 283
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    .line 284
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/Duration;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/Duration;J)V
    .registers 3

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->setSeconds(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/Duration;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->clearSeconds()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/Duration;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->setNanos(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/Duration;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->clearNanos()V

    return-void
.end method

.method private clearNanos()V
    .registers 2

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->nanos_:I

    return-void
.end method

.method private clearSeconds()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->seconds_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Duration;
    .registers 1

    .line 289
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;
    .registers 1

    .line 147
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/Duration;)Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 123
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 130
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 86
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 93
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 135
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 142
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 110
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 117
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 73
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 80
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 98
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Duration;
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

    .line 105
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Duration;",
            ">;"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNanos(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 60
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->nanos_:I

    return-void
.end method

.method private setSeconds(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    iput-wide p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->seconds_:J

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

    .line 230
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/Duration$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_58

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 267
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 252
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Duration;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 254
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    monitor-enter p2

    .line 255
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Duration;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 257
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 260
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/Duration;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 262
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

    .line 249
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "seconds_"

    aput-object v0, p1, p3

    const-string p3, "nanos_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 245
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Duration;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 235
    :pswitch_4b
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/Duration$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Duration$1;)V

    return-object p1

    .line 232
    :pswitch_51
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Duration;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/Duration;-><init>()V

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getNanos()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->nanos_:I

    return v0
.end method

.method public getSeconds()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Duration;->seconds_:J

    return-wide v0
.end method
