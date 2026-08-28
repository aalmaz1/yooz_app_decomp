.class public Lcn/baos/watch/sdk/entitiy/WeatherEntity;
.super Ljava/lang/Object;
.source "WeatherEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;
    .registers 2

    .line 38
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->data:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->data:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherReturnEntity{code=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->data:Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
