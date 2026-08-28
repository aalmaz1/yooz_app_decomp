.class Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;
.super Ljava/lang/Object;
.source "AccessibilityViewEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewAndId"
.end annotation


# instance fields
.field final id:I

.field final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .registers 3

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->view:Landroid/view/View;

    .line 404
    iput p2, p0, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->id:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$1;)V
    .registers 4

    .line 398
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 410
    :cond_4
    instance-of v1, p1, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 411
    :cond_a
    check-cast p1, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;

    .line 412
    iget v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->id:I

    iget v3, p1, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->id:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->view:Landroid/view/View;

    iget-object p1, p1, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->view:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 419
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 420
    iget v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$ViewAndId;->id:I

    add-int/2addr v0, v1

    return v0
.end method
