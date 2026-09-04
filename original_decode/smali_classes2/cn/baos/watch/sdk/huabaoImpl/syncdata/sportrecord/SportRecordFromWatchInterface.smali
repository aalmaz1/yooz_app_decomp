.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchInterface;
.super Ljava/lang/Object;
.source "SportRecordFromWatchInterface.java"


# virtual methods
.method public abstract querySportRecordFromWatchInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySportRecordFromWatchToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveSportRecordFromPhoneEntitiesToDb(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;)V
.end method

.method public abstract saveSportRecordFromWatchEntitiesToDb(Lcn/baos/watch/w100/messages/Sport_record_array;)V
.end method
