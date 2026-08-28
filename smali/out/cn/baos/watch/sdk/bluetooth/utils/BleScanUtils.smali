.class public Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;
.super Ljava/lang/Object;
.source "BleScanUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeAndroidPDialog()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "android.content.pm.PackageParser$Package"

    .line 111
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 112
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    :try_start_1a
    const-string v2, "android.app.ActivityThread"

    .line 118
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    new-array v4, v0, [Ljava/lang/Class;

    .line 119
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    return-void
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0
.end method

.method public static getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method

.method public static getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getBluetoothGatt"

    .line 63
    invoke-static {p0, v2, v1}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :try_start_e
    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :goto_19
    return-object v2
.end method

.method public static getIBluetoothManager(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 76
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getBluetoothManager"

    invoke-static {v0, v3, v2}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static releaseAllScanClient()Z
    .registers 10

    const-string v0, "stopScan"

    const/4 v1, 0x0

    .line 16
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getIBluetoothManager(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    return v1

    .line 18
    :cond_e
    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getIBluetoothGatt(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    const-string v3, "unregisterClient"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 21
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_78

    const/4 v5, 0x2

    :try_start_23
    new-array v6, v5, [Ljava/lang/Class;

    .line 26
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v2, v0, v6}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_33

    move v6, v1

    goto :goto_3e

    :catch_33
    :try_start_33
    new-array v6, v4, [Ljava/lang/Class;

    .line 29
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-static {v2, v0, v6}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_78

    move v6, v4

    :goto_3e
    move v7, v1

    :goto_3f
    const/16 v8, 0x28

    if-gt v7, v8, :cond_71

    if-nez v6, :cond_56

    :try_start_45
    new-array v8, v5, [Ljava/lang/Object;

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    if-ne v6, v4, :cond_63

    :try_start_58
    new-array v8, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    :try_start_63
    new-array v8, v4, [Ljava/lang/Object;

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6e} :catch_6e

    :catch_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 50
    :cond_71
    :try_start_71
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_77} :catch_78

    return v4

    :catch_78
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
