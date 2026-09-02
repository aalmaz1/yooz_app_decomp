.class public Lcom/king/view/viewfinderview/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/view/viewfinderview/ViewfinderView$ViewfinderStyle;,
        Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;,
        Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;,
        Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;,
        Lcom/king/view/viewfinderview/ViewfinderView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final DEFAULT_RANGE_RATIO:F

.field private final MAX_ZOOM_RATIO:F

.field private final POINT_ANIMATION_INTERVAL:I

.field private currentZoomRatio:F

.field private frame:Landroid/graphics/Rect;

.field private frameBitmap:Landroid/graphics/Bitmap;

.field private frameColor:I

.field private frameCornerColor:I

.field private frameCornerSize:I

.field private frameCornerStrokeWidth:I

.field private frameGravity:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

.field private frameHeight:I

.field private frameLineStrokeWidth:I

.field private framePaddingBottom:F

.field private framePaddingLeft:F

.field private framePaddingRight:F

.field private framePaddingTop:F

.field private frameRatio:F

.field private frameWidth:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isPointAnimation:Z

.field private isShowPoints:Z

.field private labelText:Ljava/lang/String;

.field private labelTextColor:I

.field private labelTextLocation:Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;

.field private labelTextPadding:F

.field private labelTextSize:F

.field private labelTextWidth:I

.field private laserAnimationInterval:I

.field private laserBitmap:Landroid/graphics/Bitmap;

.field private laserBitmapRatio:F

.field private laserBitmapWidth:F

.field private laserColor:I

.field private laserGridColumn:I

.field private laserGridHeight:I

.field private laserLineHeight:I

.field private laserMovementSpeed:I

.field private laserStyle:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

.field private lastZoomRatio:F

.field private maskColor:I

.field private minDimension:I

.field private onItemClickListener:Lcom/king/view/viewfinderview/ViewfinderView$OnItemClickListener;

.field private paint:Landroid/graphics/Paint;

.field private pointAnimationInterval:I

.field private pointBitmap:Landroid/graphics/Bitmap;

.field private pointColor:I

.field private pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private pointRadius:F

.field private pointRangeRadius:F

.field private pointStrokeColor:I

.field private pointStrokeRadius:F

.field private pointStrokeRatio:F

.field private scannerEnd:I

.field private scannerStart:I

.field private textPaint:Landroid/text/TextPaint;

.field private viewfinderStyle:I

.field private zoomCount:I

.field private zoomSpeed:F


