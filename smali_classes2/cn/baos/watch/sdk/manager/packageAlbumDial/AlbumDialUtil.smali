.class public Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;
.super Ljava/lang/Object;
.source "AlbumDialUtil.java"


# static fields
.field private static final digits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->digits:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8

    .line 188
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 190
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 191
    sget-object v6, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->digits:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 192
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static charToByte(C)B
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 162
    aget-char v3, p0, v3

    invoke-static {v3}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->toByte(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v4, 0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->toByte(C)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static intToBytes2(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static packageHeader(Landroid/content/Context;III)[B
    .locals 5

    const/16 p0, 0x18

    new-array p0, p0, [B

    const/16 v0, 0x57

    .line 33
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    const/16 v0, 0x41

    .line 34
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v0

    const/4 v2, 0x1

    aput-byte v0, p0, v2

    const/16 v0, 0x4c

    .line 35
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v3

    const/4 v4, 0x2

    aput-byte v3, p0, v4

    const/4 v3, 0x3

    .line 36
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v0

    aput-byte v0, p0, v3

    const/16 v0, 0x64

    int-to-byte v0, v0

    const/4 v3, 0x4

    aput-byte v0, p0, v3

    const/4 v0, 0x5

    int-to-byte v3, v1

    aput-byte v3, p0, v0

    const/4 v0, 0x6

    int-to-byte v3, v1

    aput-byte v3, p0, v0

    const/4 v0, 0x7

    int-to-byte v3, v1

    aput-byte v3, p0, v0

    const/16 v0, 0x11

    int-to-byte v3, v0

    const/16 v4, 0x8

    aput-byte v3, p0, v4

    const/16 v3, 0x27

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, p0, v4

    const/16 v3, 0xa

    int-to-byte v4, v1

    aput-byte v4, p0, v3

    const/16 v3, 0xb

    int-to-byte v4, v1

    aput-byte v4, p0, v3

    const/16 v3, 0xc

    aput-byte v1, p0, v3

    const/16 v3, 0xd

    aput-byte v1, p0, v3

    const/16 v3, 0xe

    aput-byte v1, p0, v3

    const/16 v3, 0xf

    aput-byte v1, p0, v3

    const/16 v3, 0x10

    const/16 v4, 0x100

    if-lt p2, v4, :cond_0

    sub-int/2addr p2, v4

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, p0, v3

    aput-byte v2, p0, v0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    int-to-byte p2, p2

    aput-byte p2, p0, v3

    aput-byte v1, p0, v0

    :goto_0
    const/16 p2, 0x13

    const/16 v0, 0x12

    if-lt p3, v4, :cond_1

    sub-int/2addr p3, v4

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    .line 106
    invoke-static {p3, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p3

    int-to-byte p3, p3

    aput-byte p3, p0, v0

    aput-byte v2, p0, p2

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    .line 111
    invoke-static {p3, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p3

    int-to-byte p3, p3

    aput-byte p3, p0, v0

    aput-byte v1, p0, p2

    :goto_1
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x14

    aput-byte p1, p0, p2

    const/16 p1, 0x15

    aput-byte v1, p0, p1

    const/16 p1, 0x16

    aput-byte v1, p0, p1

    const/16 p1, 0x17

    aput-byte v1, p0, p1

    return-object p0
.end method

.method public static packageLayoutMagic()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x57

    .line 22
    invoke-static {v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x4c

    .line 23
    invoke-static {v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x41

    .line 24
    invoke-static {v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x59

    .line 25
    invoke-static {v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->charToByte(C)B

    move-result v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private static toByte(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid hex char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
