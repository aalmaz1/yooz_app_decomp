.class public Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;
.super Ljava/lang/Object;
.source "SportRecordFromWatchEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private devId:Ljava/lang/String;

.field private id:I

.field public mac:Ljava/lang/String;

.field private sport_record:Lcn/baos/watch/w100/messages/Sport_record;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->id:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->userId:J

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->devId:Ljava/lang/String;

    .line 23
    new-instance v0, Lcn/baos/watch/w100/messages/Sport_record;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sport_record;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->sport_record:Lcn/baos/watch/w100/messages/Sport_record;

    return-void
.end method


# virtual methods
.method public getDevId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 102
    iget v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->id:I

    return v0
.end method

.method public getSport_record()Lcn/baos/watch/w100/messages/Sport_record;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->sport_record:Lcn/baos/watch/w100/messages/Sport_record;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->userId:J

    return-wide v0
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->devId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->id:I

    return-void
.end method

.method public setSport_record(Lcn/baos/watch/w100/messages/Sport_record;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->sport_record:Lcn/baos/watch/w100/messages/Sport_record;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->userId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SportRecordFromWatchEntity{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->devId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sport_record="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->sport_record:Lcn/baos/watch/w100/messages/Sport_record;

    .line 139
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
