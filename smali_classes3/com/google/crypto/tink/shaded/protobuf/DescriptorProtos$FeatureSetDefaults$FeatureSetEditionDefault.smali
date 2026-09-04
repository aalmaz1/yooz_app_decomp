.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefaultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSetEditionDefault"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefaultOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

.field public static final EDITION_FIELD_NUMBER:I = 0x3

.field public static final FIXED_FEATURES_FIELD_NUMBER:I = 0x5

.field public static final OVERRIDABLE_FEATURES_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private edition_:I

.field private fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

.field private memoizedIsInitialized:B

.field private overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26218
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;-><init>()V

    .line 26221
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    .line 26222
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25799
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 26158
    iput-byte v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$53500()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
    .locals 1

    .line 25794
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object v0
.end method

.method static synthetic access$53600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)V
    .locals 0

    .line 25794
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->setEdition(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)V

    return-void
.end method

.method static synthetic access$53700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V
    .locals 0

    .line 25794
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->clearEdition()V

    return-void
.end method

.method static synthetic access$53800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 25794
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->setOverridableFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$53900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 25794
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->mergeOverridableFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$54000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V
    .locals 0

    .line 25794
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->clearOverridableFeatures()V

    return-void
.end method

.method static synthetic access$54100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 25794
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->setFixedFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$54200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0

    .line 25794
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->mergeFixedFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-void
.end method

.method static synthetic access$54300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V
    .locals 0

    .line 25794
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->clearFixedFeatures()V

    return-void
.end method

.method private clearEdition()V
    .locals 1

    .line 25833
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    const/4 v0, 0x0

    .line 25834
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->edition_:I

    return-void
.end method

.method private clearFixedFeatures()V
    .locals 1

    const/4 v0, 0x0

    .line 25925
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25926
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    return-void
.end method

.method private clearOverridableFeatures()V
    .locals 1

    const/4 v0, 0x0

    .line 25879
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25880
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
    .locals 1

    .line 26227
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object v0
.end method

.method private mergeFixedFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25912
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25913
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-eqz v0, :cond_0

    .line 25914
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 25915
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25916
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    goto :goto_0

    .line 25918
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25920
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    return-void
.end method

.method private mergeOverridableFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25867
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-eqz v0, :cond_0

    .line 25868
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 25869
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25870
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    goto :goto_0

    .line 25872
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25874
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;
    .locals 1

    .line 26006
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 26009
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25982
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25989
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25945
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25952
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25994
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 26001
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25969
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25976
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25932
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25939
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25957
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
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

    .line 25964
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;",
            ">;"
        }
    .end annotation

    .line 26233
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEdition(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25826
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->edition_:I

    .line 25827
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    return-void
.end method

.method private setFixedFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25904
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25905
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    return-void
.end method

.method private setOverridableFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25858
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    .line 25859
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

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

    .line 26164
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26211
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    .line 26207
    iput-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->memoizedIsInitialized:B

    return-object v1

    .line 26204
    :pswitch_1
    iget-byte p1, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 26189
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2

    .line 26191
    const-class p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    monitor-enter p2

    .line 26192
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 26194
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 26197
    sput-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 26199
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

    .line 26186
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "edition_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 26175
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;->internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "overridableFeatures_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "fixedFeatures_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0003\u0005\u0003\u0000\u0000\u0002\u0003\u180c\u0000\u0004\u1409\u0001\u0005\u1409\u0002"

    .line 26182
    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26169
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 26166
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;-><init>()V

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

.method public getEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;
    .locals 1

    .line 25818
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->edition_:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25819
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;

    :cond_0
    return-object v0
.end method

.method public getFixedFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 25897
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->fixedFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOverridableFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 25851
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->overridableFeatures_:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasEdition()Z
    .locals 2

    .line 25810
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFixedFeatures()Z
    .locals 1

    .line 25890
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverridableFeatures()Z
    .locals 1

    .line 25844
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
