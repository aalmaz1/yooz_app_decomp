.class final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MinimalEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;,
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final A:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

.field static final B:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

.field private static final CODE_SHIFT:I = 0x62


# instance fields
.field private memoizedCost:[[I

.field private minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 365
    const-class v0, Lcom/google/zxing/oned/Code128Writer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/oned/Code128Writer$1;)V
    .registers 2

    .line 365
    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z
    .registers 2

    .line 365
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0
.end method

.method private static addPattern(Ljava/util/Collection;I[I[II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;I[I[II)V"
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v0, v0, p1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    if-eqz p4, :cond_10

    .line 465
    aget p4, p3, p0

    add-int/lit8 p4, p4, 0x1

    aput p4, p3, p0

    .line 467
    :cond_10
    aget p4, p2, p0

    aget p3, p3, p0

    mul-int/2addr p1, p3

    add-int/2addr p4, p1

    aput p4, p2, p0

    return-void
.end method

.method private canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .registers 12

    .line 475
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 476
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/16 v1, 0xf4

    const/16 v2, 0xf3

    const/16 v3, 0xf2

    const/16 v4, 0xf1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_4c

    const/4 v7, 0x2

    if-eq p2, v7, :cond_3a

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1f

    return v5

    :cond_1f
    if-eq v0, v4, :cond_38

    add-int/2addr p3, v6

    .line 488
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge p3, p2, :cond_39

    .line 489
    invoke-static {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->isDigit(C)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 490
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_38
    move v5, v6

    :cond_39
    return v5

    :cond_3a
    if-eq v0, v4, :cond_4a

    if-eq v0, v3, :cond_4a

    if-eq v0, v2, :cond_4a

    if-eq v0, v1, :cond_4a

    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_4b

    :cond_4a
    move v5, v6

    :cond_4b
    return v5

    :cond_4c
    if-eq v0, v4, :cond_5c

    if-eq v0, v3, :cond_5c

    if-eq v0, v2, :cond_5c

    if-eq v0, v1, :cond_5c

    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_5d

    :cond_5c
    move v5, v6

    :cond_5d
    return v5
.end method

.method private encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .registers 16

    .line 500
    iget-object v0, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aget v0, v0, p3

    if-lez v0, :cond_d

    return v0

    .line 506
    :cond_d
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    add-int/lit8 v1, p3, 0x1

    .line 507
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1b

    move v2, v4

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    const/4 v5, 0x2

    new-array v6, v5, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 509
    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v3

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v4

    const v7, 0x7fffffff

    move v8, v7

    :goto_2b
    if-gt v3, v4, :cond_6c

    .line 511
    aget-object v9, v6, v3

    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 513
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 514
    aget-object v10, v6, v3

    if-eq p2, v10, :cond_45

    .line 516
    invoke-virtual {v10}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v9

    move v10, v5

    goto :goto_46

    :cond_45
    move v10, v4

    :goto_46
    if-nez v2, :cond_4f

    .line 519
    aget-object v11, v6, v3

    invoke-direct {p0, p1, v11, v1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v11

    add-int/2addr v10, v11

    :cond_4f
    if-ge v10, v8, :cond_53

    move-object v0, v9

    move v8, v10

    :cond_53
    add-int/lit8 v9, v3, 0x1

    .line 526
    rem-int/2addr v9, v5

    aget-object v9, v6, v9

    if-ne p2, v9, :cond_69

    .line 528
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-nez v2, :cond_64

    .line 530
    invoke-direct {p0, p1, p2, v1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v10

    add-int/2addr v10, v5

    goto :goto_65

    :cond_64
    move v10, v5

    :goto_65
    if-ge v10, v8, :cond_69

    move-object v0, v9

    move v8, v10

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 539
    :cond_6c
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v1, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 541
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 542
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-eq p2, v2, :cond_7e

    .line 544
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move v2, v5

    goto :goto_7f

    :cond_7e
    move v2, v4

    .line 546
    :goto_7f
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0xf1

    if-ne v3, v6, :cond_88

    goto :goto_89

    :cond_88
    move v4, v5

    :goto_89
    add-int/2addr v4, p3

    .line 547
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v4, v3, :cond_97

    .line 548
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v3, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_97
    if-ge v2, v8, :cond_9b

    move-object v0, v1

    move v8, v2

    :cond_9b
    if-eq v8, v7, :cond_b2

    .line 558
    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    aput v8, p1, p3

    .line 559
    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {p2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    aput-object v0, p1, p3

    return v8

    .line 556
    :cond_b2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad character in input: ASCII value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private encode(Ljava/lang/String;)[Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 383
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    const/4 v6, 0x4

    aput v6, v4, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    .line 384
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v7, v3, [I

    aput v4, v7, v5

    aput v6, v7, v2

    const-class v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 386
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v7, v5, [I

    aput v2, v7, v2

    new-array v8, v5, [I

    aput v5, v8, v2

    .line 391
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 392
    sget-object v10, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    move v11, v2

    :goto_49
    if-ge v11, v9, :cond_fd

    .line 394
    iget-object v12, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v10}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v13

    aget-object v12, v12, v13

    aget-object v12, v12, v11

    .line 395
    sget-object v13, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    invoke-virtual {v12}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x64

    const/16 v15, 0x65

    if-eq v13, v5, :cond_8a

    if-eq v13, v3, :cond_7e

    const/4 v3, 0x3

    if-eq v13, v3, :cond_71

    if-eq v13, v6, :cond_6b

    goto :goto_96

    :cond_6b
    const/16 v3, 0x62

    .line 409
    invoke-static {v4, v3, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_96

    .line 405
    :cond_71
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_78

    const/16 v10, 0x69

    goto :goto_7a

    :cond_78
    const/16 v10, 0x63

    .line 406
    :goto_7a
    invoke-static {v4, v10, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_95

    .line 401
    :cond_7e
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_85

    const/16 v10, 0x68

    goto :goto_86

    :cond_85
    move v10, v14

    .line 402
    :goto_86
    invoke-static {v4, v10, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_95

    .line 397
    :cond_8a
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_91

    const/16 v10, 0x67

    goto :goto_92

    :cond_91
    move v10, v15

    .line 398
    :goto_92
    invoke-static {v4, v10, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :goto_95
    move-object v10, v3

    .line 412
    :goto_96
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const/16 v13, 0x66

    if-ne v10, v3, :cond_bb

    .line 413
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0xf1

    if-ne v3, v12, :cond_a8

    .line 414
    invoke-static {v4, v13, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_f9

    :cond_a8
    add-int/lit8 v3, v11, 0x2

    .line 416
    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    add-int/lit8 v3, v11, 0x1

    if-ge v3, v9, :cond_f9

    move v11, v3

    goto :goto_f9

    .line 424
    :cond_bb
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_110

    .line 443
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v14, v3, -0x20

    goto :goto_e2

    .line 435
    :pswitch_c9
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v10, v3, :cond_d1

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_d9

    :cond_d1
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v10, v3, :cond_e2

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_e2

    :cond_d9
    move v14, v15

    goto :goto_e2

    :pswitch_db
    const/16 v14, 0x60

    goto :goto_e2

    :pswitch_de
    const/16 v14, 0x61

    goto :goto_e2

    :pswitch_e1
    move v14, v13

    .line 445
    :cond_e2
    :goto_e2
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v10, v3, :cond_ea

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_f2

    :cond_ea
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v10, v3, :cond_f6

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_f6

    :cond_f2
    if-gez v14, :cond_f6

    add-int/lit8 v14, v14, 0x60

    .line 450
    :cond_f6
    invoke-static {v4, v14, v7, v8, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :cond_f9
    :goto_f9
    add-int/2addr v11, v5

    const/4 v3, 0x2

    goto/16 :goto_49

    :cond_fd
    const/4 v1, 0x0

    .line 453
    move-object v3, v1

    check-cast v3, [[I

    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    .line 454
    move-object v3, v1

    check-cast v3, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    aget v1, v7, v2

    .line 455
    invoke-static {v4, v1}, Lcom/google/zxing/oned/Code128Writer;->produceResult(Ljava/util/Collection;I)[Z

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_110
    .packed-switch 0xf1
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_c9
    .end packed-switch
.end method

.method private static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
