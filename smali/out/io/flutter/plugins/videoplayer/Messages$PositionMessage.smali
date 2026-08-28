.class public final Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;
    }
.end annotation


# instance fields
.field private position:Ljava/lang/Long;

.field private textureId:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$PositionMessage;"
        }
    .end annotation

    .line 402
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;-><init>()V

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move-object v1, v2

    goto :goto_25

    .line 407
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

    .line 404
    :goto_25
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setTextureId(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 408
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_30

    goto :goto_46

    .line 412
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

    .line 409
    :goto_46
    invoke-virtual {v0, v2}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setPosition(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getPosition()Ljava/lang/Long;
    .registers 2

    .line 356
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-object v0
.end method

.method public getTextureId()Ljava/lang/Long;
    .registers 2

    .line 343
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    return-object v0
.end method

.method public setPosition(Ljava/lang/Long;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 363
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-void

    .line 361
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"position\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 350
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    return-void

    .line 348
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"textureId\" is null."

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

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
