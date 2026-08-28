.class public Lcn/yoozworld/watch/utils/TransFileBean;
.super Ljava/lang/Object;
.source "TransFileBean.java"


# instance fields
.field public otaStatus:I

.field public progress:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcn/yoozworld/watch/utils/TransFileBean;->otaStatus:I

    .line 10
    iput p2, p0, Lcn/yoozworld/watch/utils/TransFileBean;->progress:I

    return-void
.end method
