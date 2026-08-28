.class public final Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;
.super Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;",
        "T",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "value",
        "(Ljava/lang/Object;)V",
        "toString",
        "",
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


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State.Eos("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
