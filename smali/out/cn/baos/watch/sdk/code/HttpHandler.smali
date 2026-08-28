.class public Lcn/baos/watch/sdk/code/HttpHandler;
.super Landroid/os/Handler;
.source "HttpHandler.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/code/HttpHandler;


# instance fields
.field private hasRead:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/code/HttpHandler;
    .registers 2

    .line 31
    sget-object v0, Lcn/baos/watch/sdk/code/HttpHandler;->instance:Lcn/baos/watch/sdk/code/HttpHandler;

    if-nez v0, :cond_17

    .line 32
    const-class v0, Lcn/baos/watch/sdk/code/HttpHandler;

    monitor-enter v0

    .line 33
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/code/HttpHandler;->instance:Lcn/baos/watch/sdk/code/HttpHandler;

    if-nez v1, :cond_12

    .line 34
    new-instance v1, Lcn/baos/watch/sdk/code/HttpHandler;

    invoke-direct {v1}, Lcn/baos/watch/sdk/code/HttpHandler;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/code/HttpHandler;->instance:Lcn/baos/watch/sdk/code/HttpHandler;

    .line 36
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 38
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/code/HttpHandler;->instance:Lcn/baos/watch/sdk/code/HttpHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x71

    const/16 v2, 0x7f

    if-eq v0, v1, :cond_110

    const/16 v1, 0x76

    if-eq v0, v1, :cond_108

    const/16 v1, 0x79

    if-eq v0, v1, :cond_100

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_cc

    const/16 v1, 0x82

    if-eq v0, v1, :cond_b7

    const/16 v1, 0x98

    if-eq v0, v1, :cond_9b

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_110

    const/16 v1, 0x73

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8e

    const/16 v1, 0x74

    if-eq v0, v1, :cond_66

    if-eq v0, v2, :cond_38

    const/16 p1, 0x80

    if-eq v0, p1, :cond_31

    goto/16 :goto_117

    :cond_31
    const-string p1, "\u82b1\u8c79\u8d26\u53f7\u767b\u9646\u6210\u529f"

    .line 172
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_117

    :cond_38
    const-string p1, "\u767b\u9646\u82b1\u8c79\u8d26\u53f7"

    .line 153
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcn/baos/watch/sdk/constant/AccountConstant;->LOGIN_TYPE:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    const-string v1, "userIdKey"

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    sget-object v0, Lcn/baos/watch/sdk/constant/AccountConstant;->REGISTER_SOURCE_TYPE_XIAO_MI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 161
    iget-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "userAccessTokenKeyXiaoMi"

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_117

    .line 164
    :cond_5d
    iget-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "userAccessTokenKeyWeiXin"

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_117

    .line 105
    :cond_66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_81

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 107
    iget-object v0, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_117

    .line 109
    :cond_81
    iget-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_117

    .line 100
    :cond_8e
    iget-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "\u5c0f\u7231\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u767b\u5f55"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_117

    .line 210
    :cond_9b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity;

    .line 211
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity;->getData()Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->getStepVOList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 212
    :goto_a8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_117

    .line 213
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 189
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4fdd\u5b58\u82b1\u8c79\u7684token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_117

    .line 195
    :cond_cc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/sdk/entitiy/WeatherEntity;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5929\u6c14\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 198
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherInfoToWatch(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    goto :goto_117

    .line 144
    :cond_100
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/code/HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_117

    .line 121
    :cond_108
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/code/HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_117

    .line 77
    :cond_110
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/code/HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_117
    :goto_117
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcn/baos/watch/sdk/code/HttpHandler;->mContext:Landroid/content/Context;

    return-void
.end method
