.class public Lcom/baseflow/permissionhandler/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field static final SHARED_PREFERENCES_PERMISSION_WAS_DENIED_BEFORE_KEY:Ljava/lang/String; = "sp_permission_handler_permission_was_denied_before"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineBluetoothPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    invoke-static {p0, v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    .line 550
    :cond_e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    if-ge p1, v0, :cond_27

    .line 551
    invoke-static {p0, v2, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return-object v1

    :cond_1d
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 553
    invoke-static {p0, v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    return-object p1

    :cond_26
    return-object v2

    .line 558
    :cond_27
    invoke-static {p0, v2, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return-object v1

    :cond_2e
    return-object v2
.end method

.method static determineDeniedVariant(Landroid/app/Activity;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 521
    :cond_4
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->wasPermissionDeniedBefore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 522
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->isNeverAskAgainSelected(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v1, :cond_15

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    move v3, v0

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    if-nez v1, :cond_1d

    if-eqz v3, :cond_1d

    .line 528
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->setPermissionDenied(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d
    if-eqz v1, :cond_23

    if-eqz v3, :cond_23

    const/4 p0, 0x4

    return p0

    :cond_23
    return v0
.end method

.method static getManifestNames(Landroid/content/Context;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_CALENDAR"

    const/16 v4, 0x1d

    const/16 v5, 0x21

    packed-switch p1, :pswitch_data_2b0

    :pswitch_11
    goto/16 :goto_2ae

    .line 109
    :pswitch_13
    invoke-static {p0, v0, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 197
    :pswitch_1e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_2ae

    const-string p1, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 198
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 199
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_31
    const-string p1, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 354
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 355
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 349
    :pswitch_3e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_2ae

    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.READ_MEDIA_AUDIO"

    .line 350
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 343
    :pswitch_51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_2ae

    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.READ_MEDIA_VIDEO"

    .line 344
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 331
    :pswitch_64
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_2ae

    const-string p1, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 332
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 310
    :pswitch_77
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2ae

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    .line 313
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineBluetoothPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2ae

    .line 316
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 297
    :pswitch_88
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2ae

    const-string p1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 300
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineBluetoothPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2ae

    .line 303
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 284
    :pswitch_99
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2ae

    const-string p1, "android.permission.BLUETOOTH_SCAN"

    .line 287
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineBluetoothPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2ae

    .line 290
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_aa
    const-string p1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 280
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 281
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_b9
    const-string p1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 274
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 275
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_c8
    const-string p1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 267
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 262
    :pswitch_d5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_2ae

    const-string p1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 263
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_ea
    const-string p1, "android.permission.BLUETOOTH"

    .line 255
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 256
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 248
    :pswitch_f7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v4, :cond_fc

    return-object v2

    :cond_fc
    const-string p1, "android.permission.ACTIVITY_RECOGNITION"

    .line 250
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.ACTIVITY_RECOGNITION"

    .line 251
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 239
    :pswitch_10b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v4, :cond_110

    return-object v2

    :cond_110
    const-string p1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 241
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 242
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 325
    :pswitch_11f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_2ae

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 326
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_130
    const-string p1, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 232
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 233
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_13d
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 221
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 222
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_156

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v4, :cond_2ae

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result p1

    if-eqz p1, :cond_2ae

    :cond_156
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 225
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 226
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_165
    const-string p1, "android.permission.SEND_SMS"

    .line 204
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_170
    const-string p1, "android.permission.RECEIVE_SMS"

    .line 207
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 208
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17b
    const-string p1, "android.permission.READ_SMS"

    .line 210
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_188

    const-string p1, "android.permission.READ_SMS"

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_188
    const-string p1, "android.permission.RECEIVE_WAP_PUSH"

    .line 213
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_195

    const-string p1, "android.permission.RECEIVE_WAP_PUSH"

    .line 214
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_195
    const-string p1, "android.permission.RECEIVE_MMS"

    .line 216
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.RECEIVE_MMS"

    .line 217
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_1a4
    const-string p1, "android.permission.BODY_SENSORS"

    .line 191
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 192
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    .line 337
    :pswitch_1b1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_2ae

    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 338
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_1c2
    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 163
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    .line 164
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1cd
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v4, :cond_1de

    const-string p1, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1de

    const-string p1, "android.permission.READ_PHONE_NUMBERS"

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1de
    const-string p1, "android.permission.CALL_PHONE"

    .line 169
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1eb

    const-string p1, "android.permission.CALL_PHONE"

    .line 170
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1eb
    const-string p1, "android.permission.READ_CALL_LOG"

    .line 172
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f8

    const-string p1, "android.permission.READ_CALL_LOG"

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f8
    const-string p1, "android.permission.WRITE_CALL_LOG"

    .line 175
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_205

    const-string p1, "android.permission.WRITE_CALL_LOG"

    .line 176
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_205
    const-string p1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 178
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_212

    const-string p1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 179
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_212
    const-string p1, "android.permission.USE_SIP"

    .line 181
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21f

    const-string p1, "android.permission.USE_SIP"

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21f
    const-string p1, "android.permission.ANSWER_PHONE_CALLS"

    .line 184
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.ANSWER_PHONE_CALLS"

    .line 185
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_22e
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 158
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ae

    :pswitch_23b
    return-object v2

    :pswitch_23c
    const/4 v1, 0x4

    if-ne p1, v1, :cond_251

    .line 144
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_251

    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 145
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 146
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ae

    :cond_251
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 150
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25c

    .line 151
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25c
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 153
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 154
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ae

    :pswitch_26a
    const-string p1, "android.permission.READ_CONTACTS"

    .line 127
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_275

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_275
    const-string p1, "android.permission.WRITE_CONTACTS"

    .line 130
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_280

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_280
    const-string p1, "android.permission.GET_ACCOUNTS"

    .line 133
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    const-string p0, "android.permission.GET_ACCOUNTS"

    .line 134
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ae

    :pswitch_28e
    const-string p1, "android.permission.CAMERA"

    .line 122
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ae

    .line 115
    :pswitch_29a
    invoke-static {p0, v0, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a3

    .line 116
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a3
    const-string p1, "android.permission.READ_CALENDAR"

    .line 117
    invoke-static {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2ae

    .line 118
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2ae
    :goto_2ae
    return-object v0

    nop

    :pswitch_data_2b0
    .packed-switch 0x0
        :pswitch_29a
        :pswitch_28e
        :pswitch_26a
        :pswitch_23c
        :pswitch_23c
        :pswitch_23c
        :pswitch_23b
        :pswitch_22e
        :pswitch_1c2
        :pswitch_1b1
        :pswitch_11
        :pswitch_23b
        :pswitch_1a4
        :pswitch_165
        :pswitch_22e
        :pswitch_13d
        :pswitch_130
        :pswitch_11f
        :pswitch_10b
        :pswitch_f7
        :pswitch_23b
        :pswitch_ea
        :pswitch_d5
        :pswitch_c8
        :pswitch_b9
        :pswitch_11
        :pswitch_11
        :pswitch_aa
        :pswitch_99
        :pswitch_88
        :pswitch_77
        :pswitch_64
        :pswitch_51
        :pswitch_3e
        :pswitch_31
        :pswitch_1e
        :pswitch_13
        :pswitch_29a
    .end packed-switch
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 571
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_19

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 574
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static hasPermissionInManifest(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "permissions_handler"

    if-eqz p1, :cond_1f

    .line 369
    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 370
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return v0

    :catch_1d
    move-exception p0

    goto :goto_55

    :cond_1f
    if-nez p0, :cond_27

    const-string p0, "Unable to detect current Activity or App Context."

    .line 377
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 381
    :cond_27
    invoke-static {p0}, Lcom/baseflow/permissionhandler/PermissionUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_33

    const-string p0, "Unable to get Package info, will not be able to determine permissions to request."

    .line 384
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 388
    :cond_33
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 389
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 390
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_52} :catch_1d

    if-eqz p1, :cond_42

    return v0

    :goto_55
    const-string p1, "Unable to check manifest for permission: "

    .line 395
    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5a
    return v1
.end method

.method static isNeverAskAgainSelected(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 2

    .line 543
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static parseManifestName(Ljava/lang/String;)I
    .registers 26

    move-object/from16 v0, p0

    .line 30
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e

    const/16 v3, 0x1d

    const/16 v4, 0x1c

    const/16 v5, 0x1b

    const/16 v6, 0x18

    const/16 v7, 0x17

    const/16 v8, 0x16

    const/16 v9, 0x14

    const/16 v10, 0x13

    const/16 v11, 0x12

    const/16 v12, 0x11

    const/16 v13, 0xf

    const/16 v14, 0xd

    const/16 v15, 0xc

    const/16 v16, 0x9

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_292

    goto/16 :goto_26a

    :sswitch_3c
    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_26a

    :cond_46
    const/16 v24, 0x28

    goto/16 :goto_26a

    :sswitch_4a
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_26a

    :cond_54
    const/16 v24, 0x27

    goto/16 :goto_26a

    :sswitch_58
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_26a

    :cond_62
    const/16 v24, 0x26

    goto/16 :goto_26a

    :sswitch_66
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_26a

    :cond_70
    const/16 v24, 0x25

    goto/16 :goto_26a

    :sswitch_74
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_26a

    :cond_7e
    const/16 v24, 0x24

    goto/16 :goto_26a

    :sswitch_82
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_26a

    :cond_8c
    const/16 v24, 0x23

    goto/16 :goto_26a

    :sswitch_90
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_26a

    :cond_9a
    const/16 v24, 0x22

    goto/16 :goto_26a

    :sswitch_9e
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_26a

    :cond_a8
    const/16 v24, 0x21

    goto/16 :goto_26a

    :sswitch_ac
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto/16 :goto_26a

    :cond_b6
    const/16 v24, 0x20

    goto/16 :goto_26a

    :sswitch_ba
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto/16 :goto_26a

    :cond_c4
    const/16 v24, 0x1f

    goto/16 :goto_26a

    :sswitch_c8
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto/16 :goto_26a

    :cond_d2
    move/from16 v24, v2

    goto/16 :goto_26a

    :sswitch_d6
    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto/16 :goto_26a

    :cond_e0
    move/from16 v24, v3

    goto/16 :goto_26a

    :sswitch_e4
    const-string v1, "android.permission.USE_SIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto/16 :goto_26a

    :cond_ee
    move/from16 v24, v4

    goto/16 :goto_26a

    :sswitch_f2
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fc

    goto/16 :goto_26a

    :cond_fc
    move/from16 v24, v5

    goto/16 :goto_26a

    :sswitch_100
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    goto/16 :goto_26a

    :cond_10a
    const/16 v24, 0x1a

    goto/16 :goto_26a

    :sswitch_10e
    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    goto/16 :goto_26a

    :cond_118
    const/16 v24, 0x19

    goto/16 :goto_26a

    :sswitch_11c
    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    goto/16 :goto_26a

    :cond_126
    move/from16 v24, v6

    goto/16 :goto_26a

    :sswitch_12a
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_134

    goto/16 :goto_26a

    :cond_134
    move/from16 v24, v7

    goto/16 :goto_26a

    :sswitch_138
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    goto/16 :goto_26a

    :cond_142
    move/from16 v24, v8

    goto/16 :goto_26a

    :sswitch_146
    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    goto/16 :goto_26a

    :cond_150
    const/16 v24, 0x15

    goto/16 :goto_26a

    :sswitch_154
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    goto/16 :goto_26a

    :cond_15e
    move/from16 v24, v9

    goto/16 :goto_26a

    :sswitch_162
    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16c

    goto/16 :goto_26a

    :cond_16c
    move/from16 v24, v10

    goto/16 :goto_26a

    :sswitch_170
    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    goto/16 :goto_26a

    :cond_17a
    move/from16 v24, v11

    goto/16 :goto_26a

    :sswitch_17e
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188

    goto/16 :goto_26a

    :cond_188
    move/from16 v24, v12

    goto/16 :goto_26a

    :sswitch_18c
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    goto/16 :goto_26a

    :cond_196
    const/16 v24, 0x10

    goto/16 :goto_26a

    :sswitch_19a
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto/16 :goto_26a

    :cond_1a4
    move/from16 v24, v13

    goto/16 :goto_26a

    :sswitch_1a8
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2

    goto/16 :goto_26a

    :cond_1b2
    const/16 v24, 0xe

    goto/16 :goto_26a

    :sswitch_1b6
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0

    goto/16 :goto_26a

    :cond_1c0
    move/from16 v24, v14

    goto/16 :goto_26a

    :sswitch_1c4
    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce

    goto/16 :goto_26a

    :cond_1ce
    move/from16 v24, v15

    goto/16 :goto_26a

    :sswitch_1d2
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    goto/16 :goto_26a

    :cond_1dc
    const/16 v24, 0xb

    goto/16 :goto_26a

    :sswitch_1e0
    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ea

    goto/16 :goto_26a

    :cond_1ea
    const/16 v24, 0xa

    goto/16 :goto_26a

    :sswitch_1ee
    const-string v1, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f8

    goto/16 :goto_26a

    :cond_1f8
    move/from16 v24, v16

    goto/16 :goto_26a

    :sswitch_1fc
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_206

    goto/16 :goto_26a

    :cond_206
    move/from16 v24, v17

    goto/16 :goto_26a

    :sswitch_20a
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_214

    goto/16 :goto_26a

    :cond_214
    move/from16 v24, v18

    goto :goto_26a

    :sswitch_217
    const-string v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_220

    goto :goto_26a

    :cond_220
    const/16 v24, 0x6

    goto :goto_26a

    :sswitch_223
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22c

    goto :goto_26a

    :cond_22c
    const/16 v24, 0x5

    goto :goto_26a

    :sswitch_22f
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    goto :goto_26a

    :cond_238
    move/from16 v24, v19

    goto :goto_26a

    :sswitch_23b
    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_244

    goto :goto_26a

    :cond_244
    move/from16 v24, v20

    goto :goto_26a

    :sswitch_247
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_250

    goto :goto_26a

    :cond_250
    move/from16 v24, v21

    goto :goto_26a

    :sswitch_253
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25c

    goto :goto_26a

    :cond_25c
    move/from16 v24, v22

    goto :goto_26a

    :sswitch_25f
    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_268

    goto :goto_26a

    :cond_268
    move/from16 v24, v23

    :goto_26a
    packed-switch v24, :pswitch_data_338

    return v9

    :pswitch_26e
    return v11

    :pswitch_26f
    return v4

    :pswitch_270
    return v19

    :pswitch_271
    return v18

    :pswitch_272
    return v10

    :pswitch_273
    return v6

    :pswitch_274
    return v3

    :pswitch_275
    const/16 v0, 0x22

    return v0

    :pswitch_278
    const/16 v0, 0x20

    return v0

    :pswitch_27b
    const/16 v0, 0x21

    return v0

    :pswitch_27e
    return v22

    :pswitch_27f
    const/16 v0, 0x23

    return v0

    :pswitch_282
    return v21

    :pswitch_283
    return v16

    :pswitch_284
    return v13

    :pswitch_285
    return v2

    :pswitch_286
    const/16 v0, 0x1f

    return v0

    :pswitch_289
    return v15

    :pswitch_28a
    return v7

    :pswitch_28b
    return v5

    :pswitch_28c
    return v8

    :pswitch_28d
    return v20

    :pswitch_28e
    return v17

    :pswitch_28f
    return v12

    :pswitch_290
    return v23

    :pswitch_291
    return v14

    :sswitch_data_292
    .sparse-switch
        -0x7aed85b0 -> :sswitch_25f
        -0x72f13779 -> :sswitch_253
        -0x72ca2557 -> :sswitch_247
        -0x7286b8f4 -> :sswitch_23b
        -0x70918bc1 -> :sswitch_22f
        -0x6c1165bf -> :sswitch_223
        -0x6a47e915 -> :sswitch_217
        -0x5d1492dd -> :sswitch_20a
        -0x583351d1 -> :sswitch_1fc
        -0x49cb6684 -> :sswitch_1ee
        -0x456a1f70 -> :sswitch_1e0
        -0x363647ed -> :sswitch_1d2
        -0x3562fc09 -> :sswitch_1c4
        -0x3562e583 -> :sswitch_1b6
        -0x2f9abb27 -> :sswitch_1a8
        -0x1833add0 -> :sswitch_19a
        -0x3c1ac56 -> :sswitch_18c
        -0x550ba9 -> :sswitch_17e
        0x322a742 -> :sswitch_170
        0x6afff6d -> :sswitch_162
        0xa7a881c -> :sswitch_154
        0xcc96c13 -> :sswitch_146
        0x158e77d1 -> :sswitch_138
        0x1b9efa65 -> :sswitch_12a
        0x23fb06fe -> :sswitch_11c
        0x24658583 -> :sswitch_10e
        0x2933cd92 -> :sswitch_100
        0x2a564637 -> :sswitch_f2
        0x2ec2d2a2 -> :sswitch_e4
        0x39db9e69 -> :sswitch_d6
        0x4586b056 -> :sswitch_c8
        0x4bcdda0f -> :sswitch_ba
        0x516a29a7 -> :sswitch_ac
        0x69eee241 -> :sswitch_9e
        0x6a1dc9a7 -> :sswitch_90
        0x6d24f988 -> :sswitch_82
        0x75dd2d9c -> :sswitch_74
        0x78aeb38b -> :sswitch_66
        0x7aed10ce -> :sswitch_58
        0x7e09eacb -> :sswitch_4a
        0x7f2f307d -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_338
    .packed-switch 0x0
        :pswitch_291
        :pswitch_290
        :pswitch_28f
        :pswitch_28e
        :pswitch_28d
        :pswitch_28c
        :pswitch_28b
        :pswitch_28a
        :pswitch_291
        :pswitch_289
        :pswitch_28e
        :pswitch_286
        :pswitch_291
        :pswitch_291
        :pswitch_285
        :pswitch_284
        :pswitch_28d
        :pswitch_28e
        :pswitch_291
        :pswitch_28e
        :pswitch_283
        :pswitch_282
        :pswitch_27f
        :pswitch_27e
        :pswitch_290
        :pswitch_28e
        :pswitch_27b
        :pswitch_278
        :pswitch_28e
        :pswitch_275
        :pswitch_274
        :pswitch_282
        :pswitch_284
        :pswitch_273
        :pswitch_272
        :pswitch_271
        :pswitch_282
        :pswitch_270
        :pswitch_26f
        :pswitch_26e
        :pswitch_28e
    .end packed-switch
.end method

.method private static setPermissionDenied(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 607
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "sp_permission_handler_permission_was_denied_before"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static strictestStatus(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 491
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 492
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-static {v0}, Lcom/baseflow/permissionhandler/PermissionUtils;->strictestStatus(Ljava/util/Collection;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static strictestStatus(Ljava/util/Collection;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 474
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const/4 v0, 0x2

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 v0, 0x0

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 v0, 0x3

    .line 480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3c
    const/4 p0, 0x1

    .line 482
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 465
    invoke-static {p0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineDeniedVariant(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private static wasPermissionDeniedBefore(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "sp_permission_handler_permission_was_denied_before"

    .line 592
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
