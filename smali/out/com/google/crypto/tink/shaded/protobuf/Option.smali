.class public final Lcom/google/crypto/tink/shaded/protobuf/Option;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "Option.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/Option;",
        "Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private value_:Lcom/google/crypto/tink/shaded/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 364
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;-><init>()V

    .line 367
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 368
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/Option;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/Option;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/Any;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->setValue(Lcom/google/crypto/tink/shaded/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/Any;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->mergeValue(Lcom/google/crypto/tink/shaded/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->clearValue()V

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Option;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    .line 110
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Option;
    .registers 1

    .line 373
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object v0
.end method

.method private mergeValue(Lcom/google/crypto/tink/shaded/protobuf/Any;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    if-eqz v0, :cond_22

    .line 98
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Any;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Any;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    .line 100
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Any;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/Any;)Lcom/google/crypto/tink/shaded/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Any$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Any$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Any$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Any;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    goto :goto_24

    .line 102
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    .line 104
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 1

    .line 190
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 166
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 173
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 129
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 136
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 178
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 185
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 153
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 160
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 116
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 123
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 141
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/Option;
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

    .line 148
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->name_:Ljava/lang/String;

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

    .line 62
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 63
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->name_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Lcom/google/crypto/tink/shaded/protobuf/Any;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    .line 89
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

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

    .line 313
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/Option$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_5c

    .line 357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 351
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 336
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Option;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 338
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    monitor-enter p2

    .line 339
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Option;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 341
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 344
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/Option;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 346
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

    .line 333
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object p1

    :pswitch_36
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000"

    .line 329
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/Option;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_50
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Option$1;)V

    return-object p1

    .line 315
    :pswitch_56
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;-><init>()V

    return-object p1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_50
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/crypto/tink/shaded/protobuf/Any;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->value_:Lcom/google/crypto/tink/shaded/protobuf/Any;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Any;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/Any;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasValue()Z
    .registers 3

    .line 74
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
