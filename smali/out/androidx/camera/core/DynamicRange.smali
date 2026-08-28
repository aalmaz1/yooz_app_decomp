.class public final Landroidx/camera/core/DynamicRange;
.super Ljava/lang/Object;
.source "DynamicRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/DynamicRange$BitDepth;,
        Landroidx/camera/core/DynamicRange$DynamicRangeEncoding;
    }
.end annotation


# static fields
.field public static final BIT_DEPTH_10_BIT:I = 0xa

.field public static final BIT_DEPTH_8_BIT:I = 0x8

.field public static final BIT_DEPTH_UNSPECIFIED:I = 0x0

.field public static final DOLBY_VISION_10_BIT:Landroidx/camera/core/DynamicRange;

.field public static final DOLBY_VISION_8_BIT:Landroidx/camera/core/DynamicRange;

.field public static final ENCODING_DOLBY_VISION:I = 0x6

.field public static final ENCODING_HDR10:I = 0x4

.field public static final ENCODING_HDR10_PLUS:I = 0x5

.field public static final ENCODING_HDR_UNSPECIFIED:I = 0x2

.field public static final ENCODING_HLG:I = 0x3

.field public static final ENCODING_SDR:I = 0x1

.field public static final ENCODING_UNSPECIFIED:I

.field public static final HDR10_10_BIT:Landroidx/camera/core/DynamicRange;

.field public static final HDR10_PLUS_10_BIT:Landroidx/camera/core/DynamicRange;

.field public static final HDR_UNSPECIFIED_10_BIT:Landroidx/camera/core/DynamicRange;

.field public static final HLG_10_BIT:Landroidx/camera/core/DynamicRange;

.field public static final SDR:Landroidx/camera/core/DynamicRange;

.field public static final UNSPECIFIED:Landroidx/camera/core/DynamicRange;


# instance fields
.field private final mBitDepth:I

.field private final mEncoding:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 115
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->UNSPECIFIED:Landroidx/camera/core/DynamicRange;

    .line 128
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 144
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x2

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->HDR_UNSPECIFIED_10_BIT:Landroidx/camera/core/DynamicRange;

    .line 157
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    .line 169
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->HDR10_10_BIT:Landroidx/camera/core/DynamicRange;

    .line 182
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->HDR10_PLUS_10_BIT:Landroidx/camera/core/DynamicRange;

    .line 195
    new-instance v0, Landroidx/camera/core/DynamicRange;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_10_BIT:Landroidx/camera/core/DynamicRange;

    .line 208
    new-instance v0, Landroidx/camera/core/DynamicRange;

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    sput-object v0, Landroidx/camera/core/DynamicRange;->DOLBY_VISION_8_BIT:Landroidx/camera/core/DynamicRange;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Landroidx/camera/core/DynamicRange;->mEncoding:I

    .line 228
    iput p2, p0, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    return-void
.end method

.method private static getEncodingLabel(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1c

    const-string p0, "<Unknown>"

    return-object p0

    :pswitch_6
    const-string p0, "DOLBY_VISION"

    return-object p0

    :pswitch_9
    const-string p0, "HDR10_PLUS"

    return-object p0

    :pswitch_c
    const-string p0, "HDR10"

    return-object p0

    :pswitch_f
    const-string p0, "HLG"

    return-object p0

    :pswitch_12
    const-string p0, "HDR_UNSPECIFIED"

    return-object p0

    :pswitch_15
    const-string p0, "SDR"

    return-object p0

    :pswitch_18
    const-string p0, "UNSPECIFIED"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 293
    :cond_4
    instance-of v1, p1, Landroidx/camera/core/DynamicRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 294
    check-cast p1, Landroidx/camera/core/DynamicRange;

    .line 295
    iget v1, p0, Landroidx/camera/core/DynamicRange;->mEncoding:I

    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v3

    if-ne v1, v3, :cond_1c

    iget v1, p0, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    .line 296
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    if-ne v1, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    :cond_1e
    return v2
.end method

.method public getBitDepth()I
    .registers 2

    .line 254
    iget v0, p0, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    return v0
.end method

.method public getEncoding()I
    .registers 2

    .line 240
    iget v0, p0, Landroidx/camera/core/DynamicRange;->mEncoding:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 305
    iget v0, p0, Landroidx/camera/core/DynamicRange;->mEncoding:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 307
    iget v1, p0, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public is10BitHdr()Z
    .registers 4

    .line 275
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 276
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public isFullySpecified()Z
    .registers 3

    .line 262
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    if-eqz v0, :cond_15

    .line 263
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 264
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicRange@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/DynamicRange;->mEncoding:I

    .line 283
    invoke-static {v1}, Landroidx/camera/core/DynamicRange;->getEncodingLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
