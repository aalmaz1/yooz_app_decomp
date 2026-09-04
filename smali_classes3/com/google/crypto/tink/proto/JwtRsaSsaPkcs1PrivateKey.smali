.class public final Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "JwtRsaSsaPkcs1PrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;",
        "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKeyOrBuilder;"
    }
.end annotation


# static fields
.field public static final CRT_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

.field public static final DP_FIELD_NUMBER:I = 0x6

.field public static final DQ_FIELD_NUMBER:I = 0x7

.field public static final D_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field public static final P_FIELD_NUMBER:I = 0x4

.field public static final Q_FIELD_NUMBER:I = 0x5

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private crt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private d_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private dp_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private dq_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private p_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

.field private q_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 857
    new-instance v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;-><init>()V

    .line 860
    sput-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    .line 861
    const-class v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->d_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 22
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->p_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 23
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->q_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 24
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dp_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 25
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dq_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 26
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->crt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setQ(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearQ()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setDp(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearDp()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setDq(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearDq()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setCrt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearCrt()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setPublicKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->mergePublicKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearPublicKey()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setD(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearD()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->setP(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->clearP()V

    return-void
.end method

.method private clearCrt()V
    .locals 1

    .line 353
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getCrt()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->crt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearD()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getD()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->d_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearDp()V
    .locals 1

    .line 269
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDp()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dp_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearDq()V
    .locals 1

    .line 311
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDq()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dq_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearP()V
    .locals 1

    .line 185
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getP()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->p_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    .line 98
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    return-void
.end method

.method private clearQ()V
    .locals 1

    .line 227
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getQ()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->q_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
    .locals 1

    .line 866
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object v0
.end method

.method private mergePublicKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    .line 88
    invoke-static {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->newBuilder(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    goto :goto_0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    .line 92
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 433
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 409
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 416
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 372
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 379
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 421
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 428
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 396
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 403
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 359
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 366
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 384
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
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

    .line 391
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;",
            ">;"
        }
    .end annotation

    .line 872
    sget-object v0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCrt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->crt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setD(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->d_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setDp(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dp_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setDq(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dq_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setP(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->p_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setPublicKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    .line 77
    iget p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    return-void
.end method

.method private setQ(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    iput-object p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->q_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 45
    iput p1, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 800
    sget-object p2, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 850
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 844
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 829
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 831
    const-class p2, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    monitor-enter p2

    .line 832
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 834
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 837
    sput-object p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 839
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

    .line 826
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "publicKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "d_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "p_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "q_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "dp_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "dq_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "crt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n\u0004\n\u0005\n\u0006\n\u0007\n\u0008\n"

    .line 822
    sget-object p3, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 805
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;-><init>(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$1;)V

    return-object p1

    .line 802
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;-><init>()V

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

.method public getCrt()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->crt_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getD()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->d_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDp()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dp_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getDq()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->dq_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getP()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->p_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQ()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->q_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->version_:I

    return v0
.end method

.method public hasPublicKey()Z
    .locals 2

    .line 62
    iget v0, p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
