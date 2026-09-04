.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeInterface;
.super Ljava/lang/Object;
.source "SportModeInterface.java"


# virtual methods
.method public abstract querySportModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySportModeInIntervalPhone(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySportModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveSportModeEntitiesPhoneToDb(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;)V
.end method

.method public abstract saveSportModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;)V
.end method
