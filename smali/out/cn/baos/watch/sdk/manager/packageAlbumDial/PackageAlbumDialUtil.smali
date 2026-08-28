.class public Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;
.super Ljava/lang/Object;
.source "PackageAlbumDialUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageAlbumDial([BLjava/lang/String;Ljava/lang/String;[B[B)[B
    .registers 16

    .line 35
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 41
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 42
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 43
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u538b\u7f29\u8fc7\u540e\u7684\u539f\u56fe\u7247\u7684\u5bbd:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u56fe\u7247\u7684\u957f:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u56fe\u7247\u7684\u683c\u5f0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u56fe\u7247\u5927\u5c0f:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u6253\u5305\u8868\u76d8\u53c2\u6570-header\u957f\u5ea6:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u6570\u7ec4\u5185\u5bb9"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 48
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 55
    array-length v0, p5

    shr-int/lit8 v1, v0, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xc

    .line 56
    aput-byte v1, p1, v2

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xd

    .line 57
    aput-byte v1, p1, v2

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xe

    .line 58
    aput-byte v1, p1, v2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0xf

    .line 59
    aput-byte v0, p1, v1

    .line 62
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    invoke-virtual {p3, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->rgb16Swap([B)[B

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-imageData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 71
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->rgb16Swap([B)[B

    move-result-object p2

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5305\u8868\u76d8\u53c2\u6570-imageDataPreview:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    array-length v1, p1

    array-length v4, p2

    add-int/2addr v1, v4

    array-length v4, v0

    add-int/2addr v1, v4

    array-length v4, p4

    add-int/2addr v1, v4

    array-length v4, p5

    add-int/2addr v1, v4

    .line 77
    new-array v4, v1, [B

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\u6253\u5305\u8868\u76d8\u53c2\u6570-start:=header="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "=imageDataPreview="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, p2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "=imageData="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "=layoutMagic="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, p4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "=layoutData="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, p5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\u6253\u5305\u8868\u76d8\u53c2\u6570-md5:=header="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/EncryptionUtils;->getFileMD5ByteReturnByteArray([B)[B

    move-result-object v8

    invoke-static {v8}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 81
    array-length v5, p1

    const/4 v8, 0x0

    invoke-static {p1, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    array-length v5, p1

    array-length v9, p2

    invoke-static {p2, v8, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length v5, p1

    array-length v9, p2

    add-int/2addr v5, v9

    array-length v9, v0

    invoke-static {v0, v8, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v5, p1

    array-length v9, p2

    add-int/2addr v5, v9

    array-length v9, v0

    add-int/2addr v5, v9

    array-length v9, p4

    invoke-static {p4, v8, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v5, p1

    array-length v9, p2

    add-int/2addr v5, v9

    array-length v9, v0

    add-int/2addr v5, v9

    array-length v9, p4

    add-int/2addr v5, v9

    array-length v9, p5

    invoke-static {p5, v8, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "\u6253\u5305\u8868\u76d8\u53c2\u6570-allDataForMd5:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 88
    invoke-static {v4}, Lcn/baos/watch/sdk/utils/EncryptionUtils;->getFileMD5ByteReturnByteArray([B)[B

    move-result-object v1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6253\u5305\u8868\u76d8\u53c2\u6570-md5Byte:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5305\u8868\u76d8\u53c2\u6570-layoutMagic:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5305\u8868\u76d8\u53c2\u6570-layoutData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 98
    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    array-length v3, v0

    add-int/2addr v2, v3

    array-length v3, p4

    add-int/2addr v2, v3

    array-length v3, p5

    add-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v2, v3

    .line 99
    new-array v3, v2, [B

    .line 100
    array-length v4, p1

    invoke-static {p1, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    array-length v4, p1

    array-length v5, p2

    invoke-static {p2, v8, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    array-length v4, p1

    array-length v5, p2

    add-int/2addr v4, v5

    array-length v5, v0

    invoke-static {v0, v8, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, v0

    add-int/2addr p1, p2

    .line 104
    array-length p2, p4

    invoke-static {p4, v8, v3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length p2, p4

    add-int/2addr p2, p1

    array-length v0, p5

    invoke-static {p5, v8, v3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    array-length p2, p4

    add-int/2addr p1, p2

    array-length p2, p5

    add-int/2addr p1, p2

    array-length p2, v1

    invoke-static {v1, v8, v3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-packageData:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method public packageAlbumDials([BLjava/lang/String;Ljava/util/List;[B[B)[B
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[B[B)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 120
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "\u6253\u5305\u8868\u76d8\u53c2\u6570-header\u957f\u5ea6:"

    const-string v11, " \u56fe\u7247\u5927\u5c0f:"

    const-string v12, " \u56fe\u7247\u7684\u683c\u5f0f:"

    const-string v13, " \u56fe\u7247\u7684\u957f:"

    const-string v14, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u538b\u7f29\u8fc7\u540e\u7684\u539f\u56fe\u7247\u7684\u5bbd:"

    const-string v15, " \u6570\u7ec4\u5185\u5bb9"

    if-eqz v9, :cond_b3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 136
    invoke-static {v9, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 137
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v16, v6

    .line 138
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 139
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 145
    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 146
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->rgb16Swap([B)[B

    move-result-object v2

    .line 147
    array-length v6, v2

    add-int/2addr v8, v6

    .line 148
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, p4

    move-object/from16 v6, v16

    goto/16 :goto_1b

    .line 151
    :cond_b3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\u6253\u5305\u8868\u76d8\u53c2\u6570-byteSize=start="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 153
    new-array v2, v8, [B

    .line 155
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_cc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 156
    array-length v9, v7

    move-object/from16 v16, v5

    const/4 v5, 0x0

    invoke-static {v7, v5, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    array-length v5, v7

    add-int/2addr v6, v5

    move-object/from16 v5, v16

    goto :goto_cc

    .line 159
    :cond_e4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6253\u5305\u8868\u76d8\u53c2\u6570-byteSize=end="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    move-object/from16 v5, p2

    .line 162
    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 164
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 165
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 169
    array-length v5, v3

    shr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v7, 0xc

    .line 170
    aput-byte v6, v1, v7

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v7, 0xd

    .line 171
    aput-byte v6, v1, v7

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v7, 0xe

    .line 172
    aput-byte v6, v1, v7

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/16 v6, 0xf

    .line 173
    aput-byte v5, v1, v6

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6253\u5305\u8868\u76d8\u53c2\u6570-imageData:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 184
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 185
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->rgb16Swap([B)[B

    move-result-object v4

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u6253\u5305\u8868\u76d8\u53c2\u6570-imageDataPreview:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 190
    array-length v5, v1

    array-length v9, v4

    add-int/2addr v5, v9

    add-int/2addr v5, v8

    move-object/from16 v9, p4

    array-length v11, v9

    add-int/2addr v5, v11

    array-length v11, v3

    add-int/2addr v5, v11

    .line 191
    new-array v11, v5, [B

    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u6253\u5305\u8868\u76d8\u53c2\u6570-start:=header="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=imageDataPreview="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=imageData="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=layoutMagic="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=layoutData="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 194
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u6253\u5305\u8868\u76d8\u53c2\u6570-md5:=header="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcn/baos/watch/sdk/utils/EncryptionUtils;->getFileMD5ByteReturnByteArray([B)[B

    move-result-object v13

    invoke-static {v13}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 195
    array-length v12, v1

    const/4 v13, 0x0

    invoke-static {v1, v13, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    array-length v12, v1

    array-length v14, v4

    invoke-static {v4, v13, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v12, v1

    array-length v14, v4

    add-int/2addr v12, v14

    invoke-static {v2, v13, v11, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    array-length v12, v1

    array-length v14, v4

    add-int/2addr v12, v14

    add-int/2addr v12, v8

    array-length v14, v9

    invoke-static {v9, v13, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    array-length v12, v1

    array-length v14, v4

    add-int/2addr v12, v14

    add-int/2addr v12, v8

    array-length v14, v9

    add-int/2addr v12, v14

    array-length v14, v3

    invoke-static {v3, v13, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u6253\u5305\u8868\u76d8\u53c2\u6570-allDataForMd5:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v11}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 202
    invoke-static {v11}, Lcn/baos/watch/sdk/utils/EncryptionUtils;->getFileMD5ByteReturnByteArray([B)[B

    move-result-object v5

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u6253\u5305\u8868\u76d8\u53c2\u6570-md5Byte:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v1

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v4

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6253\u5305\u8868\u76d8\u53c2\u6570-layoutMagic:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6253\u5305\u8868\u76d8\u53c2\u6570-layoutData:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 212
    array-length v6, v1

    array-length v7, v4

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    array-length v7, v9

    add-int/2addr v6, v7

    array-length v7, v3

    add-int/2addr v6, v7

    array-length v7, v5

    add-int/2addr v6, v7

    .line 213
    new-array v7, v6, [B

    .line 214
    array-length v10, v1

    const/4 v11, 0x0

    invoke-static {v1, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v10, v1

    array-length v12, v4

    invoke-static {v4, v11, v7, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v10, v1

    array-length v12, v4

    add-int/2addr v10, v12

    invoke-static {v2, v11, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length v1, v1

    array-length v2, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    .line 218
    array-length v2, v9

    invoke-static {v9, v11, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    array-length v2, v9

    add-int/2addr v2, v1

    array-length v4, v3

    invoke-static {v3, v11, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    array-length v2, v9

    add-int/2addr v1, v2

    array-length v2, v3

    add-int/2addr v1, v2

    array-length v2, v5

    invoke-static {v5, v11, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570-packageData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcn/baos/watch/sdk/utils/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-object v7
.end method

.method rgb16Swap([B)[B
    .registers 7

    .line 229
    array-length v0, p1

    .line 230
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_13

    add-int/lit8 v3, v2, 0x1

    .line 233
    aget-byte v4, p1, v3

    aput-byte v4, v1, v2

    .line 234
    aget-byte v4, p1, v2

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_13
    return-object v1
.end method

.method public saveAlbumByteLocal(Landroid/content/Context;Lcn/baos/watch/w100/messages/Device_base_info;[B)Ljava/lang/String;
    .registers 7

    .line 244
    new-instance v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandBleOTAFile;-><init>()V

    const/4 v1, 0x1

    .line 245
    iput v1, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_type:I

    .line 246
    array-length v1, p3

    iput v1, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_size:I

    .line 247
    invoke-static {p3}, Lcn/baos/watch/sdk/utils/EncryptionUtils;->getFileMD5Byte([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_md5:Ljava/lang/String;

    .line 248
    iget-object v1, p2, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    iput-object v1, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->old_version:Ljava/lang/String;

    .line 249
    iget-object p2, p2, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    iput-object p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->new_version:Ljava/lang/String;

    const-string p2, "N27H"

    .line 250
    iput-object p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->hardware_id:Ljava/lang/String;

    .line 251
    iput-object p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->name:Ljava/lang/String;

    const-string p2, "device"

    .line 252
    iput-object p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->desc:Ljava/lang/String;

    const/4 p2, 0x4

    .line 253
    iput p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_id:I

    const/4 p2, 0x0

    .line 254
    iput p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->old_addr:I

    .line 255
    iput p2, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->dest_addr:I

    .line 256
    iput-object p3, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    .line 259
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object p2

    const-string p3, "imgCropper"

    .line 262
    invoke-static {p1, p3}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "albumByte"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u8868\u76d8bin\u6587\u4ef6\u5b58\u50a8\u8def\u5f84:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 266
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u8868\u76d8bin\u6587\u4ef6\u5927\u5c0f:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 270
    :try_start_7f
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_89} :catch_a8
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_89} :catch_9e
    .catchall {:try_start_7f .. :try_end_89} :catchall_9c

    .line 271
    :try_start_89
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 272
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_8f} :catch_99
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8f} :catch_96
    .catchall {:try_start_89 .. :try_end_8f} :catchall_93

    .line 280
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_b2

    goto :goto_b6

    :catchall_93
    move-exception p1

    move-object p3, v0

    goto :goto_b7

    :catch_96
    move-exception p2

    move-object p3, v0

    goto :goto_9f

    :catch_99
    move-exception p2

    move-object p3, v0

    goto :goto_a9

    :catchall_9c
    move-exception p1

    goto :goto_b7

    :catch_9e
    move-exception p2

    .line 276
    :goto_9f
    :try_start_9f
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_9c

    if-eqz p3, :cond_b6

    .line 280
    :try_start_a4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_b2

    goto :goto_b6

    :catch_a8
    move-exception p2

    .line 274
    :goto_a9
    :try_start_a9
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_9c

    if-eqz p3, :cond_b6

    .line 280
    :try_start_ae
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b6

    :catch_b2
    move-exception p2

    .line 282
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b6
    :goto_b6
    return-object p1

    :goto_b7
    if-eqz p3, :cond_c1

    .line 280
    :try_start_b9
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_c1

    :catch_bd
    move-exception p2

    .line 282
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    :cond_c1
    :goto_c1
    throw p1
.end method
