.class final Lcom/google/crypto/tink/aead/internal/ChaCha20Util;
.super Ljava/lang/Object;
.source "ChaCha20Util.java"


# static fields
.field static final BLOCK_SIZE_IN_BYTES:I = 0x40

.field static final BLOCK_SIZE_IN_INTS:I = 0x10

.field static final KEY_SIZE_IN_BYTES:I = 0x20

.field static final KEY_SIZE_IN_INTS:I = 0x8

.field private static final SIGMA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 34
    fill-array-data v0, :array_0

    .line 35
    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->toIntArray([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->SIGMA:[I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hChaCha20([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "nonce"
        }
    .end annotation

    .line 116
    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->toIntArray([B)[I

    move-result-object p0

    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->toIntArray([B)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->hChaCha20([I[I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->toByteArray([I)[B

    move-result-object p0

    return-object p0
.end method

.method static hChaCha20([I[I)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "nonce"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 101
    invoke-static {v0, p0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->setSigmaAndKey([I[I)V

    const/4 p0, 0x0

    .line 102
    aget p0, p1, p0

    const/16 v1, 0xc

    aput p0, v0, v1

    const/4 p0, 0x1

    .line 103
    aget p0, p1, p0

    const/16 v2, 0xd

    aput p0, v0, v2

    const/4 p0, 0x2

    .line 104
    aget p0, p1, p0

    const/16 v3, 0xe

    aput p0, v0, v3

    const/4 p0, 0x3

    .line 105
    aget p0, p1, p0

    const/16 p1, 0xf

    aput p0, v0, p1

    .line 106
    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->shuffleState([I)V

    const/4 p0, 0x4

    aget v1, v0, v1

    aput v1, v0, p0

    const/4 p0, 0x5

    aget v1, v0, v2

    aput v1, v0, p0

    const/4 p0, 0x6

    aget v1, v0, v3

    aput v1, v0, p0

    const/4 p0, 0x7

    aget p1, v0, p1

    aput p1, v0, p0

    const/16 p0, 0x8

    .line 112
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method static quarterRound([IIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 71
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 72
    aget v1, p0, p4

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    .line 73
    aget v1, p0, p3

    add-int/2addr v1, v0

    aput v1, p0, p3

    .line 74
    aget v0, p0, p2

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    .line 75
    aget v1, p0, p1

    add-int/2addr v1, v0

    aput v1, p0, p1

    .line 76
    aget p1, p0, p4

    xor-int/2addr p1, v1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result p1

    aput p1, p0, p4

    .line 77
    aget p4, p0, p3

    add-int/2addr p4, p1

    aput p4, p0, p3

    .line 78
    aget p1, p0, p2

    xor-int/2addr p1, p4

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method private static rotateLeft(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method static setSigmaAndKey([I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "state",
            "key"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->SIGMA:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static shuffleState([I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    .line 55
    invoke-static {v0, v1, v4, v5, v6}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    .line 56
    invoke-static {v0, v7, v8, v9, v10}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    .line 57
    invoke-static {v0, v11, v12, v3, v13}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    .line 58
    invoke-static {v0, v14, v15, v4, v9}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 59
    invoke-static {v0, v1, v8, v3, v9}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 60
    invoke-static {v0, v7, v12, v4, v6}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 61
    invoke-static {v0, v11, v15, v5, v10}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    const/16 v3, 0x9

    const/4 v4, 0x4

    .line 62
    invoke-static {v0, v14, v4, v3, v13}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static toByteArray([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 93
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method static toIntArray([B)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 83
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    .line 88
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid input length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
