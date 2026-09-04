.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12001
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    .line 12004
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 12005
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11437
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 11941
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 11438
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    .line 11439
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$24600()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .line 11432
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method static synthetic access$24700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/String;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 0

    .line 11432
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->clearName()V

    return-void
.end method

.method static synthetic access$24900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->setMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method static synthetic access$25100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->addMethod(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method static synthetic access$25200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->addMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method static synthetic access$25300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/Iterable;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->addAllMethod(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$25400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 0

    .line 11432
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->clearMethod()V

    return-void
.end method

.method static synthetic access$25500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;I)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->removeMethod(I)V

    return-void
.end method

.method static synthetic access$25600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V

    return-void
.end method

.method static synthetic access$25700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V
    .locals 0

    .line 11432
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V

    return-void
.end method

.method static synthetic access$25800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 0

    .line 11432
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->clearOptions()V

    return-void
.end method

.method private addAllMethod(Ljava/lang/Iterable;)V
    .locals 1
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;)V"
        }
    .end annotation

    .line 11572
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->ensureMethodIsMutable()V

    .line 11573
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 1
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

    .line 11563
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11564
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->ensureMethodIsMutable()V

    .line 11565
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMethod(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11555
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->ensureMethodIsMutable()V

    .line 11556
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearMethod()V
    .locals 1

    .line 11580
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 11483
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 11484
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 11632
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    .line 11633
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    return-void
.end method

.method private ensureMethodIsMutable()V
    .locals 2

    .line 11534
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 11535
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11537
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .line 12010
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11620
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    .line 11621
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11622
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    .line 11623
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    goto :goto_0

    .line 11625
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    .line 11627
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .line 11713
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 11716
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11689
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11696
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11652
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11659
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11701
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11708
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11676
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11683
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11639
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11646
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11664
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
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

    .line 11671
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 12016
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMethod(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11586
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->ensureMethodIsMutable()V

    .line 11587
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 1
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

    .line 11546
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11547
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->ensureMethodIsMutable()V

    .line 11548
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11476
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    .line 11477
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11492
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    .line 11493
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    return-void
.end method

.method private setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11611
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    .line 11612
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 11947
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11994
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 11990
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    return-object v1

    .line 11987
    :pswitch_1
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11972
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2

    .line 11974
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    monitor-enter p2

    .line 11975
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 11977
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 11980
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 11982
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11969
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "name_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "method_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11955
    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "options_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0002\u0001\u1008\u0000\u0002\u041b\u0003\u1409\u0001"

    .line 11965
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11952
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 11949
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>()V

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

.method public getMethod(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11524
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p1
.end method

.method public getMethodCount()I
    .locals 1

    .line 11517
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 11503
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMethodOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11531
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getMethodOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11510
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->method_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11458
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 11467
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .line 11604
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->options_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .line 11450
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 1

    .line 11597
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
