.class public Landroidx/camera/core/internal/compat/workaround/InvalidJpegDataParser;
.super Ljava/lang/Object;
.source "InvalidJpegDataParser.java"


# instance fields
.field private final mHasQuirk:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Landroidx/camera/core/internal/compat/quirk/LargeJpegImageQuirk;

    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Landroidx/camera/core/internal/compat/workaround/InvalidJpegDataParser;->mHasQuirk:Z

    return-void
.end method


# virtual methods
.method public getValidDataLength([B)I
    .registers 9

    .line 40
    iget-boolean v0, p0, Landroidx/camera/core/internal/compat/workaround/InvalidJpegDataParser;->mHasQuirk:Z

    if-nez v0, :cond_6

    .line 41
    array-length p1, p1

    return p1

    :cond_6
    const/4 v0, 0x2

    move v1, v0

    :goto_8
    add-int/lit8 v2, v1, 0x4

    .line 48
    array-length v3, p1

    if-gt v2, v3, :cond_46

    aget-byte v2, p1, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    goto :goto_46

    :cond_13
    add-int/lit8 v4, v1, 0x2

    .line 52
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-ne v2, v3, :cond_43

    add-int/lit8 v2, v1, 0x1

    .line 56
    aget-byte v2, p1, v2

    const/16 v6, -0x26

    if-ne v2, v6, :cond_43

    :goto_2c
    add-int/lit8 v0, v4, 0x2

    .line 67
    array-length v1, p1

    if-le v0, v1, :cond_33

    .line 68
    array-length p1, p1

    return p1

    .line 71
    :cond_33
    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_40

    add-int/lit8 v1, v4, 0x1

    aget-byte v1, p1, v1

    const/16 v2, -0x27

    if-ne v1, v2, :cond_40

    return v0

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_43
    add-int/2addr v5, v0

    add-int/2addr v1, v5

    goto :goto_8

    .line 49
    :cond_46
    :goto_46
    array-length p1, p1

    return p1
.end method
