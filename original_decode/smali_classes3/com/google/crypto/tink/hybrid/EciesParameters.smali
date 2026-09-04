.class public final Lcom/google/crypto/tink/hybrid/EciesParameters;
.super Lcom/google/crypto/tink/hybrid/HybridParameters;
.source "EciesParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;,
        Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;
    }
.end annotation


# static fields
.field private static final acceptedDemParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/crypto/tink/Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field private final demParameters:Lcom/google/crypto/tink/Parameters;

.field private final hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

.field private final nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final salt:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesParameters$$ExternalSyntheticLambda0;-><init>()V

    .line 102
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters;->acceptedDemParameters:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;)V
    .locals 0
    .param p3    # Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curveType",
            "hashType",
            "pointFormat",
            "demParameters",
            "variant",
            "salt"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HybridParameters;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 298
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 299
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 300
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    .line 301
    iput-object p5, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 302
    iput-object p6, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/hybrid/EciesParameters;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 51
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters;->acceptedDemParameters:Ljava/util/Set;

    return-object v0
.end method

.method public static builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .locals 2

    .line 306
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->listAcceptedDemParameters()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static listAcceptedDemParameters()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/crypto/tink/Parameters;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v3, 0x10

    .line 58
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 60
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0x20

    .line 66
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 68
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 77
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 78
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivParameters;->builder()Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v1

    const/16 v2, 0x40

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    .line 96
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->setVariant(Lcom/google/crypto/tink/daead/AesSivParameters$Variant;)Lcom/google/crypto/tink/daead/AesSivParameters$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/crypto/tink/daead/AesSivParameters$Builder;->build()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 349
    instance-of v0, p1, Lcom/google/crypto/tink/hybrid/EciesParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 352
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/hybrid/EciesParameters;

    .line 353
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getNistCurvePointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getNistCurvePointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getDemParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getDemParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    return-object v0
.end method

.method public getDemParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    return-object v0
.end method

.method public getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    return-object v0
.end method

.method public getNistCurvePointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    return-object v0
.end method

.method public getSalt()Lcom/google/crypto/tink/util/Bytes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 363
    const-class v2, Lcom/google/crypto/tink/hybrid/EciesParameters;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 375
    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->demParameters:Lcom/google/crypto/tink/Parameters;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/EciesParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    aput-object v2, v0, v1

    const-string v1, "EciesParameters(curveType=%s, hashType=%s, pointFormat=%s, demParameters=%s, variant=%s, salt=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
