.class public Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;
.super Ljava/lang/Object;
.source "MessageAndTargetId.java"


# instance fields
.field private serializable:Lcn/baos/message/Serializable;

.field private targetId:I

.field private timeStamp:J


# direct methods
.method public constructor <init>(IJLcn/baos/message/Serializable;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->targetId:I

    .line 16
    iput-wide p2, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->timeStamp:J

    .line 17
    iput-object p4, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->serializable:Lcn/baos/message/Serializable;

    return-void
.end method


# virtual methods
.method public getSerializable()Lcn/baos/message/Serializable;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->serializable:Lcn/baos/message/Serializable;

    return-object v0
.end method

.method public getTargetId()I
    .registers 2

    .line 21
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->targetId:I

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->timeStamp:J

    return-wide v0
.end method

.method public setSerializable(Lcn/baos/message/Serializable;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->serializable:Lcn/baos/message/Serializable;

    return-void
.end method

.method public setTargetId(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->targetId:I

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 41
    iput-wide p1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->timeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageAndTargetId{targetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serializable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->serializable:Lcn/baos/message/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
