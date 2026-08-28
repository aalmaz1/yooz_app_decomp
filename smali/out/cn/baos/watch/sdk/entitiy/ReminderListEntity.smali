.class public Lcn/baos/watch/sdk/entitiy/ReminderListEntity;
.super Ljava/lang/Object;
.source "ReminderListEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcn/baos/watch/sdk/entitiy/ReminderListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private circleType:Ljava/lang/String;

.field private crudState:I

.field private event:Ljava/lang/String;

.field private id:I

.field private isChecked:Z

.field private position:I

.field private reminder:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private triggerTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->isChecked:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)I
    .registers 6

    .line 142
    invoke-static {p0}, Lcn/baos/watch/sdk/util/TimeUtils;->getReminderManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)J

    move-result-wide v0

    .line 143
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getReminderManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 11
    check-cast p1, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->compareTo(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;)I

    move-result p1

    return p1
.end method

.method public getCircleType()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->circleType:Ljava/lang/String;

    return-object v0
.end method

.method public getCrudState()I
    .registers 2

    .line 54
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->crudState:I

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 62
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->id:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    .line 70
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->position:I

    return v0
.end method

.method public getReminder()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->reminder:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->triggerTime:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    .line 114
    iput-boolean p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->isChecked:Z

    return-void
.end method

.method public setCircleType(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->circleType:Ljava/lang/String;

    return-void
.end method

.method public setCrudState(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->crudState:I

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->event:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->id:I

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->position:I

    return-void
.end method

.method public setReminder(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->reminder:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->time:Ljava/lang/String;

    return-void
.end method

.method public setTriggerTime(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->triggerTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReminderListEntity{crudState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->crudState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', reminder=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->reminder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', triggerTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->triggerTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', circleType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->circleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/entitiy/ReminderListEntity;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
