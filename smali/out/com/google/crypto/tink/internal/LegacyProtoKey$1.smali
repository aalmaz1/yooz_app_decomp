.class synthetic Lcom/google/crypto/tink/internal/LegacyProtoKey$1;
.super Ljava/lang/Object;
.source "LegacyProtoKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/LegacyProtoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$KeyData$KeyMaterialType:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 84
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->values()[Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$KeyData$KeyMaterialType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$KeyData$KeyMaterialType:[I

    sget-object v3, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 50
    :catch_1d
    invoke-static {}, Lcom/google/crypto/tink/proto/OutputPrefixType;->values()[Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    :try_start_26
    sget-object v3, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->CRUNCHY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    return-void
.end method
