.class synthetic Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$2;
.super Ljava/lang/Object;
.source "JwtEcdsaVerifyKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$JwtEcdsaAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 114
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->values()[Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$2;->$SwitchMap$com$google$crypto$tink$proto$JwtEcdsaAlgorithm:[I

    :try_start_9
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES256:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$2;->$SwitchMap$com$google$crypto$tink$proto$JwtEcdsaAlgorithm:[I

    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES384:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager$2;->$SwitchMap$com$google$crypto$tink$proto$JwtEcdsaAlgorithm:[I

    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES512:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
