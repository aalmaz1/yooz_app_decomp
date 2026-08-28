.class public final Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint$Builder;
    }
.end annotation


# instance fields
.field private x:Ljava/lang/Long;

.field private y:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;"
        }
    .end annotation

    .line 511
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;

    invoke-direct {v0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;-><init>()V

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move-object v1, v2

    goto :goto_25

    .line 513
    :cond_f
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1b

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    goto :goto_21

    :cond_1b
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_25
    invoke-virtual {v0, v1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->setX(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 514
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_30

    goto :goto_46

    .line 515
    :cond_30
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_3c

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    goto :goto_42

    :cond_3c
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_46
    invoke-virtual {v0, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->setY(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getX()Ljava/lang/Long;
    .registers 2

    .line 452
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->x:Ljava/lang/Long;

    return-object v0
.end method

.method public getY()Ljava/lang/Long;
    .registers 2

    .line 465
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->y:Ljava/lang/Long;

    return-object v0
.end method

.method public setX(Ljava/lang/Long;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 459
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->x:Ljava/lang/Long;

    return-void

    .line 457
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"x\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(Ljava/lang/Long;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 472
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->y:Ljava/lang/Long;

    return-void

    .line 470
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"y\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->x:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewPoint;->y:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
