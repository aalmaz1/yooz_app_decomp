.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOW_ALIAS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final DEPRECATED_LEGACY_JSON_FIELD_CONFLICTS_FIELD_NUMBER:I = 0x6

.field public static final FEATURES_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7


# instance fields
.field private allowAlias_:Z

.field private bitField0_:I

.field private deprecatedLegacyJsonFieldConflicts_:Z

.field private deprecated_:Z

.field private features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

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

    .line 20890
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;-><init>()V

    .line 20893
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    .line 20894
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20210
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    .line 20828
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->memoizedIsInitialized:B

    .line 20211
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$42900()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 20205
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method static synthetic access$43000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Z)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->setAllowAlias(Z)V

    return-void
.end method

.method static synthetic access$43100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 20205
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->clearAllowAlias()V

    return-void
.end method

.method static synthetic access$43200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Z)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->setDeprecated(Z)V

    return-void
.end method

.method static synthetic access$43300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 20205
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->clearDeprecated()V

    return-void
.end method

.method static synthetic access$43400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Z)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->setDeprecatedLegacyJsonFieldConflicts(Z)V

    return-void
.end method

.method static synthetic access$43500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 20205
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->clearDeprecatedLegacyJsonFieldConflicts()V

    return-void
.end method

.method static synthetic access$43600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$43700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$43800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 20205
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->clearFeatures()V

    return-void
.end method

.method static synthetic access$43900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$44000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$44100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$44200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->addAllUninterpretedOption(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$44300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 20205
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->clearUninterpretedOption()V

    return-void
.end method

.method static synthetic access$44400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;I)V
    .locals 0

    .line 20205
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->removeUninterpretedOption(I)V

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

    .line 20446
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->ensureUninterpretedOptionIsMutable()V

    .line 20447
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

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

    .line 20437
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20438
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->ensureUninterpretedOptionIsMutable()V

    .line 20439
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

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

    .line 20428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20429
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->ensureUninterpretedOptionIsMutable()V

    .line 20430
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAllowAlias()V
    .locals 1

    .line 20244
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 20245
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->allowAlias_:Z

    return-void
.end method

.method private clearDeprecated()V
    .locals 1

    .line 20278
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 20279
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->deprecated_:Z

    return-void
.end method

.method private clearDeprecatedLegacyJsonFieldConflicts()V
    .locals 1

    .line 20320
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    const/4 v0, 0x0

    .line 20321
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->deprecatedLegacyJsonFieldConflicts_:Z

    return-void
.end method

.method private clearFeatures()V
    .locals 1

    const/4 v0, 0x0

    .line 20366
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 20367
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    return-void
.end method

.method private clearUninterpretedOption()V
    .locals 1

    .line 20454
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .line 20408
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 20409
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20411
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 20899
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

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

    .line 20353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20354
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-eqz v0, :cond_0

    .line 20355
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20356
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 20357
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    goto :goto_0

    .line 20359
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 20361
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 20541
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 20544
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20517
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20524
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20480
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20487
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20529
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20536
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20504
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20511
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20467
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20474
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20492
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;
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

    .line 20499
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;",
            ">;"
        }
    .end annotation

    .line 20905
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

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

    .line 20460
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->ensureUninterpretedOptionIsMutable()V

    .line 20461
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAllowAlias(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20237
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    .line 20238
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->allowAlias_:Z

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

    .line 20271
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    .line 20272
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->deprecated_:Z

    return-void
.end method

.method private setDeprecatedLegacyJsonFieldConflicts(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20311
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    .line 20312
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->deprecatedLegacyJsonFieldConflicts_:Z

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

    .line 20344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20345
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 20346
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

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

    .line 20420
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20421
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->ensureUninterpretedOptionIsMutable()V

    .line 20422
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

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

    .line 20834
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20883
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 20879
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->memoizedIsInitialized:B

    return-object v1

    .line 20876
    :pswitch_1
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20861
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2

    .line 20863
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    monitor-enter p2

    .line 20864
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 20866
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 20869
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 20871
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

    .line 20858
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "allowAlias_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "deprecated_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "deprecatedLegacyJsonFieldConflicts_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "features_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "uninterpretedOption_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 20842
    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0002\u03e7\u0005\u0000\u0001\u0002\u0002\u1007\u0000\u0003\u1007\u0001\u0006\u1007\u0002\u0007\u1409\u0003\u03e7\u041b"

    .line 20854
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20839
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 20836
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;-><init>()V

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

.method public getAllowAlias()Z
    .locals 1

    .line 20230
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->allowAlias_:Z

    return v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 20264
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->deprecated_:Z

    return v0
.end method

.method public getDeprecatedLegacyJsonFieldConflicts()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20302
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->deprecatedLegacyJsonFieldConflicts_:Z

    return v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 20338
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

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

    .line 20398
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 20391
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

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

    .line 20377
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

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

    .line 20405
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

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

    .line 20384
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasAllowAlias()Z
    .locals 2

    .line 20222
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 20256
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeprecatedLegacyJsonFieldConflicts()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20292
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFeatures()Z
    .locals 1

    .line 20331
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
