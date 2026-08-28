.class Lcn/yoozworld/watch/ui/SsManager$2$1;
.super Ljava/lang/Object;
.source "SsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/SsManager$2;->onActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/yoozworld/watch/ui/SsManager$2;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/SsManager$2;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$2$1;->this$1:Lcn/yoozworld/watch/ui/SsManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2$1;->this$1:Lcn/yoozworld/watch/ui/SsManager$2;

    iget-object v0, v0, Lcn/yoozworld/watch/ui/SsManager$2;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputsportTime(Lcn/yoozworld/watch/ui/SsManager;I)V

    return-void
.end method
