.class public abstract Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;
.super Ljava/lang/Object;
.source "steps.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Step;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Input:",
        "Ljava/lang/Object;",
        "InputChannel::",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Output:",
        "Ljava/lang/Object;",
        "OutputChannel::",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
        "TInput;TInputChannel;TOutput;TOutputChannel;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u0004*\u0008\u0008\u0002\u0010\u0005*\u00020\u0002*\u0008\u0008\u0003\u0010\u0006*\u00020\u00042\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0007B\u0005\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00028\u0003H\u0016\u00a2\u0006\u0002\u0010\u0010R \u0010\n\u001a\u00028\u00032\u0006\u0010\t\u001a\u00028\u0003@BX\u0084.\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;",
        "Input",
        "",
        "InputChannel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Output",
        "OutputChannel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "()V",
        "<set-?>",
        "next",
        "getNext",
        "()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "initialize",
        "",
        "(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V",
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
.field private next:Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutputChannel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getNext()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutputChannel;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;->next:Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "next"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutputChannel;)V"
        }
    .end annotation

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;->next:Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-void
.end method

.method public release()V
    .registers 1

    .line 3
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->release(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)V

    return-void
.end method
