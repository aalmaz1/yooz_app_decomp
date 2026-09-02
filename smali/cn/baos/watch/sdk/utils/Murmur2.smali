.class public Lcn/baos/watch/sdk/utils/Murmur2;
.super Ljava/lang/Object;
.source "Murmur2.java"


# static fields
.field private static final DEFAULT_SEED:I = 0x0

.field private static final M_32:I = 0x5bd1e995

.field private static final M_64:J = -0x395b586ca42e166bL

.field private static final R_32:I = 0x18

.field private static final R_64:I = 0x2f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash32([B)I
    .registers 3

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/utils/Murmur2;->hash32([BII)I

    move-result p0

    return p0
.end method

.method public static hash32([BII)I
    .registers 10

    xor-int/2addr p2, p1

    shr-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x3

    const v3, 0x5bd1e995

    if-ge v1, v0, :cond_34

    shl-int/lit8 v4, v1, 0x2

    .line 58
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/2addr v4, v2

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v5

    mul-int/2addr v2, v3

    ushr-int/lit8 v4, v2, 0x18

    xor-int/2addr v2, v4

    mul-int/2addr v2, v3

    mul-int/2addr p2, v3

    xor-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_34
    const/4 v1, 0x2

    shl-int/2addr v0, v1

    sub-int v0, p1, v0

    if-eqz v0, :cond_54

    if-lt v0, v2, :cond_43

    add-int/lit8 v2, p1, -0x3

    .line 76
    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr p2, v2

    :cond_43
    if-lt v0, v1, :cond_4c

    add-int/lit8 v1, p1, -0x2

    .line 79
    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr p2, v1

    :cond_4c
    const/4 v1, 0x1

    if-lt v0, v1, :cond_53

    sub-int/2addr p1, v1

    .line 82
    aget-byte p0, p0, p1

    xor-int/2addr p2, p0

    :cond_53
    mul-int/2addr p2, v3

    :cond_54
    ushr-int/lit8 p0, p2, 0xd

    xor-int/2addr p0, p2

    mul-int/2addr p0, v3

    ushr-int/lit8 p1, p0, 0xf

    xor-int/2addr p0, p1

    return p0
.end method

.method public static hash64([B)J
    .registers 3

    .line 103
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/baos/watch/sdk/utils/Murmur2;->hash64([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BII)J
    .registers 21

    move/from16 v0, p1

    move/from16 v1, p2

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v3, v5

    xor-long/2addr v1, v3

    shr-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    :goto_16
    const/16 v9, 0x20

    const/16 v10, 0x18

    const/16 v11, 0x10

    const/16 v12, 0x8

    const/16 v13, 0x2f

    if-ge v4, v3, :cond_84

    shl-int/lit8 v14, v4, 0x3

    .line 121
    aget-byte v15, p0, v14

    int-to-long v5, v15

    const-wide/16 v16, 0xff

    and-long v5, v5, v16

    add-int/lit8 v15, v14, 0x1

    aget-byte v15, p0, v15

    int-to-long v7, v15

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    or-long/2addr v5, v7

    add-int/lit8 v7, v14, 0x2

    aget-byte v7, p0, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    or-long/2addr v5, v7

    add-int/lit8 v7, v14, 0x3

    aget-byte v7, p0, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v10

    or-long/2addr v5, v7

    add-int/lit8 v7, v14, 0x4

    aget-byte v7, p0, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    add-int/lit8 v7, v14, 0x5

    aget-byte v7, p0, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    add-int/lit8 v7, v14, 0x6

    aget-byte v7, p0, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    add-int/lit8 v14, v14, 0x7

    aget-byte v7, p0, v14

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    or-long/2addr v5, v7

    const-wide v7, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v5, v7

    ushr-long v9, v5, v13

    xor-long/2addr v5, v9

    mul-long/2addr v5, v7

    xor-long/2addr v1, v5

    mul-long/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    const-wide v5, -0x395b586ca42e166bL    # -2.0946245025644615E32

    goto :goto_16

    :cond_84
    shl-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    packed-switch v0, :pswitch_data_e2

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    goto :goto_d8

    :pswitch_90
    add-int/lit8 v0, v3, 0x6

    .line 142
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    xor-long/2addr v1, v4

    :pswitch_9b
    add-int/lit8 v0, v3, 0x5

    .line 144
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    xor-long/2addr v1, v4

    :pswitch_a6
    add-int/lit8 v0, v3, 0x4

    .line 146
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    shl-long/2addr v4, v9

    xor-long/2addr v1, v4

    :pswitch_af
    add-int/lit8 v0, v3, 0x3

    .line 148
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    shl-long/2addr v4, v10

    xor-long/2addr v1, v4

    :pswitch_b8
    add-int/lit8 v0, v3, 0x2

    .line 150
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    shl-long/2addr v4, v11

    xor-long/2addr v1, v4

    :pswitch_c1
    add-int/lit8 v0, v3, 0x1

    .line 152
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    shl-long/2addr v4, v12

    xor-long/2addr v1, v4

    .line 154
    :pswitch_ca
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    xor-long v0, v1, v3

    const-wide v3, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long v1, v0, v3

    :goto_d8
    ushr-long v5, v1, v13

    xor-long v0, v1, v5

    mul-long/2addr v0, v3

    ushr-long v2, v0, v13

    xor-long/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_af
        :pswitch_a6
        :pswitch_9b
        :pswitch_90
    .end packed-switch
.end method
