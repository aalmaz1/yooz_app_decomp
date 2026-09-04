.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final FEATURES_FIELD_NUMBER:I = 0x23

.field public static final IDEMPOTENCY_LEVEL_FIELD_NUMBER:I = 0x22

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

.field private idempotencyLevel_:I

.field private memoizedIsInitialized:B

.field private uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23027
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    .line 23030
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    .line 23031
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22339
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    .line 22965
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 22340
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$47700()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 22334
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method static synthetic access$47800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Z)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->setDeprecated(Z)V

    return-void
.end method

.method static synthetic access$47900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V
    .locals 0

    .line 22334
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->clearDeprecated()V

    return-void
.end method

.method static synthetic access$48000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->setIdempotencyLevel(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)V

    return-void
.end method

.method static synthetic access$48100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V
    .locals 0

    .line 22334
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->clearIdempotencyLevel()V

    return-void
.end method

.method static synthetic access$48200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$48300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$48400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V
    .locals 0

    .line 22334
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->clearFeatures()V

    return-void
.end method

.method static synthetic access$48500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$48600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$48700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$48800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->addAllUninterpretedOption(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$48900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V
    .locals 0

    .line 22334
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->clearUninterpretedOption()V

    return-void
.end method

.method static synthetic access$49000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;I)V
    .locals 0

    .line 22334
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->removeUninterpretedOption(I)V

    return-void
.end method

.method private addAllUninterpretedOption(Ljava/lang/Iterable;)V
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)V"
        }
    .end annotation

    .line 22627
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->ensureUninterpretedOptionIsMutable()V

    .line 22628
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
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

    .line 22618
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22619
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->ensureUninterpretedOptionIsMutable()V

    .line 22620
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22609
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22610
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->ensureUninterpretedOptionIsMutable()V

    .line 22611
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDeprecated()V
    .locals 1

    .line 22466
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 22467
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return-void
.end method

.method private clearFeatures()V
    .locals 1

    const/4 v0, 0x0

    .line 22547
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 22548
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    return-void
.end method

.method private clearIdempotencyLevel()V
    .locals 1

    .line 22501
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 22502
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->idempotencyLevel_:I

    return-void
.end method

.method private clearUninterpretedOption()V
    .locals 1

    .line 22635
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .line 22589
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 22590
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22592
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 23036
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method private mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22534
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22535
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-eqz v0, :cond_0

    .line 22536
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22537
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 22538
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    goto :goto_0

    .line 22540
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 22542
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 22722
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 22725
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22698
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22705
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22661
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22668
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22710
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22717
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22685
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22692
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22648
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22655
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22673
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
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

    .line 22680
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .line 23042
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeUninterpretedOption(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 22641
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->ensureUninterpretedOptionIsMutable()V

    .line 22642
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDeprecated(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22459
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 22460
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return-void
.end method

.method private setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22526
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 22527
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    return-void
.end method

.method private setIdempotencyLevel(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22494
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->idempotencyLevel_:I

    .line 22495
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    return-void
.end method

.method private setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
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

    .line 22601
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22602
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->ensureUninterpretedOptionIsMutable()V

    .line 22603
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 22971
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23020
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 23016
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    return-object v1

    .line 23013
    :pswitch_1
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22998
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2

    .line 23000
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    monitor-enter p2

    .line 23001
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 23003
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 23006
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 23008
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

    .line 22995
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "deprecated_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "idempotencyLevel_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 22983
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "features_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "uninterpretedOption_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001!\u03e7\u0004\u0000\u0001\u0002!\u1007\u0000\"\u180c\u0001#\u1409\u0002\u03e7\u041b"

    .line 22991
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22976
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 22973
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;-><init>()V

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

.method public getDeprecated()Z
    .locals 1

    .line 22452
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 22519
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdempotencyLevel()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 22486
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->idempotencyLevel_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22487
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    :cond_0
    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 22579
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 22572
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 22558
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 22586
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22565
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasDeprecated()Z
    .locals 2

    .line 22444
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFeatures()Z
    .locals 1

    .line 22512
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdempotencyLevel()Z
    .locals 1

    .line 22478
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
