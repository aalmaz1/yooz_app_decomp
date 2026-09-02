.class public Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;
.super Ljava/lang/Object;
.source "SportPlansEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/SportPlansEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Plans"
.end annotation


# instance fields
.field public dayOfWeek:I

.field public mode:I

.field public reachValue:I

.field public reserve:I

.field public targetType:I

.field public targetValue:I

.field final synthetic this$0:Lcn/baos/watch/sdk/entitiy/SportPlansEntity;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/entitiy/SportPlansEntity;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;->this$0:Lcn/baos/watch/sdk/entitiy/SportPlansEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
