.class public final Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
.super Lcom/google/crypto/tink/signature/SignaturePublicKey;
.source "RsaSsaPssPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final modulus:Ljava/math/BigInteger;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .registers 5
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "modulus",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePublicKey;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 123
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->modulus:Ljava/math/BigInteger;

    .line 124
    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 125
    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;)V
    .registers 6

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    .registers 2

    .line 134
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 165
    instance-of v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 168
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    .line 170
    iget-object v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->modulus:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->modulus:Ljava/math/BigInteger;

    .line 171
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p1, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->idRequirement:Ljava/lang/Integer;

    .line 172
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method
