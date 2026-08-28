.class synthetic Lcom/google/crypto/tink/internal/MonitoringUtil$1;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MonitoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyStatusType;->values()[Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    :try_start_9
    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
