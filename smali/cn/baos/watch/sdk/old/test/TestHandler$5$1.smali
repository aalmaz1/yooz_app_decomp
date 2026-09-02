.class Lcn/baos/watch/sdk/old/test/TestHandler$5$1;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/old/test/TestHandler$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/old/test/TestHandler$5;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/old/test/TestHandler$5;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcn/baos/watch/sdk/old/test/TestHandler$5$1;->this$1:Lcn/baos/watch/sdk/old/test/TestHandler$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 176
    invoke-static {}, Lcn/baos/watch/sdk/utils/LocalAudioPlayManager;->getInstance()Lcn/baos/watch/sdk/utils/LocalAudioPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/utils/LocalAudioPlayManager;->playAudio()V

    return-void
.end method
