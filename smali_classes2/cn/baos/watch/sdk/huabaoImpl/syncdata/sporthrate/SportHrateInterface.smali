.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHrateInterface;
.super Ljava/lang/Object;
.source "SportHrateInterface.java"


# virtual methods
.method public abstract querySportHrateInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySportHrateToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveSportHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate_array;)V
.end method
