.class synthetic Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;
.super Ljava/lang/Object;
.source "KeyStatusTypeProtoConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$tinkkey$KeyHandle$KeyStatusType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 43
    invoke-static {}, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->values()[Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;->$SwitchMap$com$google$crypto$tink$tinkkey$KeyHandle$KeyStatusType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->ENABLED:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    invoke-virtual {v2}, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;->$SwitchMap$com$google$crypto$tink$tinkkey$KeyHandle$KeyStatusType:[I

    sget-object v3, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->DISABLED:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;->$SwitchMap$com$google$crypto$tink$tinkkey$KeyHandle$KeyStatusType:[I

    sget-object v4, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 29
    :catch_28
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyStatusType;->values()[Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    :try_start_31
    sget-object v4, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method
