.class public final Lcom/google/crypto/tink/internal/OutputPrefixUtil;
.super Ljava/lang/Object;
.source "OutputPrefixUtil.java"


# static fields
.field public static final EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

.field public static final LEGACY_START_BYTE:B = 0x0t

.field public static final NON_EMPTY_PREFIX_SIZE:I = 0x5

.field public static final TINK_START_BYTE:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 32
    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    const/4 v0, 0x5

    .line 36
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0
.end method

.method public static final getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    const/4 v0, 0x5

    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0
.end method
