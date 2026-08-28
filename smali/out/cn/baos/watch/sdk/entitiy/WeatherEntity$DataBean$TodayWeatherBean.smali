.class public Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;
.super Ljava/lang/Object;
.source "WeatherEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TodayWeatherBean"
.end annotation


# instance fields
.field private area:Ljava/lang/String;

.field private currentTemperature:I

.field private maxTemperature:I

.field private minTemperature:I

.field public pressure:I

.field public uvIndex:I

.field private weatherType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemperature()I
    .registers 2

    .line 91
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->currentTemperature:I

    return v0
.end method

.method public getMaxTemperature()I
    .registers 2

    .line 123
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->maxTemperature:I

    return v0
.end method

.method public getMinTemperature()I
    .registers 2

    .line 115
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->minTemperature:I

    return v0
.end method

.method public getWeatherType()I
    .registers 2

    .line 107
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->weatherType:I

    return v0
.end method

.method public setArea(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->area:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTemperature(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->currentTemperature:I

    return-void
.end method

.method public setMaxTemperature(I)V
    .registers 2

    .line 127
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->maxTemperature:I

    return-void
.end method

.method public setMinTemperature(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->minTemperature:I

    return-void
.end method

.method public setWeatherType(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->weatherType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TodayWeatherBean{currentTemperature=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->currentTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', area=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', weatherType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->weatherType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', minTemperature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->minTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', maxTemperature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->maxTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
