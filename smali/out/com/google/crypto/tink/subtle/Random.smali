.class public final Lcom/google/crypto/tink/subtle/Random;
.super Ljava/lang/Object;
.source "Random.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static randBytes(I)[B
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Random;->randBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final randInt()I
    .registers 1

    .line 38
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->randInt()I

    move-result v0

    return v0
.end method

.method public static final randInt(I)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Random;->randInt(I)I

    move-result p0

    return p0
.end method
