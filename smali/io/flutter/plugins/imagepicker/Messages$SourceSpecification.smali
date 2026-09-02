.class public final Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceSpecification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/Messages$SourceSpecification$Builder;
    }
.end annotation


# instance fields
.field private camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

.field private type:Lio/flutter/plugins/imagepicker/Messages$SourceType;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;"
        }
    .end annotation

    .line 480
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;-><init>()V

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 482
    invoke-static {}, Lio/flutter/plugins/imagepicker/Messages$SourceType;->values()[Lio/flutter/plugins/imagepicker/Messages$SourceType;

    move-result-object v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->setType(Lio/flutter/plugins/imagepicker/Messages$SourceType;)V

    const/4 v1, 0x1

    .line 483
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_22

    const/4 p0, 0x0

    goto :goto_2e

    .line 484
    :cond_22
    invoke-static {}, Lio/flutter/plugins/imagepicker/Messages$SourceCamera;->values()[Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    move-result-object v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v1, p0

    :goto_2e
    invoke-virtual {v0, p0}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->setCamera(Lio/flutter/plugins/imagepicker/Messages$SourceCamera;)V

    return-object v0
.end method


# virtual methods
.method public getCamera()Lio/flutter/plugins/imagepicker/Messages$SourceCamera;
    .registers 2

    .line 435
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    return-object v0
.end method

.method public getType()Lio/flutter/plugins/imagepicker/Messages$SourceType;
    .registers 2

    .line 422
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->type:Lio/flutter/plugins/imagepicker/Messages$SourceType;

    return-object v0
.end method

.method public setCamera(Lio/flutter/plugins/imagepicker/Messages$SourceCamera;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    return-void
.end method

.method public setType(Lio/flutter/plugins/imagepicker/Messages$SourceType;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 429
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->type:Lio/flutter/plugins/imagepicker/Messages$SourceType;

    return-void

    .line 427
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Nonnull field \"type\" is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->type:Lio/flutter/plugins/imagepicker/Messages$SourceType;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    move-object v1, v2

    goto :goto_13

    :cond_d
    iget v1, v1, Lio/flutter/plugins/imagepicker/Messages$SourceType;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->camera:Lio/flutter/plugins/imagepicker/Messages$SourceCamera;

    if-nez v1, :cond_1b

    goto :goto_21

    :cond_1b
    iget v1, v1, Lio/flutter/plugins/imagepicker/Messages$SourceCamera;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
