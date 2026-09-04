.class public Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;
.super Ljava/lang/Object;
.source "SportStepGetAllFromServerEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StepVOListBean"
.end annotation


# instance fields
.field private stepNumber:Ljava/lang/String;

.field private syncDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStepNumber()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;->stepNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncDate()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;->syncDate:Ljava/lang/String;

    return-object v0
.end method

.method public setStepNumber(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;->stepNumber:Ljava/lang/String;

    return-void
.end method

.method public setSyncDate(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;->syncDate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StepVOListBean{syncDate=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;->syncDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', stepNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;->stepNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
