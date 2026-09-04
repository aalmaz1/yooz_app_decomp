.class public Lcn/baos/watch/sdk/old/HttpHandler;
.super Landroid/os/Handler;
.source "HttpHandler.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/old/HttpHandler;


# instance fields
.field private hasRead:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/old/HttpHandler;
    .locals 2

    .line 33
    sget-object v0, Lcn/baos/watch/sdk/old/HttpHandler;->instance:Lcn/baos/watch/sdk/old/HttpHandler;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcn/baos/watch/sdk/old/HttpHandler;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/old/HttpHandler;->instance:Lcn/baos/watch/sdk/old/HttpHandler;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcn/baos/watch/sdk/old/HttpHandler;

    invoke-direct {v1}, Lcn/baos/watch/sdk/old/HttpHandler;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/old/HttpHandler;->instance:Lcn/baos/watch/sdk/old/HttpHandler;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/old/HttpHandler;->instance:Lcn/baos/watch/sdk/old/HttpHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x71

    const/16 v2, 0x7f

    if-eq v0, v1, :cond_b

    const/16 v1, 0x76

    if-eq v0, v1, :cond_a

    const/16 v1, 0x79

    if-eq v0, v1, :cond_9

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x82

    if-eq v0, v1, :cond_7

    const/16 v1, 0x98

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x73

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/16 p1, 0x80

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "\u82b1\u8c79\u8d26\u53f7\u767b\u9646\u6210\u529f"

    .line 174
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "\u767b\u9646\u82b1\u8c79\u8d26\u53f7"

    .line 155
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcn/baos/watch/sdk/constant/AccountConstant;->LOGIN_TYPE:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    const-string v1, "userIdKey"

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    sget-object v0, Lcn/baos/watch/sdk/constant/AccountConstant;->REGISTER_SOURCE_TYPE_XIAO_MI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "userAccessTokenKeyXiaoMi"

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 166
    :cond_2
    iget-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "userAccessTokenKeyWeiXin"

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/utils/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 107
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 111
    :cond_4
    iget-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 102
    :cond_5
    iget-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    const-string v0, "\u5c0f\u7231\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u767b\u5f55"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 212
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity;

    .line 213
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity;->getData()Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean;->getStepVOList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 214
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 215
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/entitiy/SportStepGetAllFromServerEntity$DataBean$StepVOListBean;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4fdd\u5b58\u82b1\u8c79\u7684token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/sdk/entitiy/WeatherEntity;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5929\u6c14\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherInfoToWatch(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    goto :goto_1

    .line 146
    :cond_9
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/old/HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 123
    :cond_a
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/old/HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 79
    :cond_b
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/old/HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    :goto_1
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/baos/watch/sdk/old/HttpHandler;->mContext:Landroid/content/Context;

    return-void
.end method
