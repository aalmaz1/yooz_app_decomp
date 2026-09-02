.class public Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;
.super Ljava/lang/Object;
.source "SportStepGetAllFromServerEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;
    }
.end annotation


# instance fields
.field private stepVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStepVOList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->stepVOList:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setStepVOList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->stepVOList:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataBean{userId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', stepVOList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->stepVOList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
