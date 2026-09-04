.class public final Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "BoolValue.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/BoolValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/BoolValue;",
        "Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/BoolValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/BoolValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 224
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;-><init>()V

    .line 227
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    .line 228
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/BoolValue;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->setValue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/BoolValue;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->value_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1

    .line 233
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;
    .locals 1

    .line 121
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/BoolValue;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;

    return-object p0
.end method

.method public static of(Z)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->newBuilder()Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;->setValue(Z)Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/BoolValue;
    .locals 1
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
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/BoolValue;",
            ">;"
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->value_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 211
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 198
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    monitor-enter p2

    .line 199
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 201
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 204
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 206
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 193
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007"

    .line 189
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/BoolValue$1;)V

    return-object p1

    .line 178
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BoolValue;->value_:Z

    return v0
.end method
