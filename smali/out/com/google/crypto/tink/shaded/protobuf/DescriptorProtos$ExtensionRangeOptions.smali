.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRangeOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$DeclarationOrBuilder;,
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final DECLARATION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

.field public static final FEATURES_FIELD_NUMBER:I = 0x32

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field public static final VERIFICATION_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;",
            ">;"
        }
    .end annotation
.end field

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

.field private verification_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 7340
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    .line 7343
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 7344
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 5839
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    .line 7277
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedIsInitialized:B

    .line 5840
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 5841
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    const/4 v0, 0x1

    .line 5842
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->verification_:I

    return-void
.end method

.method static synthetic access$14800()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
    .registers 1

    .line 5834
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .registers 3

    .line 5834
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .registers 3

    .line 5834
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Ljava/lang/Iterable;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->addAllUninterpretedOption(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V
    .registers 1

    .line 5834
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->clearUninterpretedOption()V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;I)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->removeUninterpretedOption(I)V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V
    .registers 3

    .line 5834
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->setDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->addDeclaration(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V
    .registers 3

    .line 5834
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->addDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Ljava/lang/Iterable;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->addAllDeclaration(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V
    .registers 1

    .line 5834
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->clearDeclaration()V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;I)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->removeDeclaration(I)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V
    .registers 1

    .line 5834
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->clearFeatures()V

    return-void
.end method

.method static synthetic access$16400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;)V
    .registers 2

    .line 5834
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->setVerification(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V
    .registers 1

    .line 5834
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->clearVerification()V

    return-void
.end method

.method private addAllDeclaration(Ljava/lang/Iterable;)V
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
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;",
            ">;)V"
        }
    .end annotation

    .line 6792
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureDeclarationIsMutable()V

    .line 6793
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllUninterpretedOption(Ljava/lang/Iterable;)V
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
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)V"
        }
    .end annotation

    .line 6698
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureUninterpretedOptionIsMutable()V

    .line 6699
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V
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

    .line 6783
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6784
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureDeclarationIsMutable()V

    .line 6785
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDeclaration(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6775
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureDeclarationIsMutable()V

    .line 6776
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
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

    .line 6689
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6690
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureUninterpretedOptionIsMutable()V

    .line 6691
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6681
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureUninterpretedOptionIsMutable()V

    .line 6682
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDeclaration()V
    .registers 2

    .line 6800
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFeatures()V
    .registers 2

    const/4 v0, 0x0

    .line 6852
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 6853
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    return-void
.end method

.method private clearUninterpretedOption()V
    .registers 2

    .line 6706
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVerification()V
    .registers 2

    .line 6887
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    const/4 v0, 0x1

    .line 6888
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->verification_:I

    return-void
.end method

.method private ensureDeclarationIsMutable()V
    .registers 3

    .line 6754
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 6755
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 6757
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .registers 3

    .line 6660
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 6661
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 6663
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
    .registers 1

    .line 7349
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object v0
.end method

.method private mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6839
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6840
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-eqz v0, :cond_22

    .line 6841
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 6842
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 6843
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    goto :goto_24

    .line 6845
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 6847
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .registers 1

    .line 6968
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6971
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6944
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6951
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6907
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6914
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6956
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6963
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6931
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6938
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6894
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6901
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6919
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
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

    .line 6926
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;",
            ">;"
        }
    .end annotation

    .line 7355
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDeclaration(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6806
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureDeclarationIsMutable()V

    .line 6807
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeUninterpretedOption(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6712
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureUninterpretedOptionIsMutable()V

    .line 6713
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V
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

    .line 6766
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6767
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureDeclarationIsMutable()V

    .line 6768
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6830
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6831
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 6832
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    return-void
.end method

.method private setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V
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

    .line 6672
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6673
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->ensureUninterpretedOptionIsMutable()V

    .line 6674
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setVerification(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6880
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->verification_:I

    .line 6881
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

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

    .line 7283
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_80

    .line 7333
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_14
    if-nez p2, :cond_17

    move p3, v0

    :cond_17
    int-to-byte p1, p3

    .line 7329
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedIsInitialized:B

    return-object v1

    .line 7326
    :pswitch_1b
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7311
    :pswitch_22
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_3b

    .line 7313
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    monitor-enter p2

    .line 7314
    :try_start_29
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_36

    .line 7316
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 7319
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 7321
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

    .line 7308
    :pswitch_3c
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object p1

    :pswitch_3f
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "declaration_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 7291
    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "verification_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 7296
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "features_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "uninterpretedOption_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0002\u03e7\u0004\u0000\u0002\u0002\u0002\u001b\u0003\u180c\u00012\u1409\u0000\u03e7\u041b"

    .line 7304
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7288
    :pswitch_74
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 7285
    :pswitch_7a
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    return-object p1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_74
        :pswitch_3f
        :pswitch_3c
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public getDeclaration(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6744
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;

    return-object p1
.end method

.method public getDeclarationCount()I
    .registers 2

    .line 6737
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDeclarationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;",
            ">;"
        }
    .end annotation

    .line 6723
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDeclarationOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$DeclarationOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6751
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$DeclarationOrBuilder;

    return-object p1
.end method

.method public getDeclarationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$DeclarationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6730
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->declaration_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .registers 2

    .line 6824
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->features_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6650
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .registers 2

    .line 6643
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 6629
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6657
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6636
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->uninterpretedOption_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVerification()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    .registers 2

    .line 6872
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->verification_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6873
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;->UNVERIFIED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    :cond_a
    return-object v0
.end method

.method public hasFeatures()Z
    .registers 3

    .line 6817
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasVerification()Z
    .registers 2

    .line 6864
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
