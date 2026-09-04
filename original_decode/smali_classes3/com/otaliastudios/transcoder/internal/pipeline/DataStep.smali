.class public abstract Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;
.super Ljava/lang/Object;
.source "steps.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Step;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "C::",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
        "TD;TC;TD;TC;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000bR\u001c\u0010\u0007\u001a\u00028\u0001X\u0096.\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;",
        "D",
        "",
        "C",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "()V",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "setChannel",
        "(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "initialize",
        "",
        "next",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "channel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;->setChannel(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->release(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)V

    return-void
.end method

.method public setChannel(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-void
.end method
