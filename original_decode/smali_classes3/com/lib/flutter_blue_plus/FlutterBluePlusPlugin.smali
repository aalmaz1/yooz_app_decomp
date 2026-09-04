.class public Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;
.super Ljava/lang/Object;
.source "FlutterBluePlusPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;,
        Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;,
        Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;
    }
.end annotation


# static fields
.field private static final CCCD:Ljava/lang/String; = "2902"

.field private static final NAMESPACE:Ljava/lang/String; = "flutter_blue_plus"

.field private static final TAG:Ljava/lang/String; = "[FBP-Android]"


# instance fields
.field private activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private context:Landroid/content/Context;

.field private final enableBluetoothRequestCode:I

.field private lastEventId:I

.field private logLevel:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field private final mAdvSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoConnected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothAdapterStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothBondStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final mBondingDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentlyConnectingDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mIsScanning:Z

.field private final mMethodCallMutex:Ljava/util/concurrent/Semaphore;

.field private final mMtu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFilters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteChr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final operationsOnPermission:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;",
            ">;"
        }
    .end annotation
.end field

.field private pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private scanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public static synthetic $r8$lambda$10fY8qimMhcQvJyydUepyHgwUtc(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$onMethodCall$4(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BGmL2f7Tfock3u-98R3cL93T9cY(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;IZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$onMethodCall$3(Lio/flutter/plugin/common/MethodChannel$Result;IZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DgO_dphCH6pO2YlweNFEBEGK1BA(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$onMethodCall$5(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hfd8ASH9Z6fQ01i39m10MCJfdek(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$invokeMethodUIThread$6(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k0HtAIopElFrN19ZsAuzBWRnQBk(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$onMethodCall$0(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbIjsLZFlIq8jAeISn9mNWd42cU(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$onMethodCall$1(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y0cOEayaPRLI3D60pkABFo4ZcFU(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lambda$onMethodCall$2(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdvSeen(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAdvSeen:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoConnected(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBondingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBondingDevices:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentlyConnectingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScanning(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMethodCallMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMethodCallMutex:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtu(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMtu:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanFilters(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanFilters:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWriteChr(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteChr:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWriteDesc(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteDesc:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsScanning(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$macquireMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->acquireMutex(Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisconnectAllDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->disconnectAllDevices(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilterKeywords(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->filterKeywords(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetScanCallback(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    invoke-direct {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->invokeMethodUIThread(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanCountIncrement(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->scanCountIncrement(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smadapterStateString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->adapterStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smbondStateString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bondStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smbytesToHex([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smconnectionStateString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->connectionStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgattErrorString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->gattErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhciStatusString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hciStatusString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smscanFailedString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->scanFailedString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->logLevel:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    .line 103
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMethodCallMutex:Ljava/util/concurrent/Semaphore;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBondingDevices:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMtu:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteChr:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteDesc:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAdvSeen:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanCounts:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanFilters:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->operationsOnPermission:Ljava/util/Map;

    const/16 v0, 0x5ac

    .line 116
    iput v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lastEventId:I

    const v0, 0x700c1f39

    .line 118
    iput v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->enableBluetoothRequestCode:I

    .line 1916
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;

    invoke-direct {v0, p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapterStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1974
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;

    invoke-direct {v0, p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothBondStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2132
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;

    invoke-direct {v0, p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method private acquireMutex(Ljava/util/concurrent/Semaphore;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :catch_0
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "failed to acquire mutex, retrying"

    invoke-direct {p0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static adapterStateString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ADAPTER_STATE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "turningOff"

    return-object p0

    :pswitch_1
    const-string p0, "on"

    return-object p0

    :pswitch_2
    const-string p0, "turningOn"

    return-object p0

    :pswitch_3
    const-string p0, "off"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private askPermission(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;",
            ")V"
        }
    .end annotation

    .line 1572
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1573
    invoke-interface {p2, v1, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;->op(ZLjava/lang/String;)V

    return-void

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->operationsOnPermission:Ljava/util/Map;

    iget v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lastEventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 1581
    invoke-interface {p2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1582
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lastEventId:I

    .line 1580
    invoke-static {p2, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1585
    iget p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lastEventId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->lastEventId:I

    return-void
.end method

.method private static bluetoothStatusString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 2921
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_BLE_ERROR ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FEATURE_NOT_SUPPORTED"

    return-object p0

    :pswitch_1
    const-string p0, "FEATURE_SUPPORTED"

    return-object p0

    :pswitch_2
    const-string p0, "ERROR_PROFILE_SERVICE_NOT_BOUND"

    return-object p0

    :cond_0
    const-string p0, "ERROR_GATT_WRITE_REQUEST_BUSY"

    return-object p0

    :cond_1
    const-string p0, "ERROR_GATT_WRITE_NOT_ALLOWED"

    return-object p0

    :cond_2
    const-string p0, "ERROR_UNKNOWN"

    return-object p0

    :cond_3
    const-string p0, "ERROR_MISSING_BLUETOOTH_CONNECT_PERMISSION"

    return-object p0

    :cond_4
    const-string p0, "ERROR_DEVICE_NOT_BONDED"

    return-object p0

    :cond_5
    const-string p0, "ERROR_BLUETOOTH_NOT_ALLOWED"

    return-object p0

    :cond_6
    const-string p0, "ERROR_BLUETOOTH_NOT_ENABLED"

    return-object p0

    :cond_7
    const-string p0, "SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static bmAdapterStateEnum(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static bmBondStateEnum(I)I
    .locals 1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static bmConnectionPriorityParse(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static bmConnectionStateEnum(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static bondStateString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_BOND_STATE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "bonded"

    return-object p0

    :pswitch_1
    const-string p0, "bonding"

    return-object p0

    :pswitch_2
    const-string p0, "bond-none"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2828
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2829
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    .line 2830
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 2831
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2833
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static connectionStateString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_CONNECTION_STATE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "disconnecting"

    return-object p0

    :cond_1
    const-string p0, "connected"

    return-object p0

    :cond_2
    const-string p0, "connecting"

    return-object p0

    :cond_3
    const-string p0, "disconnected"

    return-object p0
.end method

.method private disconnectAllDevices(Ljava/lang/String;)V
    .locals 6

    .line 1741
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectAllDevices("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    const-string v2, "adapterTurnOff"

    if-ne p1, v2, :cond_0

    .line 1754
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    goto :goto_0

    .line 1758
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1761
    sget-object v3, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calling disconnect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1766
    sget-object v3, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calling close: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 1771
    :cond_1
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1772
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1773
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBondingDevices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1774
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMtu:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1775
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteChr:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1776
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteDesc:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1777
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;",
            ")V"
        }
    .end annotation

    .line 1554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1556
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1558
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1563
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1564
    invoke-interface {p2, p1, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;->op(ZLjava/lang/String;)V

    return-void

    .line 1568
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->askPermission(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V

    return-void
.end method

.method private filterKeywords(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1700
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 1706
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1707
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    return v0
.end method

.method private static gattErrorString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x101

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2903
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_GATT_ERROR ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GATT_CONNECTION_CONGESTED"

    return-object p0

    :pswitch_1
    const-string p0, "GATT_NOT_ENCRYPTED"

    return-object p0

    :pswitch_2
    const-string p0, "GATT_ENCRYPTED_NO_MITM"

    return-object p0

    :pswitch_3
    const-string p0, "GATT_SERVICE_STARTED"

    return-object p0

    :pswitch_4
    const-string p0, "GATT_INVALID_CFG"

    return-object p0

    :pswitch_5
    const-string p0, "GATT_MORE"

    return-object p0

    :pswitch_6
    const-string p0, "GATT_AUTH_FAIL"

    return-object p0

    :pswitch_7
    const-string p0, "GATT_PENDING"

    return-object p0

    :pswitch_8
    const-string p0, "GATT_ILLEGAL_PARAMETER"

    return-object p0

    :pswitch_9
    const-string p0, "GATT_CMD_STARTED"

    return-object p0

    :pswitch_a
    const-string p0, "GATT_ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "GATT_BUSY"

    return-object p0

    :pswitch_c
    const-string p0, "GATT_DB_FULL"

    return-object p0

    :pswitch_d
    const-string p0, "GATT_WRONG_STATE"

    return-object p0

    :pswitch_e
    const-string p0, "GATT_INTERNAL_ERROR"

    return-object p0

    :pswitch_f
    const-string p0, "GATT_NO_RESOURCES"

    return-object p0

    :pswitch_10
    const-string p0, "GATT_INSUFFICIENT_RESOURCES"

    return-object p0

    :pswitch_11
    const-string p0, "GATT_UNSUPPORTED_GROUP"

    return-object p0

    :pswitch_12
    const-string p0, "GATT_INSUFFICIENT_ENCRYPTION"

    return-object p0

    :pswitch_13
    const-string p0, "GATT_UNLIKELY"

    return-object p0

    :pswitch_14
    const-string p0, "GATT_INVALID_ATTRIBUTE_LENGTH"

    return-object p0

    :pswitch_15
    const-string p0, "GATT_INSUFFICIENT_KEY_SIZE"

    return-object p0

    :pswitch_16
    const-string p0, "GATT_ATTR_NOT_LONG"

    return-object p0

    :pswitch_17
    const-string p0, "GATT_ATTR_NOT_FOUND"

    return-object p0

    :pswitch_18
    const-string p0, "GATT_PREPARE_QUEUE_FULL"

    return-object p0

    :pswitch_19
    const-string p0, "GATT_INSUFFICIENT_AUTHORIZATION"

    return-object p0

    :pswitch_1a
    const-string p0, "GATT_INVALID_OFFSET"

    return-object p0

    :pswitch_1b
    const-string p0, "GATT_REQUEST_NOT_SUPPORTED"

    return-object p0

    :pswitch_1c
    const-string p0, "GATT_INSUFFICIENT_AUTHENTICATION"

    return-object p0

    :pswitch_1d
    const-string p0, "GATT_INVALID_PDU"

    return-object p0

    :pswitch_1e
    const-string p0, "GATT_WRITE_NOT_PERMITTED"

    return-object p0

    :pswitch_1f
    const-string p0, "GATT_READ_NOT_PERMITTED"

    return-object p0

    :pswitch_20
    const-string p0, "GATT_INVALID_HANDLE"

    return-object p0

    :pswitch_21
    const-string p0, "GATT_SUCCESS"

    return-object p0

    :cond_0
    const-string p0, "GATT_FAILURE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCharacteristicFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;)",
            "Landroid/bluetooth/BluetoothGattCharacteristic;"
        }
    .end annotation

    .line 1681
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1682
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDescriptorFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;)",
            "Landroid/bluetooth/BluetoothGattDescriptor;"
        }
    .end annotation

    .line 1691
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 1692
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMaxPayload(Ljava/lang/String;IZ)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x200

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1725
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMtu:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    const/16 p1, 0x17

    .line 1727
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1730
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method static getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;
    .locals 5

    .line 2740
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 2743
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2748
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 2749
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 2750
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getScanCallback()Landroid/bluetooth/le/ScanCallback;
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    if-nez v0, :cond_0

    .line 2045
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;

    invoke-direct {v0, p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object v0
.end method

.method private getServiceFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattService;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)",
            "Landroid/bluetooth/BluetoothGattService;"
        }
    .end annotation

    .line 1671
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 1672
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static hciStatusString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x85

    if-eq p0, v0, :cond_1

    const/16 v0, 0x101

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_HCI_ERROR ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "PACKET_TOO_LONG"

    return-object p0

    :pswitch_1
    const-string p0, "OPERATION_CANCELLED_BY_HOST"

    return-object p0

    :pswitch_2
    const-string p0, "LIMIT_REACHED"

    return-object p0

    :pswitch_3
    const-string p0, "UNKNOWN_ADVERTISING_IDENTIFIER"

    return-object p0

    :pswitch_4
    const-string p0, "TYPE0_SUBMAP_NOT_DEFINED"

    return-object p0

    :pswitch_5
    const-string p0, "COARSE_CLOCK_ADJUSTMENT_REJECTED"

    return-object p0

    :pswitch_6
    const-string p0, "MAC_CONNECTION_FAILED"

    return-object p0

    :pswitch_7
    const-string p0, "CONNECTION_FAILED_ESTABLISHMENT"

    return-object p0

    :pswitch_8
    const-string p0, "CONNECTION_TERMINATED_MIC_FAILURE"

    return-object p0

    :pswitch_9
    const-string p0, "ADVERTISING_TIMEOUT"

    return-object p0

    :pswitch_a
    const-string p0, "UNACCEPTABLE_CONNECTION_PARAMETERS"

    return-object p0

    :pswitch_b
    const-string p0, "CONTROLLER_BUSY"

    return-object p0

    :pswitch_c
    const-string p0, "CONNECTION_REJECTED_NO_SUITABLE_CHANNEL"

    return-object p0

    :pswitch_d
    const-string p0, "HOST_BUSY_PAIRING"

    return-object p0

    :pswitch_e
    const-string p0, "SECURE_SIMPLE_PAIRING_NOT_SUPPORTED"

    return-object p0

    :pswitch_f
    const-string p0, "INQUIRY_RESPONSE_TOO_LARGE"

    return-object p0

    :pswitch_10
    const-string p0, "ROLE_SWITCH_FAILED"

    return-object p0

    :pswitch_11
    const-string p0, "RESERVED_SLOT_VIOLATION"

    return-object p0

    :pswitch_12
    const-string p0, "UNDEFINED_0x33"

    return-object p0

    :pswitch_13
    const-string p0, "ROLE_SWITCH_PENDING"

    return-object p0

    :pswitch_14
    const-string p0, "UNDEFINED_0x31"

    return-object p0

    :pswitch_15
    const-string p0, "PARAMETER_OUT_OF_RANGE"

    return-object p0

    :pswitch_16
    const-string p0, "INSUFFICIENT_SECURITY"

    return-object p0

    :pswitch_17
    const-string p0, "CHANNEL_CLASSIFICATION_NOT_SUPPORTED"

    return-object p0

    :pswitch_18
    const-string p0, "QOS_REJECTED"

    return-object p0

    :pswitch_19
    const-string p0, "QOS_UNACCEPTABLE_PARAMETER"

    return-object p0

    :pswitch_1a
    const-string p0, "UNDEFINED_0x2B"

    return-object p0

    :pswitch_1b
    const-string p0, "DIFFERENT_TRANSACTION_COLLISION"

    return-object p0

    :pswitch_1c
    const-string p0, "PAIRING_WITH_UNIT_KEY_NOT_SUPPORTED"

    return-object p0

    :pswitch_1d
    const-string p0, "INSTANT_PASSED"

    return-object p0

    :pswitch_1e
    const-string p0, "REQUESTED_QOS_NOT_SUPPORTED"

    return-object p0

    :pswitch_1f
    const-string p0, "LINK_KEY_CANNOT_BE_EXCHANGED"

    return-object p0

    :pswitch_20
    const-string p0, "ENCRYPTION_MODE_NOT_ACCEPTABLE"

    return-object p0

    :pswitch_21
    const-string p0, "LMP_PDU_NOT_ALLOWED"

    return-object p0

    :pswitch_22
    const-string p0, "LMP_OR_LL_ERROR_TRANS_COLLISION"

    return-object p0

    :pswitch_23
    const-string p0, "LMP_OR_LL_RESPONSE_TIMEOUT"

    return-object p0

    :pswitch_24
    const-string p0, "ROLE_CHANGE_NOT_ALLOWED"

    return-object p0

    :pswitch_25
    const-string p0, "UNSUPPORTED_LMP_OR_LL_PARAMETER_VALUE"

    return-object p0

    :pswitch_26
    const-string p0, "UNSPECIFIED"

    return-object p0

    :pswitch_27
    const-string p0, "INVALID_LMP_OR_LL_PARAMETERS"

    return-object p0

    :pswitch_28
    const-string p0, "SCO_AIR_MODE_REJECTED"

    return-object p0

    :pswitch_29
    const-string p0, "SCO_INTERVAL_REJECTED"

    return-object p0

    :pswitch_2a
    const-string p0, "SCO_OFFSET_REJECTED"

    return-object p0

    :pswitch_2b
    const-string p0, "UNSUPPORTED_REMOTE_FEATURE"

    return-object p0

    :pswitch_2c
    const-string p0, "UNKNOWN_LMP_PDU"

    return-object p0

    :pswitch_2d
    const-string p0, "PAIRING_NOT_ALLOWED"

    return-object p0

    :pswitch_2e
    const-string p0, "REPEATED_ATTEMPTS"

    return-object p0

    :pswitch_2f
    const-string p0, "CONNECTION_TERMINATED_BY_LOCAL_HOST"

    return-object p0

    :pswitch_30
    const-string p0, "REMOTE_DEVICE_TERMINATED_CONNECTION_POWER_OFF"

    return-object p0

    :pswitch_31
    const-string p0, "REMOTE_DEVICE_TERMINATED_CONNECTION_LOW_RESOURCES"

    return-object p0

    :pswitch_32
    const-string p0, "REMOTE_USER_TERMINATED_CONNECTION"

    return-object p0

    :pswitch_33
    const-string p0, "INVALID_COMMAND_PARAMETERS"

    return-object p0

    :pswitch_34
    const-string p0, "UNSUPPORTED_PARAMETER_VALUE"

    return-object p0

    :pswitch_35
    const-string p0, "CONNECTION_ACCEPT_TIMEOUT_EXCEEDED"

    return-object p0

    :pswitch_36
    const-string p0, "CONNECTION_REJECTED_UNACCEPTABLE_MAC_ADDRESS"

    return-object p0

    :pswitch_37
    const-string p0, "CONNECTION_REJECTED_SECURITY_REASONS"

    return-object p0

    :pswitch_38
    const-string p0, "CONNECTION_REJECTED_LIMITED_RESOURCES"

    return-object p0

    :pswitch_39
    const-string p0, "COMMAND_DISALLOWED"

    return-object p0

    :pswitch_3a
    const-string p0, "CONNECTION_ALREADY_EXISTS"

    return-object p0

    :pswitch_3b
    const-string p0, "MAX_NUM_OF_CONNECTIONS_EXCEEDED"

    return-object p0

    :pswitch_3c
    const-string p0, "CONNECTION_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_3d
    const-string p0, "LINK_SUPERVISION_TIMEOUT"

    return-object p0

    :pswitch_3e
    const-string p0, "MEMORY_FULL"

    return-object p0

    :pswitch_3f
    const-string p0, "PIN_OR_KEY_MISSING"

    return-object p0

    :pswitch_40
    const-string p0, "AUTHENTICATION_FAILURE"

    return-object p0

    :pswitch_41
    const-string p0, "PAGE_TIMEOUT"

    return-object p0

    :pswitch_42
    const-string p0, "HARDWARE_FAILURE"

    return-object p0

    :pswitch_43
    const-string p0, "UNKNOWN_CONNECTION_IDENTIFIER"

    return-object p0

    :pswitch_44
    const-string p0, "UNKNOWN_COMMAND"

    return-object p0

    :pswitch_45
    const-string p0, "SUCCESS"

    return-object p0

    :cond_0
    const-string p0, "FAILURE_REGISTERING_CLIENT"

    return-object p0

    :cond_1
    const-string p0, "ANDROID_SPECIFIC_ERROR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    .line 2813
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2814
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2817
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v0, 0x1

    .line 2818
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private invokeMethodUIThread(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2789
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAdapterOn()Z
    .locals 3

    const/4 v0, 0x0

    .line 2803
    :try_start_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private synthetic lambda$invokeMethodUIThread$6(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 2791
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    .line 2792
    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2794
    :cond_0
    sget-object p2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invokeMethodUIThread: tried to call method on closed channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onMethodCall$0(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 0

    .line 389
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "N/A"

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 390
    :goto_1
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onMethodCall$1(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v0

    const-string p3, "FlutterBluePlus requires %s permission"

    .line 428
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "turnOn"

    .line 427
    invoke-interface {p1, v0, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 432
    :cond_0
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 433
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 437
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    iget-object p3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {p3}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x700c1f39

    invoke-virtual {p3, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 441
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onMethodCall$2(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "FlutterBluePlus requires %s permission"

    .line 463
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "turnOff"

    .line 462
    invoke-interface {p1, v0, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 467
    :cond_0
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 468
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 473
    :cond_1
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p2

    .line 475
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onMethodCall$3(Lio/flutter/plugin/common/MethodChannel$Result;IZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const-string v3, "startScan"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p11, :cond_0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p12, v5, v4

    const-string v4, "FlutterBluePlus requires %s permission"

    .line 516
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-interface {p1, v3, v4, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->isAdapterOn()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v5, "bluetooth must be turned on"

    new-array v4, v4, [Ljava/lang/Object;

    .line 522
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 527
    :cond_1
    iget-object v6, v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v5, "getBluetoothLeScanner() is null. Is the Adapter on?"

    new-array v4, v4, [Ljava/lang/Object;

    .line 529
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 534
    :cond_2
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    move/from16 v3, p2

    .line 535
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    const/16 v3, 0xff

    .line 537
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setPhy(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move/from16 v3, p3

    .line 538
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 540
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    .line 543
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    .line 546
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    move-object/from16 v8, p4

    .line 547
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v9

    .line 548
    new-instance v10, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v10, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    .line 549
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v4

    .line 553
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    move-object/from16 v8, p5

    .line 554
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 555
    new-instance v10, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v10, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    .line 556
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v7, v4

    .line 560
    :goto_2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    move-object/from16 v8, p6

    .line 561
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 562
    new-instance v10, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v10, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    .line 563
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 567
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-lt v7, v8, :cond_6

    .line 568
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 572
    new-instance v7, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setAdvertisingDataType(I)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v7

    .line 573
    new-instance v8, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v8}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setAdvertisingDataType(I)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v8

    .line 574
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v7, v4

    .line 580
    :goto_3
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "mask"

    const-string v10, "data"

    if-ge v7, v8, :cond_8

    move-object/from16 v8, p8

    .line 581
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, "manufacturer_id"

    .line 582
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 583
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 584
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 586
    array-length v11, v9

    if-nez v11, :cond_7

    .line 587
    new-instance v9, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v9}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v9, v12, v10}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    goto :goto_4

    .line 589
    :cond_7
    new-instance v11, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v11}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v11, v12, v10, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v9

    .line 591
    :goto_4
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 595
    :cond_8
    :goto_5
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_a

    move-object/from16 v7, p9

    .line 596
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v11, "service"

    .line 597
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v11

    .line 598
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 599
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 601
    array-length v13, v8

    if-nez v13, :cond_9

    .line 602
    new-instance v8, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v8}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v8, v11, v12}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v8

    goto :goto_6

    .line 604
    :cond_9
    new-instance v13, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v13}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v13, v11, v12, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v8

    .line 606
    :goto_6
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v4, p10

    .line 610
    iput-object v4, v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanFilters:Ljava/util/HashMap;

    .line 613
    iget-object v4, v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAdvSeen:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 614
    iget-object v4, v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanCounts:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 616
    invoke-direct {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v4

    invoke-virtual {v6, v3, v2, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 618
    iput-boolean v5, v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    .line 620
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onMethodCall$4(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "FlutterBluePlus requires %s permission"

    .line 650
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "getSystemDevices"

    .line 649
    invoke-interface {p1, v0, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 655
    :cond_0
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object p2

    .line 657
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 659
    invoke-virtual {p0, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 663
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "devices"

    .line 664
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onMethodCall$5(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 701
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "connect"

    const/4 v4, 0x0

    if-nez p4, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p5, p2, v4

    const-string p3, "FlutterBluePlus requires %s for new connection"

    .line 688
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 687
    invoke-interface {p1, v3, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 693
    :cond_0
    invoke-direct {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->isAdapterOn()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p2, "bluetooth must be turned on"

    new-array p3, v4, [Ljava/lang/Object;

    .line 694
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 699
    :cond_1
    iget-object p4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 700
    sget-object p2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string p3, "already connecting"

    invoke-direct {p0, p2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 701
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 706
    :cond_2
    iget-object p4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 707
    sget-object p2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string p3, "already connected"

    invoke-direct {p0, p2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 708
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 713
    :cond_3
    invoke-direct {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 717
    iget-object p4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p4, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p4

    .line 719
    iget-object p5, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v5, 0x2

    invoke-virtual {p4, p5, p3, v1, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p4

    if-nez p4, :cond_4

    const-string p2, "device.connectGatt returned null"

    new-array p3, v4, [Ljava/lang/Object;

    .line 735
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 740
    :cond_4
    iget-object p5, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    .line 744
    iget-object p3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 746
    :cond_5
    iget-object p3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :goto_0
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private locateCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;
    .locals 3

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p4, :cond_1

    move-object p4, p2

    .line 1642
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getServiceFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1644
    new-instance p1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "primary service not found \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v2, "\')"

    if-eqz v0, :cond_3

    .line 1650
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getServiceFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1652
    new-instance p1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "secondary service not found \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' (primary service \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)V

    return-object p1

    :cond_3
    move-object v0, v1

    :cond_4
    if-eqz v0, :cond_5

    move-object p1, v0

    .line 1660
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getCharacteristicFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_6

    .line 1662
    new-instance p1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "characteristic not found in service (chr: \'"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\' svc: \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)V

    return-object p1

    .line 1666
    :cond_6
    new-instance p2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    invoke-direct {p2, p0, p1, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)V

    return-object p2
.end method

.method private log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V
    .locals 3

    .line 2768
    invoke-virtual {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->logLevel:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    invoke-virtual {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 2771
    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$5;->$SwitchMap$com$lib$flutter_blue_plus$FlutterBluePlusPlugin$LogLevel:[I

    invoke-virtual {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "[FBP] "

    const-string v2, "[FBP-Android]"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 2782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2779
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2776
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2773
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private scanCountIncrement(Ljava/lang/String;)I
    .locals 3

    .line 2035
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanCounts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2037
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mScanCounts:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private static scanFailedString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 2933
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_SCAN_ERROR ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "SCAN_FAILED_SCANNING_TOO_FREQUENTLY"

    return-object p0

    :pswitch_1
    const-string p0, "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES"

    return-object p0

    :pswitch_2
    const-string p0, "SCAN_FAILED_FEATURE_UNSUPPORTED"

    return-object p0

    :pswitch_3
    const-string p0, "SCAN_FAILED_INTERNAL_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED"

    return-object p0

    :pswitch_5
    const-string p0, "SCAN_FAILED_ALREADY_STARTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private waitIfBonding()V
    .locals 2

    .line 1606
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBondingDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "[FBP] waiting for bonding to complete..."

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    .line 1610
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 1614
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "[FBP] bonding completed"

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method bmBluetoothCharacteristic(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2645
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 2646
    invoke-virtual {p0, p1, v2, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothDescriptor(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2650
    :cond_0
    invoke-static {p3, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p3

    .line 2653
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "remote_id"

    .line 2654
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "service_uuid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2656
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "characteristic_uuid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "descriptors"

    .line 2657
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmCharacteristicProperties(I)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "properties"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 2660
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method bmBluetoothDescriptor(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattDescriptor;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2669
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p3

    .line 2671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "remote_id"

    .line 2672
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "descriptor_uuid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "characteristic_uuid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "service_uuid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2677
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method bmBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "remote_id"

    .line 2614
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform_name"

    .line 2615
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method bmBluetoothService(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BluetoothGattService;",
            "Landroid/bluetooth/BluetoothGattService;",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2627
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 2628
    invoke-virtual {p0, p1, v2, p4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothCharacteristic(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2632
    :cond_0
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v1, "remote_id"

    .line 2633
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2634
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "service_uuid"

    invoke-virtual {p4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "characteristics"

    .line 2635
    invoke-virtual {p4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 2637
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {p4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p4
.end method

.method bmCharacteristicProperties(I)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2685
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "broadcast"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2686
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "read"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2687
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "write_without_response"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2688
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "write"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 2689
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "notify"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 2690
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "indicate"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 2691
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "authenticated_signed_writes"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 2692
    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "extended_properties"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 2693
    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "notify_encryption_required"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_9

    move v2, v3

    .line 2694
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "indicate_encryption_required"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method bmScanAdvertisement(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/le/ScanResult;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 2550
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    .line 2554
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->isConnectable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2562
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const/high16 v5, -0x80000000

    if-eqz v1, :cond_1

    .line 2563
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getTxPowerLevel()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-eqz v1, :cond_2

    .line 2564
    invoke-virtual {p0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getAppearanceFromScanRecord(Landroid/bluetooth/le/ScanRecord;)I

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 2565
    invoke-virtual {p0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getManufacturerSpecificData(Landroid/bluetooth/le/ScanRecord;)Ljava/util/Map;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v3

    :goto_3
    if-eqz v1, :cond_4

    .line 2566
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v3

    :goto_4
    if-eqz v1, :cond_5

    .line 2567
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v3

    .line 2570
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v8, :cond_6

    .line 2572
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2573
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2578
    :cond_6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_7

    .line 2580
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2581
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .line 2582
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 2583
    invoke-virtual {v13}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bytesToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2588
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_8

    .line 2590
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .line 2591
    invoke-virtual {v13}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2597
    :cond_8
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2598
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    const-string v13, "remote_id"

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2599
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    const-string v13, "platform_name"

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v2, :cond_b

    const/4 v2, 0x1

    .line 2600
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v13, "connectable"

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v4, :cond_c

    const-string v2, "adv_name"

    .line 2601
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eq v6, v5, :cond_d

    const-string v2, "tx_power_level"

    .line 2602
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v7, :cond_e

    const-string v2, "appearance"

    .line 2603
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v8, :cond_f

    const-string v2, "manufacturer_data"

    .line 2604
    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v3, :cond_10

    const-string v1, "service_data"

    .line 2605
    invoke-virtual {v12, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz v9, :cond_11

    const-string v1, "service_uuids"

    .line 2606
    invoke-virtual {v12, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rssi"

    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v12
.end method

.method getAppearanceFromScanRecord(Landroid/bluetooth/le/ScanRecord;)I
    .locals 7

    .line 1782
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x2

    const/16 v3, 0x19

    .line 1784
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-lt v0, v1, :cond_1

    .line 1783
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getAdvertisingDataMap()Ljava/util/Map;

    move-result-object p1

    .line 1784
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 1786
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 1787
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 1788
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p1, v0

    return p1

    :cond_0
    return v5

    .line 1796
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p1

    move v0, v5

    .line 1800
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 1801
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int v4, v0, v1

    .line 1809
    array-length v6, p1

    if-lt v4, v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v0, 0x1

    .line 1813
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne v4, v3, :cond_5

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    add-int/lit8 v1, v0, 0x3

    .line 1822
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v2

    .line 1823
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_6
    :goto_1
    return v5
.end method

.method getManufacturerSpecificData(Landroid/bluetooth/le/ScanRecord;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanRecord;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 1837
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p1

    .line 1838
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1840
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 1848
    aget-byte v3, p1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int v5, v2, v3

    .line 1856
    array-length v6, p1

    if-lt v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 1860
    aget-byte v5, p1, v5

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_3

    add-int/lit8 v5, v2, 0x3

    .line 1867
    aget-byte v5, p1, v5

    and-int/2addr v5, v4

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x2

    .line 1868
    aget-byte v6, p1, v6

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x3

    add-int/lit8 v6, v2, 0x4

    .line 1880
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1882
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1883
    array-length v8, v7

    add-int/2addr v8, v5

    new-array v8, v8, [B

    .line 1885
    array-length v9, v7

    invoke-static {v7, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1886
    array-length v7, v7

    invoke-static {p1, v6, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1887
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1890
    :cond_2
    new-array v7, v5, [B

    .line 1892
    invoke-static {p1, v6, v7, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1893
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const p3, 0x700c1f39

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    .line 1513
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p3, -0x1

    const/4 v1, 0x1

    if-ne p2, p3, :cond_0

    move v0, v1

    .line 1514
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "user_accepted"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "OnTurnOnResponse"

    .line 1516
    invoke-direct {p0, p2, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->invokeMethodUIThread(Ljava/lang/String;Ljava/util/HashMap;)V

    return v1

    :cond_1
    return v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 242
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "onAttachedToActivity"

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 244
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 245
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 191
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "onAttachedToEngine"

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 195
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    .line 197
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "flutter_blue_plus/methods"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 198
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 200
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapterStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothBondStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 265
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "onDetachedFromActivity"

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 251
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "onDetachedFromActivityForConfigChanges"

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4

    .line 210
    sget-object p1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v0, "onDetachedFromEngine"

    invoke-direct {p0, p1, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 212
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "OnDetachedFromEngine"

    invoke-direct {p0, v1, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->invokeMethodUIThread(Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->pluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 217
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v3, "calling stopScan (OnDetachedFromEngine)"

    invoke-direct {p0, v2, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    .line 226
    :cond_0
    invoke-direct {p0, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->disconnectAllDevices(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothBondStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapterStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    .line 232
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 233
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 235
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 236
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 35

    move-object/from16 v13, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    const-string v2, "gatt.writeCharacteristic() returned "

    const-string v3, "gatt.writeDescriptor() returned "

    const-string v4, "gatt.writeDescriptor() returned "

    const-string v5, ":2902:"

    const-string v6, "data longer than allowed. dataLen: "

    const-string v7, "CCCD descriptor for characteristic not found: "

    const-string v8, "data longer than mtu allows. dataLength: "

    const-string v9, "gatt.setCharacteristicNotification("

    const-string v10, "descriptor not found on characteristic. (desc: "

    const-string v11, "descriptor not found on characteristic. (desc: "

    const-string v12, "connectedPeripherals: "

    const-string v15, "connectedPeripherals: "

    move-object/from16 v16, v12

    const-string v12, "onMethodCall: "

    move-object/from16 v17, v15

    .line 289
    :try_start_0
    iget-object v15, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMethodCallMutex:Ljava/util/concurrent/Semaphore;

    invoke-direct {v13, v15}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->acquireMutex(Ljava/util/concurrent/Semaphore;)V

    .line 291
    sget-object v15, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v15, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 294
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 295
    :try_start_1
    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v15, "initializing BluetoothAdapter"

    invoke-direct {v13, v2, v15}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 296
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->context:Landroid/content/Context;

    const-string v15, "bluetooth"

    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    iput-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    goto/16 :goto_18

    .line 302
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, "flutterRestart"

    if-nez v2, :cond_2

    :try_start_3
    iget-object v2, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 303
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "connectedCount"

    iget-object v12, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 304
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "setLogLevel"

    iget-object v12, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 305
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "isSupported"

    iget-object v12, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 306
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "getAdapterName"

    iget-object v12, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 307
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "getAdapterState"

    iget-object v12, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 308
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "bluetoothUnavailable"

    const-string v2, "the device does not support bluetooth"

    const/4 v3, 0x0

    .line 309
    invoke-interface {v14, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1490
    :goto_2
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMethodCallMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 313
    :cond_2
    :try_start_4
    iget-object v2, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v6

    const-string v6, "requestMtu"

    move-object/from16 v20, v11

    const-string v11, "requestConnectionPriority"

    move-object/from16 v21, v4

    const-string v4, "readRssi"

    move-object/from16 v22, v8

    const-string v8, "readDescriptor"

    move-object/from16 v23, v10

    const-string v10, "readCharacteristic"

    move-object/from16 v24, v3

    const-string v3, "setNotifyValue"

    move-object/from16 v25, v5

    const-string v5, "writeCharacteristic"

    move-object/from16 v26, v7

    const-string v7, "writeDescriptor"

    move-object/from16 v27, v9

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    :try_start_5
    const-string v12, "clearGattCache"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1d

    goto/16 :goto_4

    :sswitch_1
    const-string v12, "setOptions"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_4

    :sswitch_2
    const-string v12, "stopScan"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    goto/16 :goto_4

    :sswitch_3
    const-string v12, "connectedCount"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_4

    :sswitch_4
    const-string v12, "discoverServices"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xe

    goto/16 :goto_4

    :sswitch_5
    const-string v12, "createBond"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1b

    goto/16 :goto_4

    :sswitch_6
    const-string v12, "isSupported"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto/16 :goto_4

    :sswitch_7
    const-string v12, "removeBond"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1c

    goto/16 :goto_4

    :sswitch_8
    const-string v12, "connect"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc

    goto/16 :goto_4

    :sswitch_9
    const-string v12, "getBondState"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1a

    goto/16 :goto_4

    :sswitch_a
    const-string v12, "disconnect"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xd

    goto/16 :goto_4

    :sswitch_b
    const-string v12, "getPhySupport"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x17

    goto/16 :goto_4

    :sswitch_c
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x11

    goto/16 :goto_4

    :sswitch_d
    const-string v12, "setPreferredPhy"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x18

    goto/16 :goto_4

    :sswitch_e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x13

    goto/16 :goto_4

    :sswitch_f
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x14

    goto/16 :goto_4

    :sswitch_10
    const-string v12, "getAdapterName"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto/16 :goto_4

    :sswitch_11
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x16

    goto/16 :goto_4

    :sswitch_12
    const-string v12, "setLogLevel"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto/16 :goto_4

    :sswitch_13
    const-string v12, "turnOn"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    goto/16 :goto_4

    :sswitch_14
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x15

    goto :goto_4

    :sswitch_15
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xf

    goto :goto_4

    :sswitch_16
    const-string v12, "turnOff"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_4

    :sswitch_17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    goto :goto_4

    :sswitch_18
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x12

    goto :goto_4

    :sswitch_19
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_1a
    const-string v12, "getBondedDevices"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x19

    goto :goto_4

    :sswitch_1b
    const-string v12, "getAdapterState"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    goto :goto_4

    :sswitch_1c
    const-string v12, "getSystemDevices"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    goto :goto_4

    :sswitch_1d
    const-string v12, "startScan"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v2, -0x1

    :goto_4
    const-string v12, ""

    const-string v9, "primary_service_uuid"

    move-object/from16 v29, v12

    const-string v12, "characteristic_uuid"

    move-object/from16 v30, v15

    const-string v15, "service_uuid"

    move-object/from16 v31, v10

    const-string v10, "android.permission.BLUETOOTH_CONNECT"

    move-object/from16 v32, v10

    const-string v10, ":"

    move-object/from16 v33, v5

    const-string v5, "remote_id"

    move-object/from16 v34, v8

    const-string v8, "device is disconnected"

    packed-switch v2, :pswitch_data_0

    move-object v4, v14

    .line 1478
    :try_start_6
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_16

    .line 1455
    :pswitch_0
    :try_start_7
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1458
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_4

    const-string v1, "clearGattCache"

    const/4 v2, 0x0

    .line 1460
    invoke-interface {v14, v1, v8, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1464
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "refresh"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, "clearGattCache"

    const-string v2, "unsupported on this android version"

    const/4 v3, 0x0

    .line 1466
    invoke-interface {v14, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_5
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1470
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 1472
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1431
    :pswitch_1
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1433
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1436
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 1437
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "already not bonded"

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1438
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1442
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "removeBond"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 1443
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "removeBond"

    const-string v2, "device.removeBond() returned false"

    const/4 v3, 0x0

    .line 1445
    invoke-interface {v14, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_7
    const/4 v1, 0x1

    .line 1449
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1394
    :pswitch_2
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1397
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_8

    const-string v1, "createBond"

    const/4 v2, 0x0

    .line 1399
    invoke-interface {v14, v1, v8, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1403
    :cond_8
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1406
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 1407
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "already bonded"

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1408
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1413
    :cond_9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 1414
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "bonding already in progress"

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1415
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1420
    :cond_a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "createBond"

    const-string v2, "device.createBond() returned false"

    const/4 v3, 0x0

    .line 1421
    invoke-interface {v14, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_b
    const/4 v1, 0x1

    .line 1425
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1377
    :pswitch_3
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1380
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1383
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1384
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bond_state"

    .line 1385
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-static {v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBondStateEnum(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prev_state"

    const/4 v2, 0x0

    .line 1386
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    invoke-interface {v14, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1361
    :pswitch_4
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1365
    invoke-virtual {v13, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1368
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "devices"

    .line 1369
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1336
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1337
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "tx_phy"

    .line 1338
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "rx_phy"

    .line 1339
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "phy_options"

    .line 1340
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1343
    iget-object v5, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_d

    const-string v1, "setPreferredPhy"

    const/4 v2, 0x0

    .line 1345
    invoke-interface {v14, v1, v8, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1350
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1353
    invoke-virtual {v2, v3, v4, v1}, Landroid/bluetooth/BluetoothGatt;->setPreferredPhy(III)V

    const/4 v1, 0x1

    .line 1355
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1318
    :pswitch_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "le_2M"

    .line 1319
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "le_coded"

    .line 1320
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1282
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1283
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "connection_priority"

    .line 1284
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1287
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_e

    const/4 v1, 0x0

    .line 1289
    invoke-interface {v14, v11, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1294
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1296
    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmConnectionPriorityParse(I)I

    move-result v1

    .line 1299
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "gatt.requestConnectionPriority() returned false"

    const/4 v2, 0x0

    .line 1300
    invoke-interface {v14, v11, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_f
    const/4 v1, 0x1

    .line 1304
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1257
    :pswitch_8
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1260
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 1262
    invoke-interface {v14, v4, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1267
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1270
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "gatt.readRemoteRssi() returned false"

    const/4 v2, 0x0

    .line 1271
    invoke-interface {v14, v4, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_11
    const/4 v1, 0x1

    .line 1275
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1231
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1232
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mtu"

    .line 1233
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1236
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_12

    const/4 v1, 0x0

    .line 1238
    invoke-interface {v14, v6, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1243
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1246
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "gatt.requestMtu() returned false"

    const/4 v2, 0x0

    .line 1247
    invoke-interface {v14, v6, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_13
    const/4 v1, 0x1

    .line 1251
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1118
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1119
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1120
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1121
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1122
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "force_indications"

    .line 1123
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v9, "enable"

    .line 1124
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1127
    iget-object v9, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGatt;

    if-nez v9, :cond_14

    const/4 v1, 0x0

    .line 1129
    invoke-interface {v14, v3, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1134
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1137
    invoke-direct {v13, v9, v4, v5, v6}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->locateCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    move-result-object v8

    .line 1138
    iget-object v11, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    if-eqz v11, :cond_15

    .line 1139
    iget-object v1, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1143
    :cond_15
    iget-object v8, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1146
    invoke-virtual {v9, v8, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v11

    if-nez v11, :cond_16

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_16
    const-string v11, "2902"

    .line 1153
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v12

    invoke-direct {v13, v11, v12}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getDescriptorFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v11

    if-nez v11, :cond_17

    .line 1158
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v2, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v1, :cond_1e

    .line 1169
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_6

    :cond_18
    const/4 v1, 0x0

    .line 1170
    :goto_6
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-lez v8, :cond_19

    const/16 v28, 0x1

    goto :goto_7

    :cond_19
    const/16 v28, 0x0

    :goto_7
    if-nez v28, :cond_1a

    if-nez v1, :cond_1a

    const-string v1, "neither NOTIFY nor INDICATE properties are supported by this BLE characteristic"

    const/4 v2, 0x0

    .line 1173
    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_1a
    if-eqz v7, :cond_1b

    if-nez v28, :cond_1b

    const-string v1, "INDICATE not supported by this BLE characteristic"

    const/4 v2, 0x0

    .line 1179
    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_1b
    if-eqz v28, :cond_1c

    .line 1186
    sget-object v8, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_8

    :cond_1c
    const/4 v8, 0x0

    :goto_8
    if-eqz v1, :cond_1d

    .line 1187
    sget-object v8, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :cond_1d
    if-eqz v7, :cond_1f

    .line 1188
    sget-object v8, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_9

    .line 1191
    :cond_1e
    sget-object v8, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    :cond_1f
    :goto_9
    if-nez v6, :cond_20

    move-object/from16 v12, v29

    goto :goto_a

    :cond_20
    move-object v12, v6

    .line 1196
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteDesc:Ljava/util/Map;

    invoke-static {v8}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_22

    .line 1202
    invoke-virtual {v9, v11, v8}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1

    if-eqz v1, :cond_21

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bluetoothStatusString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1205
    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_21
    const/4 v1, 0x1

    goto :goto_b

    .line 1212
    :cond_22
    invoke-virtual {v11, v8}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "cccd.setValue() returned false"

    const/4 v2, 0x0

    .line 1213
    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1218
    :cond_23
    invoke-virtual {v9, v11}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "gatt.writeDescriptor() returned false"

    const/4 v2, 0x0

    .line 1219
    invoke-interface {v14, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1224
    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1037
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1038
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1039
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1040
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "descriptor_uuid"

    .line 1041
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1042
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "value"

    .line 1043
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1046
    iget-object v9, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothGatt;

    if-nez v9, :cond_24

    const/4 v1, 0x0

    .line 1048
    invoke-interface {v14, v7, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1053
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1056
    invoke-direct {v13, v9, v3, v4, v6}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->locateCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    move-result-object v8

    .line 1057
    iget-object v11, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    if-eqz v11, :cond_25

    .line 1058
    iget-object v1, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1062
    :cond_25
    iget-object v8, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1065
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v8

    invoke-direct {v13, v5, v8}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getDescriptorFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v8

    if-nez v8, :cond_26

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1068
    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1073
    :cond_26
    iget-object v11, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMtu:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    .line 1074
    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_27

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1076
    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1077
    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_27
    if-nez v6, :cond_28

    move-object/from16 v12, v29

    goto :goto_c

    :cond_28
    move-object v12, v6

    .line 1083
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1084
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteDesc:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2a

    .line 1089
    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1

    if-eqz v1, :cond_29

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bluetoothStatusString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1092
    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_29
    const/4 v1, 0x1

    goto :goto_d

    .line 1099
    :cond_2a
    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "descriptor.setValue() returned false"

    const/4 v2, 0x0

    .line 1100
    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1105
    :cond_2b
    invoke-virtual {v9, v8}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "gatt.writeDescriptor() returned false"

    const/4 v2, 0x0

    .line 1106
    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1111
    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 990
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 991
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 992
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 993
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "descriptor_uuid"

    .line 994
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 995
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 998
    iget-object v6, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_2c

    move-object/from16 v6, v34

    const/4 v1, 0x0

    .line 1000
    invoke-interface {v14, v6, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_2c
    move-object/from16 v6, v34

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 1008
    invoke-direct {v13, v2, v3, v4, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->locateCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    move-result-object v1

    .line 1009
    iget-object v3, v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 1010
    iget-object v1, v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v14, v6, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1014
    :cond_2d
    iget-object v1, v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1017
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v5, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getDescriptorFromArray(Ljava/lang/String;Ljava/util/List;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1020
    invoke-interface {v14, v7, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1025
    :cond_2e
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "gatt.readDescriptor() returned false"

    const/4 v2, 0x0

    .line 1026
    invoke-interface {v14, v6, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_2f
    const/4 v1, 0x1

    .line 1030
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 892
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 893
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 894
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 895
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 896
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "value"

    .line 897
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "write_type"

    .line 898
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "allow_long_write"

    .line 899
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_30

    const/4 v9, 0x1

    goto :goto_e

    :cond_30
    const/4 v9, 0x0

    :goto_e
    if-nez v7, :cond_31

    const/4 v1, 0x2

    goto :goto_f

    :cond_31
    const/4 v1, 0x1

    .line 906
    :goto_f
    iget-object v11, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothGatt;

    if-nez v11, :cond_32

    move-object/from16 v12, v33

    const/4 v1, 0x0

    .line 908
    invoke-interface {v14, v12, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_32
    move-object/from16 v12, v33

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 916
    invoke-direct {v13, v11, v3, v4, v5}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->locateCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    move-result-object v8

    .line 917
    iget-object v15, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    if-eqz v15, :cond_33

    .line 918
    iget-object v1, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 922
    :cond_33
    iget-object v8, v8, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v15, 0x1

    if-ne v1, v15, :cond_34

    .line 926
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v15

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_35

    const-string v1, "The WRITE_NO_RESPONSE property is not supported by this BLE characteristic"

    const/4 v2, 0x0

    .line 927
    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 932
    :cond_34
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v15

    and-int/lit8 v15, v15, 0x8

    if-nez v15, :cond_35

    const-string v1, "The WRITE property is not supported by this BLE characteristic"

    const/4 v2, 0x0

    .line 933
    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 940
    :cond_35
    invoke-direct {v13, v2, v1, v9}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getMaxPayload(Ljava/lang/String;IZ)I

    move-result v15

    move/from16 v16, v1

    .line 941
    invoke-static {v6}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v15, :cond_39

    if-nez v7, :cond_36

    const-string v2, "withResponse"

    goto :goto_10

    :cond_36
    const-string v2, "withoutResponse"

    :goto_10
    if-nez v7, :cond_38

    if-eqz v9, :cond_37

    const-string v3, ", allowLongWrite"

    goto :goto_11

    :cond_37
    const-string v3, ", noLongWrite"

    goto :goto_11

    :cond_38
    move-object/from16 v3, v29

    .line 945
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > max: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 946
    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_39
    if-nez v5, :cond_3a

    move-object/from16 v5, v29

    .line 952
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mWriteChr:Ljava/util/Map;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_3c

    .line 958
    invoke-static {v6}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    move/from16 v2, v16

    invoke-virtual {v11, v8, v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[BI)I

    move-result v1

    if-eqz v1, :cond_3b

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bluetoothStatusString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 962
    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3b
    const/4 v1, 0x1

    goto :goto_12

    :cond_3c
    move/from16 v2, v16

    .line 968
    invoke-static {v6}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "characteristic.setValue() returned false"

    const/4 v2, 0x0

    .line 969
    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 974
    :cond_3d
    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 977
    invoke-virtual {v11, v8}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "gatt.writeCharacteristic() returned false"

    const/4 v2, 0x0

    .line 978
    invoke-interface {v14, v12, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 983
    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 846
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 847
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 848
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 849
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 850
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 853
    iget-object v5, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_3e

    move-object/from16 v5, v31

    const/4 v1, 0x0

    .line 855
    invoke-interface {v14, v5, v8, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_3e
    move-object/from16 v5, v31

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 863
    invoke-direct {v13, v2, v3, v4, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->locateCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;

    move-result-object v1

    .line 864
    iget-object v3, v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    if-eqz v3, :cond_3f

    .line 865
    iget-object v1, v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v14, v5, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 869
    :cond_3f
    iget-object v1, v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 872
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_40

    const-string v1, "The READ property is not supported by this BLE characteristic"

    const/4 v2, 0x0

    .line 873
    invoke-interface {v14, v5, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 879
    :cond_40
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "gatt.readCharacteristic() returned false"

    const/4 v2, 0x0

    .line 880
    invoke-interface {v14, v5, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_41
    const/4 v1, 0x1

    .line 885
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 821
    :pswitch_f
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 824
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_42

    const-string v1, "discoverServices"

    const/4 v2, 0x0

    .line 826
    invoke-interface {v14, v1, v8, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 831
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->waitIfBonding()V

    .line 834
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "discoverServices"

    const-string v2, "gatt.discoverServices() returned false"

    const/4 v3, 0x0

    .line 835
    invoke-interface {v14, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_43
    const/4 v1, 0x1

    .line 839
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 756
    :pswitch_10
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 761
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_44

    .line 763
    sget-object v3, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v4, "disconnect: cancelling connection in progress"

    invoke-direct {v13, v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    :cond_44
    if-nez v2, :cond_45

    .line 767
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    :cond_45
    if-nez v2, :cond_46

    .line 770
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_46

    .line 772
    sget-object v3, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v4, "already disconnected. disabling autoconnect"

    invoke-direct {v13, v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 773
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 775
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v1, 0x0

    .line 776
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_46
    if-nez v2, :cond_47

    .line 781
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "already disconnected"

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 782
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 788
    :cond_47
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mAutoConnected:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 794
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 797
    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mCurrentlyConnectingDevices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 806
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 807
    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "connection_state"

    const/4 v3, 0x0

    .line 808
    invoke-static {v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmConnectionStateEnum(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disconnect_reason_code"

    const v3, 0x16afeca

    .line 809
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "disconnect_reason_string"

    const-string v3, "connection canceled"

    .line 810
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OnConnectionStateChanged"

    .line 812
    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->invokeMethodUIThread(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_48
    const/4 v1, 0x1

    .line 815
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 674
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 675
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "auto_connect"

    .line 676
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_49

    const/4 v9, 0x1

    goto :goto_13

    :cond_49
    const/4 v9, 0x0

    .line 678
    :goto_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_4a

    move-object/from16 v3, v32

    .line 681
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_4a
    new-instance v3, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda6;

    invoke-direct {v3, v13, v14, v2, v9}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda6;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Z)V

    invoke-direct {v13, v1, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V

    goto/16 :goto_16

    :pswitch_12
    move-object/from16 v3, v32

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 642
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_4b

    .line 643
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_4b
    new-instance v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda5;

    invoke-direct {v2, v13, v14}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda5;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V

    goto/16 :goto_16

    .line 627
    :pswitch_13
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v1, 0x0

    .line 631
    iput-boolean v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    :cond_4c
    const/4 v1, 0x1

    .line 634
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_16

    :pswitch_14
    move-object/from16 v3, v32

    .line 484
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/HashMap;

    const-string v1, "with_services"

    .line 485
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    const-string v1, "with_remote_ids"

    .line 486
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    const-string v1, "with_names"

    .line 487
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    const-string v1, "with_keywords"

    .line 488
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    const-string v1, "with_msd"

    .line 489
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/List;

    const-string v1, "with_service_data"

    .line 490
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    const-string v1, "continuous_updates"

    .line 491
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v1, "android_legacy"

    .line 492
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v1, "android_scan_mode"

    .line 493
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v1, "android_uses_fine_location"

    .line 494
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 496
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 498
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    if-lt v2, v14, :cond_4e

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 499
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4d

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 501
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_4d
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_4e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_4f

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 509
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_4f
    new-instance v14, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda4;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v12}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;IZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-direct {v13, v15, v14}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V

    goto/16 :goto_16

    :pswitch_15
    move-object/from16 v3, v32

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_50

    .line 452
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_51

    const-string v2, "android.permission.BLUETOOTH"

    .line 456
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_51
    new-instance v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda3;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v4, p2

    :try_start_9
    invoke-direct {v2, v13, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V

    goto/16 :goto_16

    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    goto/16 :goto_17

    :pswitch_16
    move-object v4, v14

    move-object/from16 v3, v32

    .line 414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_52

    .line 417
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_53

    const-string v2, "android.permission.BLUETOOTH"

    .line 421
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_53
    new-instance v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v2, v13, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_16

    :pswitch_17
    move-object v4, v14

    .line 401
    :try_start_a
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_14

    :catch_2
    const/4 v1, -0x1

    .line 405
    :goto_14
    :try_start_b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "adapter_state"

    .line 406
    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmAdapterStateEnum(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-interface {v4, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_18
    move-object v4, v14

    move-object/from16 v3, v32

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_54

    .line 380
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_55

    const-string v2, "android.permission.BLUETOOTH"

    .line 384
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_55
    new-instance v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v2, v13, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->ensurePermissions(Ljava/util/List;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;)V

    goto/16 :goto_16

    :pswitch_19
    move-object v4, v14

    .line 371
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_56

    const/4 v9, 0x1

    goto :goto_15

    :cond_56
    const/4 v9, 0x0

    :goto_15
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_1a
    move-object v4, v14

    .line 360
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 363
    invoke-static {}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->values()[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->logLevel:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const/4 v1, 0x1

    .line 365
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_1b
    move-object v4, v14

    .line 350
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 351
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_57

    .line 352
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "Hot Restart: complete"

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 354
    :cond_57
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_16

    :pswitch_1c
    move-object v4, v14

    const/4 v1, 0x1

    .line 344
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_16

    :pswitch_1d
    move-object v4, v14

    .line 318
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_58

    const/4 v2, 0x0

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_16

    .line 324
    :cond_58
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 325
    iget-boolean v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    if-eqz v2, :cond_59

    .line 326
    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v3, "calling stopScan (flutterRestart)"

    invoke-direct {v13, v2, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v1, 0x0

    .line 328
    iput-boolean v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mIsScanning:Z

    :cond_59
    move-object/from16 v1, v30

    .line 333
    invoke-direct {v13, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->disconnectAllDevices(Ljava/lang/String;)V

    .line 335
    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 337
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mConnectedDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_17

    .line 1490
    :goto_16
    iget-object v1, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMethodCallMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_19

    :catch_4
    move-exception v0

    move-object v4, v14

    :goto_17
    move-object v1, v0

    .line 1483
    :goto_18
    :try_start_c
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1484
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1485
    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1486
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidException"

    .line 1487
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 1490
    :goto_19
    iget-object v2, v13, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->mMethodCallMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1491
    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7eeb0201 -> :sswitch_1d
        -0x6cb87408 -> :sswitch_1c
        -0x65758308 -> :sswitch_1b
        -0x64557bdb -> :sswitch_1a
        -0x4f5919ad -> :sswitch_19
        -0x4d900352 -> :sswitch_18
        -0x43640ca6 -> :sswitch_17
        -0x398c784e -> :sswitch_16
        -0x37edd72f -> :sswitch_15
        -0x33b65cf3 -> :sswitch_14
        -0x3367a0c4 -> :sswitch_13
        -0x1278eede -> :sswitch_12
        -0x7b7986f -> :sswitch_11
        -0x34866bc -> :sswitch_10
        0x235fe9f -> :sswitch_f
        0x7d5e9e6 -> :sswitch_e
        0x9acdec2 -> :sswitch_d
        0xc5185a5 -> :sswitch_c
        0x18489b04 -> :sswitch_b
        0x1f9d589c -> :sswitch_a
        0x369c4cd8 -> :sswitch_9
        0x38b478ea -> :sswitch_8
        0x4172c567 -> :sswitch_7
        0x450f16a4 -> :sswitch_6
        0x519471df -> :sswitch_5
        0x6039f367 -> :sswitch_4
        0x6305eb86 -> :sswitch_3
        0x6635719f -> :sswitch_2
        0x66c50fdc -> :sswitch_1
        0x71ed9afb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 258
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "onReattachedToActivityForConfigChanges"

    invoke-direct {p0, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->log(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 4

    .line 1535
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->operationsOnPermission:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;

    .line 1536
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->operationsOnPermission:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 1538
    array-length v1, p3

    if-lez v1, :cond_2

    move v1, p1

    .line 1539
    :goto_0
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 1540
    aget v2, p3, v1

    if-eqz v2, :cond_0

    .line 1541
    aget-object p2, p2, v1

    invoke-interface {v0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;->op(ZLjava/lang/String;)V

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1545
    invoke-interface {v0, v3, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$OperationOnPermission;->op(ZLjava/lang/String;)V

    return v3

    :cond_2
    return p1
.end method

.method public uuid128(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 129
    instance-of v0, p1, Ljava/util/UUID;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input must be UUID or String"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "0000%s-0000-1000-8000-00805f9b34fb"

    .line 138
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%s-0000-1000-8000-00805f9b34fb"

    .line 143
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public uuidStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 155
    invoke-virtual {p0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuid128(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0000"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "-0000-1000-8000-00805f9b34fb"

    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    .line 161
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
