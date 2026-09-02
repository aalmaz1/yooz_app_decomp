.class Lcn/yoozworld/watch/ui/BLfLst$11;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst;->switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/BLfLst;

.field final synthetic val$status1:Z


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2051
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$11;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    iput-boolean p2, p0, Lcn/yoozworld/watch/ui/BLfLst$11;->val$status1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2054
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$11;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmContext(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcn/yoozworld/watch/ui/BLfLst$11;->val$status1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
