.class public final Landroidx/media3/common/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/FlagSet$Builder;
    }
.end annotation


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Landroidx/media3/common/FlagSet$1;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    .line 181
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .registers 6

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    .line 192
    invoke-virtual {p0, v3}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 221
    :cond_4
    instance-of v1, p1, Landroidx/media3/common/FlagSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 224
    :cond_a
    check-cast p1, Landroidx/media3/common/FlagSet;

    .line 225
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_33

    .line 227
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/FlagSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    move v1, v2

    .line 230
    :goto_1e
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 231
    invoke-virtual {p0, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v0

    .line 237
    :cond_33
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .registers 4

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 213
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 243
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1c

    .line 245
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 246
    :goto_b
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    invoke-virtual {p0, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return v0

    .line 251
    :cond_1c
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 201
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
