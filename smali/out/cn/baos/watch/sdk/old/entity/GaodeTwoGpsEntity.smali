.class public Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;
.super Ljava/lang/Object;
.source "GaodeTwoGpsEntity.java"


# instance fields
.field private latitude1:D

.field private latitude2:D

.field private longitude1:D

.field private longitude2:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude1()D
    .registers 3

    .line 18
    iget-wide v0, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->latitude1:D

    return-wide v0
.end method

.method public getLatitude2()D
    .registers 3

    .line 34
    iget-wide v0, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->latitude2:D

    return-wide v0
.end method

.method public getLongitude1()D
    .registers 3

    .line 26
    iget-wide v0, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->longitude1:D

    return-wide v0
.end method

.method public getLongitude2()D
    .registers 3

    .line 42
    iget-wide v0, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->longitude2:D

    return-wide v0
.end method

.method public setLatitude1(D)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->latitude1:D

    return-void
.end method

.method public setLatitude2(D)V
    .registers 3

    .line 38
    iput-wide p1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->latitude2:D

    return-void
.end method

.method public setLongitude1(D)V
    .registers 3

    .line 30
    iput-wide p1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->longitude1:D

    return-void
.end method

.method public setLongitude2(D)V
    .registers 3

    .line 46
    iput-wide p1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->longitude2:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GaodeTwoGpsEntity{latitude1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->latitude1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->longitude1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->latitude2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/baos/watch/sdk/old/entity/GaodeTwoGpsEntity;->longitude2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
