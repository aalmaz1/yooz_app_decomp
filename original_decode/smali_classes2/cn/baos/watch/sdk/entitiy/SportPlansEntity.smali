.class public Lcn/baos/watch/sdk/entitiy/SportPlansEntity;
.super Ljava/lang/Object;
.source "SportPlansEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;
    }
.end annotation


# instance fields
.field public enable:I

.field public plans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;",
            ">;"
        }
    .end annotation
.end field

.field public reserve1:I

.field public reserve2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
