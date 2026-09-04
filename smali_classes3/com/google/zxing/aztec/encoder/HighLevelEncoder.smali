.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "MIXED"

    const-string v1, "PUNCT"

    const-string v2, "UPPER"

    const-string v3, "LOWER"

    const-string v4, "DIGIT"

    .line 46
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [[I

    new-array v2, v0, [I

    .line 59
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    new-array v0, v5, [I

    .line 100
    fill-array-data v0, :array_5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 102
    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v0, 0x41

    :goto_0
    const/16 v7, 0x5a

    if-gt v0, v7, :cond_0

    .line 104
    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v7, v7, v3

    add-int/lit8 v8, v0, -0x41

    add-int/2addr v8, v5

    aput v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v4

    aput v4, v0, v1

    const/16 v0, 0x61

    :goto_1
    const/16 v7, 0x7a

    if-gt v0, v7, :cond_1

    .line 108
    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v7, v7, v4

    add-int/lit8 v8, v0, -0x61

    add-int/2addr v8, v5

    aput v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    aput v4, v0, v1

    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 112
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v5

    add-int/lit8 v7, v0, -0x30

    add-int/2addr v7, v5

    aput v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2c

    const/16 v7, 0xc

    aput v7, v0, v1

    const/16 v1, 0x2e

    const/16 v7, 0xd

    .line 115
    aput v7, v0, v1

    const/16 v0, 0x1c

    new-array v1, v0, [I

    .line 116
    fill-array-data v1, :array_6

    move v7, v3

    :goto_3
    if-ge v7, v0, :cond_3

    .line 122
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v6

    aget v9, v1, v7

    aput v7, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, 0x1f

    new-array v7, v1, [I

    .line 124
    fill-array-data v7, :array_7

    move v8, v3

    :goto_4
    if-ge v8, v1, :cond_5

    .line 130
    aget v9, v7, v8

    if-lez v9, :cond_4

    .line 131
    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v10, v10, v2

    aput v8, v10, v9

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    new-array v1, v5, [I

    .line 138
    fill-array-data v1, :array_8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 140
    array-length v7, v1

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_6

    aget-object v9, v1, v8

    const/4 v10, -0x1

    .line 141
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 143
    :cond_6
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v7, v1, v3

    aput v3, v7, v2

    .line 145
    aget-object v4, v1, v4

    aput v3, v4, v2

    .line 146
    aput v0, v4, v3

    .line 148
    aget-object v0, v1, v6

    aput v3, v0, v2

    .line 150
    aget-object v0, v1, v5

    aput v3, v0, v2

    const/16 v1, 0xf

    .line 151
    aput v1, v0, v3

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_1
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_2
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_3
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_4
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x100
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 164
    iput-object p2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 306
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 308
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 310
    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 314
    :cond_2
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    .line 319
    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 236
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_5

    .line 239
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    if-lez v4, :cond_4

    if-nez v3, :cond_1

    .line 243
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    :cond_1
    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v5

    if-eq v2, v5, :cond_2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 251
    :cond_2
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 252
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    .line 255
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_4

    .line 258
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 259
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v1

    if-gtz v1, :cond_6

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v0, v1, v0

    if-nez v0, :cond_7

    .line 267
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p1

    .line 268
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    const/4 v1, 0x4

    .line 283
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 287
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    .line 292
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p2

    .line 293
    invoke-virtual {p2, v1, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p2

    .line 294
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result p2

    if-lez p2, :cond_3

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    .line 300
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 225
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 226
    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 274
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 275
    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 8

    .line 171
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    .line 172
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    .line 173
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/State;->appendFLGn(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ECI code for character set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v4, v3

    if-ge v2, v4, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 182
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-byte v5, v3, v4

    goto :goto_2

    :cond_2
    move v5, v1

    .line 183
    :goto_2
    aget-byte v3, v3, v2

    const/16 v6, 0xd

    if-eq v3, v6, :cond_7

    const/16 v6, 0x2c

    const/16 v7, 0x20

    if-eq v3, v6, :cond_6

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_5

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_4

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    if-ne v5, v7, :cond_3

    const/4 v3, 0x5

    goto :goto_3

    :cond_5
    if-ne v5, v7, :cond_3

    const/4 v3, 0x3

    goto :goto_3

    :cond_6
    if-ne v5, v7, :cond_3

    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    const/16 v3, 0xa

    if-ne v5, v3, :cond_3

    const/4 v3, 0x2

    :goto_3
    if-lez v3, :cond_8

    .line 202
    invoke-static {v0, v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v0

    move v2, v4

    goto :goto_4

    .line 206
    :cond_8
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_9
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    .line 217
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method
