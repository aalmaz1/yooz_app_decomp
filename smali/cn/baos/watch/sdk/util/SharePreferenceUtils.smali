.class public Lcn/baos/watch/sdk/util/SharePreferenceUtils;
.super Ljava/lang/Object;
.source "SharePreferenceUtils.java"


# static fields
.field public static KEY_AMAP_TERMINALID:Ljava/lang/String; = "KEY_AMAP_TERMINALID"

.field public static KEY_AMAP_UUID:Ljava/lang/String; = "KEY_AMAP_UUID"

.field public static KEY_BOND_BT_DIALOG:Ljava/lang/String; = "KEY_BOND_BT_DIALOG"

.field public static KEY_BOND_BT_DIALOG_TWO:Ljava/lang/String; = "KEY_BOND_BT_DIALOG_TWO"

.field public static KEY_BOND_BT_SUCCESS:Ljava/lang/String; = "KEY_BOND_BT_SUCCESS"

.field public static KEY_CONNECT_BT_MAC:Ljava/lang/String; = "KEY_CONNECT_BT_MAC"

.field public static KEY_CONNECT_MAC:Ljava/lang/String; = "KEY_CONNECT_MAC"

.field public static KEY_DEVICE_RESOURCE_LANGUAGE:Ljava/lang/String; = "KEY_DEVICE_RESOURCE_LANGUAGE"

.field public static KEY_LAST_MAC:Ljava/lang/String; = "KEY_LAST_MAC"

.field public static KEY_LOCAL_Language:Ljava/lang/String; = "KEY_LOCAL_Language"

.field public static KEY_MTU_SETTING:Ljava/lang/String; = "KEY_MTU_SETTING"

.field public static KEY_PAIR_CODE:Ljava/lang/String; = "KEY_PAIR_CODE"

.field public static KEY_PHONE_TYPE_DEVICEID:Ljava/lang/String; = "KEY_PHONE_TYPE_DEVICEID"

.field public static KEY_PHONE_TYPE_USERID:Ljava/lang/String; = "KEY_PHONE_TYPE_USERID"

.field public static KEY_RELOAD_CLOSE:Ljava/lang/String; = "KEY_RELOAD_CLOSE"

.field public static KEY_SPP_IS_OPEN:Ljava/lang/String; = "KEY_SPP_IS_OPEN"

.field public static KEY_STEP_SUM:Ljava/lang/String; = "KEY_PHONE_CRASH_FILE"

.field public static KEY_WATCH_LUANGH:Ljava/lang/String; = "KEY_WATCH_LUANGH"

.field private static shareName:Ljava/lang/String; = "WatchSdkDb"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 3

    .line 110
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 112
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static queryBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 186
    :cond_4
    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    .line 187
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 196
    :cond_4
    :try_start_4
    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 197
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public static queryIntByKey(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    if-nez p0, :cond_3

    return p2

    .line 143
    :cond_3
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 144
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_4
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 153
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 161
    :cond_5
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 162
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "saveBooleanByKey->"

    if-nez p0, :cond_1b

    .line 169
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":\u4e0a\u4e0b\u6587\u4e3a\u7a7a,\u67e5\u8be2\u503c\u4e3a\u7a7a\u5b57\u7b26\u4e32"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_1b
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 173
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 174
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-void
.end method

.method public static saveIntByKey(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 121
    :cond_3
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 123
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 133
    :cond_3
    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->shareName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 135
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
