.class synthetic Lcom/king/view/viewfinderview/ViewfinderView$2;
.super Ljava/lang/Object;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/view/viewfinderview/ViewfinderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$king$view$viewfinderview$ViewfinderView$FrameGravity:[I

.field static final synthetic $SwitchMap$com$king$view$viewfinderview$ViewfinderView$LaserStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 695
    invoke-static {}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->values()[Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$LaserStyle:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->LINE:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    invoke-virtual {v2}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$LaserStyle:[I

    sget-object v3, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->GRID:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    invoke-virtual {v3}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$LaserStyle:[I

    sget-object v4, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->IMAGE:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    invoke-virtual {v4}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 559
    :catch_28
    invoke-static {}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->values()[Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$FrameGravity:[I

    :try_start_31
    sget-object v4, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->LEFT:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    invoke-virtual {v4}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$FrameGravity:[I

    sget-object v3, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->TOP:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    invoke-virtual {v3}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$FrameGravity:[I

    sget-object v1, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->RIGHT:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    invoke-virtual {v1}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v0, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$FrameGravity:[I

    sget-object v1, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->BOTTOM:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    invoke-virtual {v1}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method
