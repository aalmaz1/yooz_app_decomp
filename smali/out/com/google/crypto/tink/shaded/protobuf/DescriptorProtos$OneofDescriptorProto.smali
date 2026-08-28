.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9446
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

    .line 9449
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 9450
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 9081
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 9388
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9082
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19700()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
    .registers 1

    .line 9076
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method static synthetic access$19800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Ljava/lang/String;)V
    .registers 2

    .line 9076
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .registers 1

    .line 9076
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->clearName()V

    return-void
.end method

.method static synthetic access$20000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 9076
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V
    .registers 2

    .line 9076
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V

    return-void
.end method

.method static synthetic access$20200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V
    .registers 2

    .line 9076
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .registers 1

    .line 9076
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->clearOptions()V

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 9126
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 9127
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 9181
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    .line 9182
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
    .registers 1

    .line 9455
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9169
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    if-eqz v0, :cond_22

    .line 9170
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 9171
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    .line 9172
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    goto :goto_24

    .line 9174
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    .line 9176
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .registers 1

    .line 9262
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 9265
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9238
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9245
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9201
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9208
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9250
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9257
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9225
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9232
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9188
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9195
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9213
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
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

    .line 9220
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 9461
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9119
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 9120
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

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

    .line 9135
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    .line 9136
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void
.end method

.method private setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9160
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    .line 9161
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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

    .line 9394
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_64

    .line 9439
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_14
    if-nez p2, :cond_17

    move p3, v0

    :cond_17
    int-to-byte p1, p3

    .line 9435
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedIsInitialized:B

    return-object v1

    .line 9432
    :pswitch_1b
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9417
    :pswitch_22
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_3b

    .line 9419
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    monitor-enter p2

    .line 9420
    :try_start_29
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_36

    .line 9422
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 9425
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 9427
    :cond_36
    monitor-exit p2

    goto :goto_3b

    :catchall_38
    move-exception p1

    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    :goto_3b
    return-object p1

    .line 9414
    :pswitch_3c
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p1

    :pswitch_3f
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "name_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "options_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1409\u0001"

    .line 9410
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9399
    :pswitch_58
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 9396
    :pswitch_5e
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

    return-object p1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_58
        :pswitch_3f
        :pswitch_3c
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 9101
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 9110
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;
    .registers 2

    .line 9153
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasName()Z
    .registers 3

    .line 9093
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasOptions()Z
    .registers 2

    .line 9146
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
