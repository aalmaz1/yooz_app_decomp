.class public Lcn/baos/watch/sdk/entitiy/NlpEntity;
.super Ljava/lang/Object;
.source "NlpEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;
    }
.end annotation


# instance fields
.field private actionId:I

.field private circleModel:Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

.field private event:Ljava/lang/String;

.field private reminder:Ljava/lang/String;

.field private textShow:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .line 62
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->actionId:I

    return v0
.end method

.method public getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->circleModel:Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getReminder()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->reminder:Ljava/lang/String;

    return-object v0
.end method

.method public getTextShow()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->textShow:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 97
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->value:I

    return v0
.end method

.method public setActionId(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->actionId:I

    return-void
.end method

.method public setCircleModel(Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->circleModel:Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->event:Ljava/lang/String;

    return-void
.end method

.method public setReminder(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->reminder:Ljava/lang/String;

    return-void
.end method

.method public setTextShow(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->textShow:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NlpEntity{textShow=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->textShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', reminder=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->reminder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', event=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", circleModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/NlpEntity;->circleModel:Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
