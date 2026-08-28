.class public Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;
.super Ljava/lang/Object;
.source "WeatherEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FutureWeatherBean"
.end annotation


# instance fields
.field private dateTime:Ljava/lang/String;

.field private maxTemperature:I

.field private minTemperature:I

.field private weatherType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTemperature()I
    .registers 2

    .line 180
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->maxTemperature:I

    return v0
.end method

.method public getMinTemperature()I
    .registers 2

    .line 172
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->minTemperature:I

    return v0
.end method

.method public getWeatherType()I
    .registers 2

    .line 156
    iget v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->weatherType:I

    return v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setMaxTemperature(I)V
    .registers 2

    .line 184
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->maxTemperature:I

    return-void
.end method

.method public setMinTemperature(I)V
    .registers 2

    .line 176
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->minTemperature:I

    return-void
.end method

.method public setWeatherType(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->weatherType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FutureWeatherBean{weatherType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->weatherType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', dateTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', minTemperature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->minTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', maxTemperature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->maxTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