# direct methods
.method static bridge synthetic -$$Nest$fgetisShowPoints(Lcom/king/view/viewfinderview/ViewfinderView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckSingleTap(Lcom/king/view/viewfinderview/ViewfinderView;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->checkSingleTap(FF)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p1, p2, v0}, Lcom/king/view/viewfinderview/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f99999a    # 1.2f

    .line 69
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->DEFAULT_RANGE_RATIO:F

    .line 73
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->MAX_ZOOM_RATIO:F

    const/16 p3, 0xbb8

    .line 77
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->POINT_ANIMATION_INTERVAL:I

    const/4 p3, 0x0

    .line 132
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    .line 136
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerEnd:I

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isPointAnimation:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    const v0, 0x3ca3d70a    # 0.02f

    .line 250
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomSpeed:F

    .line 265
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->viewfinderStyle:I

    .line 269
    iput-boolean p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calcPointZoomAnimation()V
    .registers 5

    .line 857
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    const/4 v3, 0x2

    if-gtz v2, :cond_1d

    .line 858
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    .line 859
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomSpeed:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    .line 861
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomCount:I

    if-ge v0, v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    .line 863
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomCount:I

    goto :goto_41

    :cond_19
    const/4 v0, 0x0

    .line 865
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomCount:I

    goto :goto_41

    :cond_1d
    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2c

    .line 868
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    .line 869
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomSpeed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    goto :goto_41

    .line 871
    :cond_2c
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3a

    .line 872
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    .line 873
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomSpeed:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    goto :goto_41

    .line 875
    :cond_3a
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    .line 876
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomSpeed:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    .line 881
    :goto_41
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomCount:I

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointAnimationInterval:I

    goto :goto_51

    :cond_4e
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserAnimationInterval:I

    mul-int/2addr v0, v3

    :goto_51
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/king/view/viewfinderview/ViewfinderView;->postInvalidateDelayed(J)V

    return-void
.end method

.method private checkSingleTap(FF)Z
    .registers 7

    .line 925
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 926
    :goto_6
    iget-object v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 927
    iget-object v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 928
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/king/view/viewfinderview/ViewfinderView;->getDistance(FFFF)F

    move-result v2

    .line 929
    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRangeRadius:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2e

    .line 930
    iget-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->onItemClickListener:Lcom/king/view/viewfinderview/ViewfinderView$OnItemClickListener;

    if-eqz p1, :cond_2d

    .line 931
    invoke-interface {p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView$OnItemClickListener;->onItemClick(I)V

    :cond_2d
    return v1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_31
    return v1
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10

    .line 652
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 654
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 655
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 657
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 658
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 660
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 661
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 663
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 664
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 815
    iget v2, v0, Lcom/king/view/viewfinderview/ViewfinderView;->maskColor:I

    if-eqz v2, :cond_4b

    .line 816
    iget-object v3, v0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p3

    int-to-float v2, v2

    .line 817
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v3

    iget-object v9, v0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 818
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v3

    iget-object v15, v0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 819
    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v3

    iget-object v12, v0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 820
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    move/from16 v1, p4

    int-to-float v11, v1

    iget-object v12, v0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4b
    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10

    .line 792
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 793
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 794
    iget-object v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_69

    .line 796
    :cond_12
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 797
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 798
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 799
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 801
    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_69
    return-void
.end method

.method private drawGridScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 16

    .line 744
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 746
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridHeight:I

    if-lez v0, :cond_18

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridHeight:I

    if-le v0, v2, :cond_18

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    sub-int/2addr v0, v2

    goto :goto_1a

    :cond_18
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 748
    :goto_1a
    new-instance v10, Landroid/graphics/LinearGradient;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v3, v2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v6, v2

    new-array v7, v1, [I

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    invoke-direct {p0, v2}, Lcom/king/view/viewfinderview/ViewfinderView;->shadeColor(I)I

    move-result v2

    const/4 v11, 0x0

    aput v2, v7, v11

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    const/4 v12, 0x1

    aput v2, v7, v12

    new-array v8, v1, [F

    fill-array-data v8, :array_c0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v4, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 750
    iget-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 752
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridColumn:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 755
    :goto_57
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridColumn:I

    if-ge v12, v2, :cond_74

    .line 756
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v12

    mul-float/2addr v3, v1

    add-float v5, v2, v3

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v7, v2, v3

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v8, v2

    iget-object v9, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_57

    .line 758
    :cond_74
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridHeight:I

    if-lez v0, :cond_82

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridHeight:I

    if-le v0, v2, :cond_82

    goto :goto_88

    :cond_82
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v2

    :goto_88
    int-to-float v0, v11

    int-to-float v3, v2

    div-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_af

    .line 762
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    add-int/2addr v3, v4

    int-to-float v5, v3

    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v3, v3

    mul-float/2addr v0, v1

    sub-float v6, v3, v0

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    sub-int/2addr v3, v4

    int-to-float v7, v3

    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v3, v3

    sub-float v8, v3, v0

    iget-object v9, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_88

    .line 765
    :cond_af
    iget p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerEnd:I

    if-ge p1, v0, :cond_bb

    .line 766
    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserMovementSpeed:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    goto :goto_bf

    .line 768
    :cond_bb
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    :goto_bf
    return-void

    :array_c0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawImageScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 7

    .line 674
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    .line 675
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 676
    iget p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerEnd:I

    if-ge p1, v0, :cond_26

    .line 677
    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserMovementSpeed:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    goto :goto_2e

    .line 679
    :cond_26
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    goto :goto_2e

    .line 682
    :cond_2b
    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_2e
    return-void
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 5

    .line 693
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserStyle:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    if-eqz v0, :cond_30

    .line 694
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 695
    sget-object v0, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$LaserStyle:[I

    iget-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserStyle:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    invoke-virtual {v1}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    goto :goto_2a

    .line 703
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->drawImageScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2a

    .line 700
    :cond_23
    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->drawGridScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2a

    .line 697
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 706
    :goto_2a
    iget-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_30
    return-void
.end method

.method private drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 12

    .line 718
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 719
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v2, v0

    .line 720
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserLineHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    .line 721
    invoke-direct {p0, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->shadeColor(I)I

    move-result v5

    iget v6, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 725
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 726
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerEnd:I

    if-ge v0, v1, :cond_55

    .line 728
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    sub-int/2addr p2, v3

    int-to-float p2, p2

    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserLineHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 729
    iget-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 730
    iget p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserMovementSpeed:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    goto :goto_59

    .line 732
    :cond_55
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    :goto_59
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;II)V
    .registers 12

    .line 832
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->maskColor:I

    if-eqz v0, :cond_13

    .line 833
    iget-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    int-to-float v6, p3

    .line 834
    iget-object v7, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_13
    return-void
.end method

.method private drawResultPoint(Landroid/graphics/Canvas;Landroid/graphics/Point;F)V
    .registers 8

    .line 892
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_64

    .line 893
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 894
    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 895
    iget-boolean v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isPointAnimation:Z

    if-eqz v3, :cond_5c

    .line 896
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 897
    iget-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 898
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v1, v3

    .line 899
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, p3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr p2, v2

    .line 900
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    add-int/2addr p3, p2

    invoke-direct {v2, v1, p2, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 901
    iget-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_8e

    .line 903
    :cond_5c
    iget-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 906
    :cond_64
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 907
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeRadius:F

    mul-float/2addr v2, p3

    iget-object v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 909
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 910
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRadius:F

    mul-float/2addr v1, p3

    iget-object p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_8e
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Canvas;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_1e

    .line 847
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 848
    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    invoke-direct {p0, p1, v0, v1}, Lcom/king/view/viewfinderview/ViewfinderView;->drawResultPoint(Landroid/graphics/Canvas;Landroid/graphics/Point;F)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 13

    .line 629
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 630
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 631
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 632
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 634
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextWidth:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 635
    iget-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextLocation:Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;

    sget-object v2, Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;->BOTTOM:Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;

    if-ne v1, v2, :cond_4a

    .line 636
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextPadding:F

    add-float/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_63

    .line 638
    :cond_4a
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextPadding:F

    sub-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    :goto_63
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_66
    return-void
.end method

.method private getBitmapFormDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    .line 502
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_14
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 504
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getColor(Landroid/content/Context;I)I
    .registers 3

    .line 489
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getDistance(FFFF)F
    .registers 9

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 951
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 395
    sget-object v0, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 397
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 399
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvViewfinderStyle:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->viewfinderStyle:I

    .line 401
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvMaskColor:I

    sget v3, Lcom/king/view/viewfinderview/R$color;->viewfinder_mask:I

    invoke-direct {p0, p1, v3}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->maskColor:I

    .line 403
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameColor:I

    sget v3, Lcom/king/view/viewfinderview/R$color;->viewfinder_frame:I

    invoke-direct {p0, p1, v3}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameColor:I

    .line 404
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameWidth:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    .line 405
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameHeight:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    .line 406
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameRatio:I

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameRatio:F

    .line 407
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameLineStrokeWidth:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    .line 408
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFramePaddingLeft:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingLeft:F

    .line 409
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFramePaddingTop:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingTop:F

    .line 410
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFramePaddingRight:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingRight:F

    .line 411
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFramePaddingBottom:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingBottom:F

    .line 412
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameGravity:I

    sget-object v4, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->CENTER:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    invoke-static {v4}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->-$$Nest$fgetmValue(Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->-$$Nest$smgetFromInt(I)Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    move-result-object v1

    iput-object v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameGravity:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    .line 413
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameCornerColor:I

    sget v4, Lcom/king/view/viewfinderview/R$color;->viewfinder_corner:I

    invoke-direct {p0, p1, v4}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerColor:I

    .line 414
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameCornerSize:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    .line 415
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameCornerStrokeWidth:I

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    .line 416
    sget v1, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvFrameDrawable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserLineHeight:I

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserLineHeight:I

    .line 419
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserMovementSpeed:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserMovementSpeed:I

    .line 420
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserAnimationInterval:I

    const/16 v6, 0x14

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserAnimationInterval:I

    .line 422
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserGridColumn:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridColumn:I

    .line 423
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserGridHeight:I

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridHeight:I

    .line 425
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserColor:I

    sget v6, Lcom/king/view/viewfinderview/R$color;->viewfinder_laser:I

    invoke-direct {p0, p1, v6}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    .line 426
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserStyle:I

    sget-object v6, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->LINE:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    invoke-static {v6}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->-$$Nest$fgetmValue(Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;)I

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;->-$$Nest$smgetFromInt(I)Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserStyle:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    .line 427
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserDrawableRatio:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapRatio:F

    .line 428
    sget v3, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLaserDrawable:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 430
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLabelText:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelText:Ljava/lang/String;

    .line 431
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLabelTextColor:I

    sget v6, Lcom/king/view/viewfinderview/R$color;->viewfinder_label_text:I

    invoke-direct {p0, p1, v6}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextColor:I

    .line 432
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLabelTextSize:I

    const/4 v6, 0x2

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v6, v7, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextSize:F

    .line 433
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLabelTextPadding:I

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v5, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextPadding:F

    .line 434
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLabelTextWidth:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextWidth:I

    .line 435
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvLabelTextLocation:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;->-$$Nest$smgetFromInt(I)Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;

    move-result-object v2

    iput-object v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextLocation:Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;

    .line 437
    sget v2, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointColor:I

    sget v4, Lcom/king/view/viewfinderview/R$color;->viewfinder_point:I

    invoke-direct {p0, p1, v4}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointColor:I

    .line 438
    sget v2, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointStrokeColor:I

    sget v4, Lcom/king/view/viewfinderview/R$color;->viewfinder_point_stroke:I

    invoke-direct {p0, p1, v4}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeColor:I

    .line 439
    sget v2, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointRadius:I

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRadius:F

    .line 440
    sget v0, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointStrokeRatio:I

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeRatio:F

    .line 441
    sget v0, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointAnimation:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isPointAnimation:Z

    .line 444
    sget v4, Lcom/king/view/viewfinderview/R$styleable;->ViewfinderView_vvPointAnimationInterval:I

    const/16 v6, 0xbb8

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointAnimationInterval:I

    .line 446
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1ce

    .line 449
    invoke-direct {p0, v1}, Lcom/king/view/viewfinderview/ViewfinderView;->getBitmapFormDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameBitmap:Landroid/graphics/Bitmap;

    :cond_1ce
    if-eqz v3, :cond_1d6

    .line 453
    invoke-direct {p0, v3}, Lcom/king/view/viewfinderview/ViewfinderView;->getBitmapFormDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    :cond_1d6
    if-eqz v0, :cond_1f0

    .line 457
    invoke-direct {p0, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->getBitmapFormDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 458
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x4

    int-to-float p2, p2

    mul-float/2addr p2, v2

    iput p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRangeRadius:F

    goto :goto_1fa

    .line 460
    :cond_1f0
    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRadius:F

    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeRatio:F

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeRadius:F

    mul-float/2addr p2, v2

    .line 461
    iput p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRangeRadius:F

    .line 464
    :goto_1fa
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 465
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    .line 468
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/king/view/viewfinderview/ViewfinderView$1;

    invoke-direct {v0, p0}, Lcom/king/view/viewfinderview/ViewfinderView$1;-><init>(Lcom/king/view/viewfinderview/ViewfinderView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initFrame(II)V
    .registers 8

    .line 537
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->minDimension:I

    int-to-float v1, v0

    .line 538
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 540
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapWidth:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    int-to-float v0, v0

    .line 541
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapRatio:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapWidth:F

    .line 542
    invoke-direct {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->scaleLaserBitmap()V

    .line 545
    :cond_1b
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    if-lez v0, :cond_21

    if-le v0, p1, :cond_23

    .line 546
    :cond_21
    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    .line 549
    :cond_23
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    if-lez v0, :cond_29

    if-le v0, p2, :cond_2b

    .line 550
    :cond_29
    iput v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    .line 553
    :cond_2b
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextWidth:I

    if-gtz v0, :cond_3c

    .line 554
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextWidth:I

    .line 557
    :cond_3c
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    sub-int v0, p1, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingLeft:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingRight:F

    sub-float/2addr v0, v2

    .line 558
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    sub-int v2, p2, v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingBottom:F

    sub-float/2addr v2, v3

    .line 559
    sget-object v3, Lcom/king/view/viewfinderview/ViewfinderView$2;->$SwitchMap$com$king$view$viewfinderview$ViewfinderView$FrameGravity:[I

    iget-object v4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameGravity:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    invoke-virtual {v4}, Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_80

    if-eq v3, v1, :cond_7d

    const/4 v1, 0x3

    if-eq v3, v1, :cond_74

    const/4 p1, 0x4

    if-eq v3, p1, :cond_6b

    goto :goto_82

    .line 570
    :cond_6b
    iget p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingBottom:F

    add-float v2, p1, p2

    goto :goto_82

    .line 567
    :cond_74
    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingRight:F

    add-float v0, p1, p2

    goto :goto_82

    .line 564
    :cond_7d
    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingTop:F

    goto :goto_82

    .line 561
    :cond_80
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingLeft:F

    .line 574
    :goto_82
    new-instance p1, Landroid/graphics/Rect;

    float-to-int p2, v0

    float-to-int v0, v2

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    add-int/2addr v2, v0

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    return-void
.end method

.method private scaleLaserBitmap()V
    .registers 10

    .line 519
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapWidth:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_30

    .line 520
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 521
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 522
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 523
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 524
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 525
    iget-object v2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    :cond_30
    return-void
.end method

.method private shadeColor(I)I
    .registers 4

    .line 780
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "01"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 782
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public isShowPoints()Z
    .registers 2

    .line 960
    iget-boolean v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 579
    iget-boolean v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    if-eqz v0, :cond_1c

    .line 581
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/king/view/viewfinderview/ViewfinderView;->drawMask(Landroid/graphics/Canvas;II)V

    .line 582
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->drawResultPoints(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 583
    iget-boolean p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isPointAnimation:Z

    if-eqz p1, :cond_1b

    .line 585
    invoke-direct {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->calcPointZoomAnimation()V

    :cond_1b
    return-void

    .line 590
    :cond_1c
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    if-nez v0, :cond_21

    return-void

    .line 594
    :cond_21
    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    if-eqz v1, :cond_29

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerEnd:I

    if-nez v1, :cond_36

    .line 595
    :cond_29
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerStart:I

    .line 596
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserLineHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->scannerEnd:I

    .line 600
    :cond_36
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->viewfinderStyle:I

    if-nez v0, :cond_6e

    .line 602
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/king/view/viewfinderview/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 604
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 606
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 608
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 610
    iget p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserAnimationInterval:I

    int-to-long v1, p1

    iget-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/king/view/viewfinderview/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto :goto_81

    :cond_6e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_81

    .line 614
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 616
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/view/viewfinderview/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 617
    iget p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserAnimationInterval:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/king/view/viewfinderview/ViewfinderView;->postInvalidateDelayed(J)V

    :cond_81
    :goto_81
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 511
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 512
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/king/view/viewfinderview/ViewfinderView;->initFrame(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 918
    iget-boolean v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    if-eqz v0, :cond_9

    .line 919
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 921
    :cond_9
    iget-boolean v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method

.method public setFrameBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1171
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFrameColor(I)V
    .registers 2

    .line 1000
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameColor:I

    return-void
.end method

.method public setFrameCornerColor(I)V
    .registers 2

    .line 1018
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerColor:I

    return-void
.end method

.method public setFrameCornerSize(I)V
    .registers 2

    .line 1126
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerSize:I

    return-void
.end method

.method public setFrameCornerStrokeWidth(I)V
    .registers 2

    .line 1117
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameCornerStrokeWidth:I

    return-void
.end method

.method public setFrameDrawable(I)V
    .registers 3

    .line 1162
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/king/view/viewfinderview/ViewfinderView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setFrameGravity(Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;)V
    .registers 2

    .line 1350
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameGravity:Lcom/king/view/viewfinderview/ViewfinderView$FrameGravity;

    return-void
.end method

.method public setFrameHeight(I)V
    .registers 2

    .line 1281
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameHeight:I

    return-void
.end method

.method public setFrameLineStrokeWidth(I)V
    .registers 2

    .line 1153
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameLineStrokeWidth:I

    return-void
.end method

.method public setFramePadding(FFFF)V
    .registers 5

    .line 1329
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingLeft:F

    .line 1330
    iput p2, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingTop:F

    .line 1331
    iput p3, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingRight:F

    .line 1332
    iput p4, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingBottom:F

    return-void
.end method

.method public setFramePaddingBottom(F)V
    .registers 2

    .line 1341
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingBottom:F

    return-void
.end method

.method public setFramePaddingLeft(F)V
    .registers 2

    .line 1299
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingLeft:F

    return-void
.end method

.method public setFramePaddingRight(F)V
    .registers 2

    .line 1317
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingRight:F

    return-void
.end method

.method public setFramePaddingTop(F)V
    .registers 2

    .line 1308
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->framePaddingTop:F

    return-void
.end method

.method public setFrameRatio(F)V
    .registers 2

    .line 1290
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameRatio:F

    return-void
.end method

.method public setFrameWidth(I)V
    .registers 2

    .line 1272
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->frameWidth:I

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .registers 2

    .line 1054
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelText:Ljava/lang/String;

    return-void
.end method

.method public setLabelTextColor(I)V
    .registers 2

    .line 1063
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextColor:I

    return-void
.end method

.method public setLabelTextColorResource(I)V
    .registers 3

    .line 1072
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/king/view/viewfinderview/ViewfinderView;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextColor:I

    return-void
.end method

.method public setLabelTextLocation(Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;)V
    .registers 2

    .line 1045
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextLocation:Lcom/king/view/viewfinderview/ViewfinderView$TextLocation;

    return-void
.end method

.method public setLabelTextPadding(F)V
    .registers 2

    .line 1027
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextPadding:F

    return-void
.end method

.method public setLabelTextSize(F)V
    .registers 2

    .line 1081
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextSize:F

    return-void
.end method

.method public setLabelTextWidth(I)V
    .registers 2

    .line 1036
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->labelTextWidth:I

    return-void
.end method

.method public setLaserAnimationInterval(I)V
    .registers 2

    .line 1180
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserAnimationInterval:I

    return-void
.end method

.method public setLaserBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1225
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmap:Landroid/graphics/Bitmap;

    .line 1226
    invoke-direct {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->scaleLaserBitmap()V

    return-void
.end method

.method public setLaserBitmapRatio(F)V
    .registers 3

    .line 1397
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapRatio:F

    .line 1398
    iget v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->minDimension:I

    if-lez v0, :cond_d

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 1399
    iput v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapWidth:F

    .line 1400
    invoke-direct {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->scaleLaserBitmap()V

    :cond_d
    return-void
.end method

.method public setLaserBitmapWidth(F)V
    .registers 2

    .line 1410
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserBitmapWidth:F

    .line 1411
    invoke-direct {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->scaleLaserBitmap()V

    return-void
.end method

.method public setLaserColor(I)V
    .registers 2

    .line 1009
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserColor:I

    return-void
.end method

.method public setLaserDrawable(I)V
    .registers 3

    .line 1216
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/king/view/viewfinderview/ViewfinderView;->setLaserBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLaserGridColumn(I)V
    .registers 2

    .line 1099
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridColumn:I

    return-void
.end method

.method public setLaserGridHeight(I)V
    .registers 2

    .line 1108
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserGridHeight:I

    return-void
.end method

.method public setLaserLineHeight(I)V
    .registers 2

    .line 1144
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserLineHeight:I

    return-void
.end method

.method public setLaserMovementSpeed(I)V
    .registers 2

    .line 1135
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserMovementSpeed:I

    return-void
.end method

.method public setLaserStyle(Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;)V
    .registers 2

    .line 1090
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->laserStyle:Lcom/king/view/viewfinderview/ViewfinderView$LaserStyle;

    return-void
.end method

.method public setMaskColor(I)V
    .registers 2

    .line 991
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->maskColor:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/king/view/viewfinderview/ViewfinderView$OnItemClickListener;)V
    .registers 2

    .line 1420
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->onItemClickListener:Lcom/king/view/viewfinderview/ViewfinderView$OnItemClickListener;

    return-void
.end method

.method public setPointAnimation(Z)V
    .registers 2

    .line 1359
    iput-boolean p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isPointAnimation:Z

    return-void
.end method

.method public setPointAnimationInterval(I)V
    .registers 2

    .line 1254
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointAnimationInterval:I

    return-void
.end method

.method public setPointBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1244
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    .line 1245
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRangeRadius:F

    return-void
.end method

.method public setPointColor(I)V
    .registers 2

    .line 1189
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointColor:I

    return-void
.end method

.method public setPointDrawable(I)V
    .registers 3

    .line 1235
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/king/view/viewfinderview/ViewfinderView;->setPointBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPointRadius(F)V
    .registers 2

    .line 1207
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRadius:F

    return-void
.end method

.method public setPointRangeRadius(F)V
    .registers 2

    .line 1388
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointRangeRadius:F

    return-void
.end method

.method public setPointStrokeColor(I)V
    .registers 2

    .line 1198
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeColor:I

    return-void
.end method

.method public setPointStrokeRadius(F)V
    .registers 2

    .line 1368
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointStrokeRadius:F

    return-void
.end method

.method public setViewfinderStyle(I)V
    .registers 2

    .line 1263
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->viewfinderStyle:I

    return-void
.end method

.method public setZoomSpeed(F)V
    .registers 2

    .line 1377
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomSpeed:F

    return-void
.end method

.method public showResultPoints(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 977
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->pointList:Ljava/util/List;

    const/4 p1, 0x1

    .line 978
    iput-boolean p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    const/4 p1, 0x0

    .line 979
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->zoomCount:I

    const/4 p1, 0x0

    .line 980
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->lastZoomRatio:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 981
    iput p1, p0, Lcom/king/view/viewfinderview/ViewfinderView;->currentZoomRatio:F

    .line 982
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->invalidate()V

    return-void
.end method

.method public showScanner()V
    .registers 2

    const/4 v0, 0x0

    .line 967
    iput-boolean v0, p0, Lcom/king/view/viewfinderview/ViewfinderView;->isShowPoints:Z

    .line 968
    invoke-virtual {p0}, Lcom/king/view/viewfinderview/ViewfinderView;->invalidate()V

    return-void
.end method
