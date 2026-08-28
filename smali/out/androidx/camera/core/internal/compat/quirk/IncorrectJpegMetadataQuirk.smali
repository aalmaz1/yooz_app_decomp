.class public final Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;
.super Ljava/lang/Object;
.source "IncorrectJpegMetadataQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final SAMSUNG_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "A24"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;->SAMSUNG_DEVICES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canParseSosMarker([B)Z
    .registers 6

    const/4 v0, 0x2

    move v1, v0

    :goto_2
    add-int/lit8 v2, v1, 0x4

    .line 93
    array-length v3, p1

    if-gt v2, v3, :cond_2b

    aget-byte v2, p1, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    goto :goto_2b

    :cond_d
    if-ne v2, v3, :cond_19

    add-int/lit8 v2, v1, 0x1

    .line 97
    aget-byte v2, p1, v2

    const/16 v3, -0x26

    if-ne v2, v3, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    add-int/lit8 v2, v1, 0x2

    .line 100
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    return p1
.end method

.method private findSecondFfd8Position([B)I
    .registers 6

    const/4 v0, 0x2

    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 117
    array-length v2, p1

    const/4 v3, -0x1

    if-le v1, v2, :cond_8

    return v3

    .line 121
    :cond_8
    aget-byte v2, p1, v0

    if-ne v2, v3, :cond_13

    aget-byte v2, p1, v1

    const/16 v3, -0x28

    if-ne v2, v3, :cond_13

    return v0

    :cond_13
    move v0, v1

    goto :goto_1
.end method

.method private static isSamsungProblematicDevice()Z
    .registers 3

    const-string v0, "Samsung"

    .line 52
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;->SAMSUNG_DEVICES:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method static load()Z
    .registers 1

    .line 48
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;->isSamsungProblematicDevice()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B
    .registers 5

    .line 64
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 67
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-direct {p0, v1}, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;->canParseSosMarker([B)Z

    move-result v2

    if-nez v2, :cond_26

    .line 74
    invoke-direct {p0, v1}, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;->findSecondFfd8Position([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    goto :goto_26

    :cond_25
    return-object v1

    .line 82
    :cond_26
    :goto_26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
