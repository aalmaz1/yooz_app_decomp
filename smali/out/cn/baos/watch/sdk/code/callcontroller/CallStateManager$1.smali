.class Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;
.super Ljava/lang/Object;
.source "CallStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->quietCallOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;->this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;->this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    iget-boolean v0, v0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->isQuietByWatch:Z

    if-eqz v0, :cond_3d

    .line 166
    iget-object v0, p0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;->this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    invoke-static {v0}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->-$$Nest$fgetmContext(Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_42

    .line 168
    iget-object v1, p0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;->this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    iget v1, v1, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->oldRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9759\u97f3\u6062\u590d\u9759\u97f3\u524d\u6a21\u5f0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;->this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    iget v2, v2, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->oldRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 170
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    const-string v0, "RINGING \u53d6\u6d88\u9759\u97f3,\u6062\u590d\u539f\u6a21\u5f0f"

    .line 171
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_42

    :cond_3d
    const-string v0, "\u9759\u97f3\u672a\u4e3b\u52a8\u8bbe\u7f6e\u4e0d\u505a\u6062\u590d"

    .line 174
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    :cond_42
    :goto_42
    iget-object v0, p0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager$1;->this$0:Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->isQuietByWatch:Z

    return-void
.end method
