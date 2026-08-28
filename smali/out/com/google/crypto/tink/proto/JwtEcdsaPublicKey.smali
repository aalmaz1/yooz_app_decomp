.class public final Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "JwtEcdsaPublicKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/JwtEcdsaPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;,
        Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;,
        Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKidOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALGORITHM_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_KID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field public static final X_FIELD_NUMBER:I = 0x3

.field public static final Y_FIELD_NUMBER:I = 0x4


# instance fields
.field private algorithm_:I

.field private bitField0_:I

.field private customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

.field private version_:I

.field private x_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private y_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 866
    new-instance v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;-><init>()V

    .line 869
    sput-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    .line 870
    const-class v1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->x_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 22
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->y_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->clearAlgorithm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->setX(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->clearX()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->setY(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->clearY()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->setCustomKid(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->mergeCustomKid(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->clearCustomKid()V

    return-void
.end method

.method static synthetic access$500()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
    .registers 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;I)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;I)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->setAlgorithmValue(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)V

    return-void
.end method

.method private clearAlgorithm()V
    .registers 2

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->algorithm_:I

    return-void
.end method

.method private clearCustomKid()V
    .registers 2

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    .line 509
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .registers 2

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->version_:I

    return-void
.end method

.method private clearX()V
    .registers 2

    .line 436
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getX()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->x_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearY()V
    .registers 2

    .line 463
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getY()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->y_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
    .registers 1

    .line 875
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object v0
.end method

.method private mergeCustomKid(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    if-eqz v0, :cond_22

    .line 497
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 498
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    .line 499
    invoke-static {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->newBuilder(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    goto :goto_24

    .line 501
    :cond_22
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    .line 503
    :goto_24
    iget p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;
    .registers 1

    .line 589
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 592
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 565
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 572
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 528
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 535
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 577
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 584
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 552
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 559
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 515
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 522
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 540
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
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

    .line 547
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;",
            ">;"
        }
    .end annotation

    .line 881
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlgorithm(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->algorithm_:I

    return-void
.end method

.method private setAlgorithmValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 379
    iput p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->algorithm_:I

    return-void
.end method

.method private setCustomKid(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    .line 488
    iget p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    return-void
.end method

.method private setVersion(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 345
    iput p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->version_:I

    return-void
.end method

.method private setX(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->x_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setY(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->y_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

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

    .line 812
    sget-object p2, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_6c

    .line 859
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 853
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 838
    :pswitch_19
    sget-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_32

    .line 840
    const-class p2, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    monitor-enter p2

    .line 841
    :try_start_20
    sget-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 843
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 846
    sput-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 848
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

    .line 835
    :pswitch_33
    sget-object p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    return-object p1

    :pswitch_36
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "algorithm_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "x_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "y_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "customKid_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000b\u0002\u000c\u0003\n\u0004\n\u0005\u1009\u0000"

    .line 831
    sget-object p3, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 817
    :pswitch_5f
    new-instance p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;-><init>(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$1;)V

    return-object p1

    .line 814
    :pswitch_65
    new-instance p1, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5f
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getAlgorithm()Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    .registers 2

    .line 371
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->algorithm_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->forNumber(I)Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    move-result-object v0

    if-nez v0, :cond_a

    .line 372
    sget-object v0, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    :cond_a
    return-object v0
.end method

.method public getAlgorithmValue()I
    .registers 2

    .line 363
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->algorithm_:I

    return v0
.end method

.method public getCustomKid()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->customKid_:Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$CustomKid;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->version_:I

    return v0
.end method

.method public getX()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->x_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->y_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public hasCustomKid()Z
    .registers 3

    .line 473
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
