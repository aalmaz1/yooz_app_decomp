.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private number_:I

.field private options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11364
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    .line 11367
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 11368
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 10928
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 11305
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 10929
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23600()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 1

    .line 10923
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method static synthetic access$23700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/String;)V
    .registers 2

    .line 10923
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .registers 1

    .line 10923
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->clearName()V

    return-void
.end method

.method static synthetic access$23900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 10923
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)V
    .registers 2

    .line 10923
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->setNumber(I)V

    return-void
.end method

.method static synthetic access$24100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .registers 1

    .line 10923
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->clearNumber()V

    return-void
.end method

.method static synthetic access$24200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V
    .registers 2

    .line 10923
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-void
.end method

.method static synthetic access$24300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V
    .registers 2

    .line 10923
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-void
.end method

.method static synthetic access$24400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .registers 1

    .line 10923
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->clearOptions()V

    return-void
.end method

.method private clearName()V
    .registers 2

    .line 10973
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 10974
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearNumber()V
    .registers 2

    .line 11016
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v0, 0x0

    .line 11017
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return-void
.end method

.method private clearOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 11062
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 11063
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 1

    .line 11373
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11049
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11050
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_22

    .line 11051
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 11052
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 11053
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    goto :goto_24

    .line 11055
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 11057
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 1

    .line 11143
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 11146
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11119
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11126
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11082
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11089
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11131
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11138
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11106
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11113
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11069
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11076
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11094
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;
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

    .line 11101
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 11379
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

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

    .line 10965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10966
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 10967
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

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

    .line 10982
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    .line 10983
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    return-void
.end method

.method private setNumber(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11009
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 11010
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return-void
.end method

.method private setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11040
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11041
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 11042
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

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

    .line 11311
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_6a

    .line 11357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_14
    if-nez p2, :cond_17

    move p3, v0

    :cond_17
    int-to-byte p1, p3

    .line 11353
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    return-object v1

    .line 11350
    :pswitch_1b
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11335
    :pswitch_22
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_3b

    .line 11337
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    monitor-enter p2

    .line 11338
    :try_start_29
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_36

    .line 11340
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 11343
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 11345
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

    .line 11332
    :pswitch_3c
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1

    :pswitch_3f
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "name_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "number_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "options_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1409\u0002"

    .line 11328
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11316
    :pswitch_5d
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 11313
    :pswitch_63
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object p1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5d
        :pswitch_3f
        :pswitch_3c
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 10948
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 10957
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 11002
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;
    .registers 2

    .line 11034
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasName()Z
    .registers 3

    .line 10940
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasNumber()Z
    .registers 2

    .line 10994
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasOptions()Z
    .registers 2

    .line 11027
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
