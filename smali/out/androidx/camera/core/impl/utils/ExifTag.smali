.class Landroidx/camera/core/impl/utils/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifTag;->name:Ljava/lang/String;

    .line 48
    iput p2, p0, Landroidx/camera/core/impl/utils/ExifTag;->number:I

    .line 49
    iput p3, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifTag;->name:Ljava/lang/String;

    .line 56
    iput p2, p0, Landroidx/camera/core/impl/utils/ExifTag;->number:I

    .line 57
    iput p3, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    .line 58
    iput p4, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    return-void
.end method


# virtual methods
.method isFormatCompatible(I)Z
    .registers 6

    .line 63
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_30

    if-ne p1, v2, :cond_9

    goto :goto_30

    :cond_9
    if-eq v0, p1, :cond_30

    .line 65
    iget v2, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v2, p1, :cond_10

    goto :goto_30

    :cond_10
    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    if-ne v2, v3, :cond_19

    :cond_15
    const/4 v3, 0x3

    if-ne p1, v3, :cond_19

    return v1

    :cond_19
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1f

    if-ne v2, v3, :cond_24

    :cond_1f
    const/16 v3, 0x8

    if-ne p1, v3, :cond_24

    return v1

    :cond_24
    const/16 v3, 0xc

    if-eq v0, v3, :cond_2a

    if-ne v2, v3, :cond_2f

    :cond_2a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :cond_30
    :goto_30
    return v1
.end method
