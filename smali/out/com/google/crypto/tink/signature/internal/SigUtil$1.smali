.class synthetic Lcom/google/crypto/tink/signature/internal/SigUtil$1;
.super Ljava/lang/Object;
.source "SigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/SigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$EcdsaSignatureEncoding:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$HashType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->values()[Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$EcdsaSignatureEncoding:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$EcdsaSignatureEncoding:[I

    sget-object v3, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->DER:Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 54
    :catch_1d
    invoke-static {}, Lcom/google/crypto/tink/proto/EllipticCurveType;->values()[Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

    :try_start_26
    sget-object v3, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

    sget-object v3, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P384:Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

    sget-object v4, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P521:Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/EllipticCurveType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    .line 38
    :catch_43
    invoke-static {}, Lcom/google/crypto/tink/proto/HashType;->values()[Lcom/google/crypto/tink/proto/HashType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    :try_start_4c
    sget-object v4, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v1, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    sget-object v3, Lcom/google/crypto/tink/proto/HashType;->SHA384:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v0, Lcom/google/crypto/tink/signature/internal/SigUtil$1;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA512:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_68

    :catch_68
    return-void
.end method
