.class public Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;
.super Ljava/lang/Object;
.source "WeatherEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/WeatherEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;,
        Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;
    }
.end annotation


# instance fields
.field private futureWeather:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;",
            ">;"
        }
    .end annotation
.end field

.field private todayWeather:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFutureWeather()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->futureWeather:Ljava/util/List;

    return-object v0
.end method

.method public getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->todayWeather:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    return-object v0
.end method

.method public setFutureWeather(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->futureWeather:Ljava/util/List;

    return-void
.end method

.method public setTodayWeather(Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->todayWeather:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataBean{todayWeather="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->todayWeather:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", futureWeather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->futureWeather:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
