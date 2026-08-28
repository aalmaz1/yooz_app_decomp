.class final Lcom/baseflow/permissionhandler/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private pendingRequestCount:I

.field private requestResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    return-void
.end method

.method private checkBluetoothPermissionStatus()I
    .registers 4

    .line 658
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 659
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    :goto_16
    if-eqz v0, :cond_20

    const-string v0, "permissions_handler"

    const-string v2, "Bluetooth permission missing in manifest"

    .line 661
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_20
    return v2
.end method

.method private checkNotificationPermissionStatus()I
    .registers 4

    .line 640
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_16

    .line 641
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    const/4 v0, 0x0

    return v0

    .line 649
    :cond_16
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    return v2

    .line 653
    :cond_21
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineDeniedVariant(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private determinePermissionStatus(I)I
    .registers 16

    const/16 v0, 0x11

    if-ne p1, v0, :cond_9

    .line 449
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->checkNotificationPermissionStatus()I

    move-result p1

    return p1

    :cond_9
    const/16 v0, 0x15

    if-ne p1, v0, :cond_12

    .line 453
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->checkBluetoothPermissionStatus()I

    move-result p1

    return p1

    :cond_12
    const/16 v0, 0x1f

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_20

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_20

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_29

    .line 459
    :cond_20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v0, :cond_29

    .line 460
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->checkBluetoothPermissionStatus()I

    move-result p1

    return p1

    :cond_29
    const/16 v2, 0x25

    const/4 v3, 0x0

    if-eq p1, v2, :cond_30

    if-nez p1, :cond_37

    .line 466
    :cond_30
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->isValidManifestForCalendarFullAccess()Z

    move-result v2

    if-nez v2, :cond_37

    return v3

    .line 471
    :cond_37
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    const-string v4, "permissions_handler"

    const/4 v5, 0x1

    if-nez v2, :cond_55

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No android specific permissions needed for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 480
    :cond_55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x16

    const/16 v9, 0x10

    if-nez v6, :cond_7e

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "No permissions found in manifest for: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v8, :cond_7d

    .line 494
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_7d

    return v7

    :cond_7d
    return v3

    .line 504
    :cond_7e
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-lt v4, v6, :cond_8c

    move v4, v5

    goto :goto_8d

    :cond_8c
    move v4, v3

    :goto_8d
    if-eqz v4, :cond_1bc

    .line 507
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 509
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_98
    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-ne p1, v9, :cond_ce

    .line 511
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 512
    iget-object v11, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    if-eqz v11, :cond_c6

    .line 513
    invoke-virtual {v11, v10}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 514
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 516
    :cond_c6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_ce
    if-ne p1, v8, :cond_e7

    .line 519
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v1, :cond_db

    .line 520
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_db
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v10

    .line 526
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_e7
    if-ne p1, v6, :cond_f7

    .line 528
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v10

    .line 531
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_f7
    const/16 v11, 0x18

    if-ne p1, v11, :cond_10d

    .line 534
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v10

    .line 537
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_10d
    const/16 v11, 0x1b

    if-ne p1, v11, :cond_128

    .line 540
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 541
    invoke-virtual {v10}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v10

    .line 544
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    :cond_128
    const/16 v11, 0x22

    if-ne p1, v11, :cond_150

    .line 546
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v0, :cond_147

    .line 547
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 548
    invoke-virtual {v10}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v10

    .line 551
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 553
    :cond_147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    :cond_150
    const/16 v12, 0x9

    if-eq p1, v12, :cond_170

    const/16 v12, 0x20

    if-ne p1, v12, :cond_159

    goto :goto_170

    .line 569
    :cond_159
    iget-object v11, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v11, v10}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_98

    .line 571
    iget-object v11, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v11, v10}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineDeniedVariant(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 556
    :cond_170
    :goto_170
    iget-object v12, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v12, v10}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 558
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v11, :cond_183

    .line 559
    iget-object v11, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const-string v13, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {v11, v13}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    goto :goto_184

    :cond_183
    move v11, v12

    :goto_184
    if-nez v11, :cond_193

    const/4 v11, -0x1

    if-ne v12, v11, :cond_193

    const/4 v10, 0x3

    .line 562
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    :cond_193
    if-nez v12, :cond_19e

    .line 564
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 566
    :cond_19e
    iget-object v11, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v11, v10}, Lcom/baseflow/permissionhandler/PermissionUtils;->determineDeniedVariant(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 575
    :cond_1ad
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1bc

    .line 576
    invoke-static {v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->strictestStatus(Ljava/util/Collection;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1bc
    return v5
.end method

.method private isValidManifestForCalendarFullAccess()Z
    .registers 6

    .line 672
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const-string v3, "android.permission.WRITE_CALENDAR"

    .line 673
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    if-eqz v0, :cond_23

    const-string v4, "android.permission.READ_CALENDAR"

    .line 674
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    if-eqz v3, :cond_2a

    if-eqz v0, :cond_2a

    move v4, v1

    goto :goto_2b

    :cond_2a
    move v4, v2

    :goto_2b
    if-nez v4, :cond_3e

    const-string v1, "permissions_handler"

    if-nez v3, :cond_36

    const-string v3, "android.permission.WRITE_CALENDAR missing in manifest"

    .line 678
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-nez v0, :cond_3d

    const-string v0, "android.permission.READ_CALENDAR missing in manifest"

    .line 680
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v2

    :cond_3e
    return v1
.end method

.method private launchSpecialPermission(Ljava/lang/String;I)V
    .registers 6

    .line 594
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 598
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    .line 599
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 600
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 603
    :cond_2e
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 604
    iget p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    return-void
.end method


# virtual methods
.method checkPermissionStatus(ILcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;)V
    .registers 3

    .line 300
    invoke-direct {p0, p1}, Lcom/baseflow/permissionhandler/PermissionManager;->determinePermissionStatus(I)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;->onSuccess(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    .line 73
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    const/4 p3, 0x0

    if-nez p2, :cond_6

    return p3

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 82
    iput p3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    return p3

    :cond_d
    const/16 v0, 0xd1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2e

    .line 92
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->context:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    if-eqz p2, :cond_2b

    .line 94
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    move p3, v1

    :cond_2b
    const/16 p1, 0x10

    goto :goto_8e

    :cond_2e
    const/16 v0, 0xd2

    if-ne p1, v0, :cond_40

    .line 101
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_3f

    .line 102
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p3

    const/16 p1, 0x16

    goto :goto_8e

    :cond_3f
    return p3

    :cond_40
    const/16 v0, 0xd3

    if-ne p1, v0, :cond_4d

    .line 111
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p3

    const/16 p1, 0x17

    goto :goto_8e

    :cond_4d
    const/16 v0, 0xd4

    if-ne p1, v0, :cond_5e

    .line 120
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p3

    const/16 p1, 0x18

    goto :goto_8e

    :cond_5e
    const/16 v0, 0xd5

    if-ne p1, v0, :cond_73

    .line 129
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 130
    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p3

    const/16 p1, 0x1b

    goto :goto_8e

    :cond_73
    const/16 v0, 0xd6

    if-ne p1, v0, :cond_ac

    const-string p1, "alarm"

    .line 139
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 140
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_8b

    .line 141
    invoke-virtual {p1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p1

    move p3, p1

    goto :goto_8c

    :cond_8b
    move p3, v1

    :goto_8c
    const/16 p1, 0x22

    .line 151
    :goto_8e
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    .line 155
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    if-eqz p2, :cond_ab

    if-nez p1, :cond_ab

    .line 156
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->onSuccess(Ljava/util/Map;)V

    :cond_ab
    return v1

    :cond_ac
    return p3
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .registers 11

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    .line 168
    iput v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    return v1

    .line 172
    :cond_8
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    if-nez p1, :cond_d

    return v1

    .line 176
    :cond_d
    array-length p1, p2

    if-nez p1, :cond_1b

    array-length p1, p3

    if-nez p1, :cond_1b

    const-string p1, "permissions_handler"

    const-string p2, "onRequestPermissionsResult is called without results. This is probably caused by interfering request codes. If you see this error, please file an issue in flutter-permission-handler, including a list of plugins used by this application: https://github.com/Baseflow/flutter-permission-handler/issues"

    .line 177
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 183
    :cond_1b
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 184
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "android.permission.READ_CALENDAR"

    if-ltz v2, :cond_7a

    .line 187
    aget v2, p3, v2

    .line 188
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 189
    invoke-static {v4, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v2

    .line 190
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/16 v5, 0x24

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_7a

    .line 195
    aget p1, p3, p1

    .line 196
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 197
    invoke-static {v4, v3, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p1

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->strictestStatus(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 199
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/16 v4, 0x25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_7a
    :goto_7a
    array-length p1, p2

    if-ge v1, p1, :cond_1b9

    .line 206
    aget-object p1, p2, v1

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b5

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    goto/16 :goto_1b5

    .line 214
    :cond_8d
    invoke-static {p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->parseManifestName(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x14

    if-ne v2, v4, :cond_97

    goto/16 :goto_1b5

    .line 219
    :cond_97
    aget v4, p3, v1

    const/16 v5, 0x8

    if-ne v2, v5, :cond_c2

    .line 222
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 223
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p1

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->strictestStatus(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    .line 225
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b5

    :cond_c2
    const/4 v5, 0x7

    if-ne v2, v5, :cond_107

    .line 227
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 228
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 230
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 228
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_e4
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b5

    .line 233
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 234
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 235
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 233
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b5

    :cond_107
    const/4 v5, 0x4

    if-ne v2, v5, :cond_12b

    .line 238
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 239
    invoke-static {v2, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p1

    .line 241
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b5

    .line 242
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b5

    :cond_12b
    const/4 v6, 0x3

    if-ne v2, v6, :cond_17b

    .line 245
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 246
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p1

    .line 248
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-ge v4, v6, :cond_153

    .line 249
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_153

    .line 250
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 250
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_153
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16d

    .line 257
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 257
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_16d
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b5

    :cond_17b
    const/16 v5, 0x9

    if-eq v2, v5, :cond_1a4

    const/16 v5, 0x20

    if-ne v2, v5, :cond_184

    goto :goto_1a4

    .line 269
    :cond_184
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b5

    .line 270
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 272
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 270
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b5

    .line 266
    :cond_1a4
    :goto_1a4
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 268
    invoke-direct {p0, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->determinePermissionStatus(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 266
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b5
    :goto_1b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7a

    .line 276
    :cond_1b9
    iget p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    array-length p2, p3

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    .line 279
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    if-eqz p2, :cond_1ca

    if-nez p1, :cond_1ca

    .line 280
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->onSuccess(Ljava/util/Map;)V

    :cond_1ca
    const/4 p1, 0x1

    return p1
.end method

.method requestPermissions(Ljava/util/List;Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;",
            "Lcom/baseflow/permissionhandler/ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 334
    iget v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    const-string v1, "PermissionHandler.PermissionManager"

    if-lez v0, :cond_c

    const-string p1, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 335
    invoke-interface {p3, v1, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_c
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1d

    const-string p1, "permissions_handler"

    const-string p2, "Unable to detect current Activity."

    .line 342
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Unable to detect current Android Activity."

    .line 344
    invoke-interface {p3, v1, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_1d
    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    .line 351
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/4 p2, 0x0

    .line 352
    iput p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    .line 354
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x18

    if-eqz v0, :cond_153

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->determinePermissionStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5d

    .line 358
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 359
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 364
    :cond_5d
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x16

    const/16 v5, 0x1e

    const/16 v6, 0x10

    if-eqz v2, :cond_11e

    .line 368
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_78

    goto/16 :goto_11e

    .line 390
    :cond_78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_86

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    const/16 v1, 0xd1

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->launchSpecialPermission(Ljava/lang/String;I)V

    goto :goto_32

    .line 394
    :cond_86
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_98

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_98

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    const/16 v1, 0xd2

    .line 395
    invoke-direct {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->launchSpecialPermission(Ljava/lang/String;I)V

    goto :goto_32

    .line 398
    :cond_98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_a8

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    const/16 v1, 0xd3

    .line 399
    invoke-direct {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->launchSpecialPermission(Ljava/lang/String;I)V

    goto :goto_32

    .line 402
    :cond_a8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_b7

    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    const/16 v1, 0xd4

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->launchSpecialPermission(Ljava/lang/String;I)V

    goto/16 :goto_32

    .line 406
    :cond_b7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x1b

    if-ne v1, v4, :cond_c8

    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    const/16 v1, 0xd5

    .line 407
    invoke-direct {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->launchSpecialPermission(Ljava/lang/String;I)V

    goto/16 :goto_32

    .line 410
    :cond_c8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v1, v4, :cond_df

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x22

    if-ne v1, v4, :cond_df

    const-string v0, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    const/16 v1, 0xd6

    .line 411
    invoke-direct {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->launchSpecialPermission(Ljava/lang/String;I)V

    goto/16 :goto_32

    .line 414
    :cond_df
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x25

    if-eq v1, v4, :cond_fc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_ee

    goto :goto_fc

    .line 425
    :cond_ee
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 426
    iget v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    goto/16 :goto_32

    .line 416
    :cond_fc
    :goto_fc
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->isValidManifestForCalendarFullAccess()Z

    move-result v1

    if-eqz v1, :cond_113

    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 418
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALENDAR"

    .line 419
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    goto/16 :goto_32

    .line 422
    :cond_113
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_32

    .line 369
    :cond_11e
    :goto_11e
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 372
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 375
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_148

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_148

    .line 380
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_32

    .line 382
    :cond_148
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_32

    .line 431
    :cond_153
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_166

    new-array p1, p2, [Ljava/lang/String;

    .line 432
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 433
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {p2, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 440
    :cond_166
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    if-eqz p1, :cond_173

    iget p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->pendingRequestCount:I

    if-nez p2, :cond_173

    .line 441
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->onSuccess(Ljava/util/Map;)V

    :cond_173
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method shouldShowRequestPermissionRationale(ILcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .registers 7

    .line 611
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    const-string v1, "permissions_handler"

    if-nez v0, :cond_13

    const-string p1, "Unable to detect current Activity."

    .line 612
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PermissionHandler.PermissionManager"

    const-string p2, "Unable to detect current Android Activity."

    .line 614
    invoke-interface {p3, p1, p2}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 620
    :cond_13
    invoke-static {v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_30

    .line 624
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "No android specific permissions needed for: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-interface {p2, v0}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->onSuccess(Z)V

    return-void

    .line 629
    :cond_30
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 630
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "No permissions found in manifest for: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " no need to show request rationale"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-interface {p2, v0}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->onSuccess(Z)V

    return-void

    .line 635
    :cond_52
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->onSuccess(Z)V

    return-void
.end method
