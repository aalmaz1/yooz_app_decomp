.class public Lcn/baos/watch/sdk/entitiy/ClockListEntity;
.super Ljava/lang/Object;
.source "ClockListEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcn/baos/watch/sdk/entitiy/ClockListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private crudState:I

.field private from:I

.field private id:I

.field private isChecked:Z

.field private isSynchronizeNetwork:Z

.field private position:I

.field private time:Ljava/lang/String;

.field private timeSlot:Ljava/lang/String;

.field private timeWhen:Ljava/lang/String;

.field private triggerTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isChecked:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isSynchronizeNetwork:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isSynchronizeNetwork:Z

    .line 60
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->time:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeSlot:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeWhen:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isChecked:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)I
    .locals 4

    .line 163
    invoke-static {p0}, Lcn/baos/watch/sdk/util/TimeUtils;->getClockManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)J

    move-result-wide v0

    .line 164
    invoke-static {p1}, Lcn/baos/watch/sdk/util/TimeUtils;->getClockManageAlarmTimeStamp(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcn/baos/watch/sdk/entitiy/ClockListEntity;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->compareTo(Lcn/baos/watch/sdk/entitiy/ClockListEntity;)I

    move-result p1

    return p1
.end method

.method public getCrudState()I
    .locals 1

    .line 67
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->crudState:I

    return v0
.end method

.method public getFrom()I
    .locals 1

    .line 139
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->from:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->id:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 83
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->position:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSlot()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeWhen()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeWhen:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->triggerTime:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isChecked:Z

    return v0
.end method

.method public isSynchronizeNetwork()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isSynchronizeNetwork:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isChecked:Z

    return-void
.end method

.method public setCrudState(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->crudState:I

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->from:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->id:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->position:I

    return-void
.end method

.method public setSynchronizeNetwork(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isSynchronizeNetwork:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimeSlot(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeSlot:Ljava/lang/String;

    return-void
.end method

.method public setTimeWhen(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeWhen:Ljava/lang/String;

    return-void
.end method

.method public setTriggerTime(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->triggerTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClockListEntity{crudState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->crudState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->from:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timeSlot=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timeWhen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->timeWhen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSynchronizeNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/entitiy/ClockListEntity;->isSynchronizeNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
