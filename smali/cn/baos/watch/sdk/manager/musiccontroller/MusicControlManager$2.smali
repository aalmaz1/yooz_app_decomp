.class Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$2;
.super Ljava/lang/Object;
.source "MusicControlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$2;->this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 267
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$2;->this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    invoke-static {v1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->-$$Nest$fgetmMusicControlResponse(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)Lcn/baos/watch/w100/messages/MusicControlResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMusicStatusAndVolume(Lcn/baos/watch/w100/messages/MusicControlResponse;)V

    return-void
.end method
