.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeInterface;
.super Ljava/lang/Object;
.source "GpsModeInterface.java"


# virtual methods
.method public abstract deleteGpsModeInInterval(II)V
.end method

.method public abstract queryGpsModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryGpsModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveGpsModeEntitiesToDb(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V
.end method
