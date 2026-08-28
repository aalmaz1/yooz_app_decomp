.class public interface abstract Landroidx/media3/exoplayer/text/TextOutput;
.super Ljava/lang/Object;
.source "TextOutput.java"


# virtual methods
.method public abstract onCues(Landroidx/media3/common/text/CueGroup;)V
.end method

.method public onCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
