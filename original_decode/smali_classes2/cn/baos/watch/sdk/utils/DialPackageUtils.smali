.class public Lcn/baos/watch/sdk/utils/DialPackageUtils;
.super Ljava/lang/Object;
.source "DialPackageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static change(C)I
    .locals 0

    return p0
.end method

.method public static packageHeader()[B
    .locals 7

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/16 v2, 0x57

    .line 15
    invoke-static {v2}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x41

    .line 16
    invoke-static {v2}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/16 v2, 0x4c

    .line 17
    invoke-static {v2}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v1, v6

    .line 18
    invoke-static {v2}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v2

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v1, v5

    const/16 v2, 0x64

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    const/4 v2, 0x5

    int-to-byte v5, v3

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    int-to-byte v5, v3

    aput-byte v5, v1, v2

    const/4 v2, 0x7

    int-to-byte v5, v3

    aput-byte v5, v1, v2

    const/16 v2, 0x11

    int-to-byte v5, v2

    const/16 v6, 0x8

    aput-byte v5, v1, v6

    const/16 v5, 0x27

    int-to-byte v5, v5

    const/16 v6, 0x9

    aput-byte v5, v1, v6

    const/16 v5, 0xa

    int-to-byte v6, v3

    aput-byte v6, v1, v5

    const/16 v5, 0xb

    int-to-byte v6, v3

    aput-byte v6, v1, v5

    const/16 v5, 0xc

    aput-byte v3, v1, v5

    const/16 v5, 0xd

    aput-byte v3, v1, v5

    const/16 v5, 0xe

    aput-byte v3, v1, v5

    const/16 v5, 0xf

    aput-byte v3, v1, v5

    const/16 v5, 0x10

    const/16 v6, -0x10

    aput-byte v6, v1, v5

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    aput-byte v0, v1, v2

    const/16 v0, 0x13

    aput-byte v4, v1, v0

    const/16 v0, 0x14

    aput-byte v4, v1, v0

    const/16 v0, 0x15

    aput-byte v3, v1, v0

    const/16 v0, 0x16

    aput-byte v3, v1, v0

    const/16 v0, 0x17

    aput-byte v3, v1, v0

    return-object v1
.end method

.method public static packageLayoutMagic()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x57

    .line 69
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x4c

    .line 70
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x41

    .line 71
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x59

    .line 72
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/DialPackageUtils;->change(C)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method
