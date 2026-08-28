.class Lcom/king/view/viewfinderview/ViewfinderView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/view/viewfinderview/ViewfinderView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/view/viewfinderview/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/king/view/viewfinderview/ViewfinderView;)V
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/king/view/viewfinderview/ViewfinderView$1;->this$0:Lcom/king/view/viewfinderview/ViewfinderView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView$1;->this$0:Lcom/king/view/viewfinderview/ViewfinderView;

    invoke-static {v0}, Lcom/king/view/viewfinderview/ViewfinderView;->-$$Nest$fgetisShowPoints(Lcom/king/view/viewfinderview/ViewfinderView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/king/view/viewfinderview/ViewfinderView$1;->this$0:Lcom/king/view/viewfinderview/ViewfinderView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/king/view/viewfinderview/ViewfinderView;->-$$Nest$mcheckSingleTap(Lcom/king/view/viewfinderview/ViewfinderView;FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x1

    return p1

    .line 474
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
