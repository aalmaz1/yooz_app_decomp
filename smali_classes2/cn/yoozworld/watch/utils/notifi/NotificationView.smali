.class public abstract Lcn/yoozworld/watch/utils/notifi/NotificationView;
.super Ljava/lang/Object;
.source "NotificationView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mhide(Lcn/yoozworld/watch/utils/notifi/NotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->hide()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mActivity:Landroid/app/Activity;

    .line 32
    invoke-direct {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->initView()V

    return-void
.end method

.method private hide()V
    .locals 2

    .line 113
    invoke-static {}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->getInstance()Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    iget v1, v1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->cancel(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->provideLayoutResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mView:Landroid/view/View;

    .line 41
    invoke-direct {p0, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->setView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->setClickableViewListener(Landroid/view/View;)V

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layout res is illegal!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setClickListener(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/NotificationView$1;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView$1;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClickableViewListener(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->provideClickableViewArray()[I

    move-result-object v0

    .line 91
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->setClickListener(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bindNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "View is not created!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected onClick(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract provideClickableViewArray()[I
.end method

.method public abstract provideLayoutResourceId()I
.end method
