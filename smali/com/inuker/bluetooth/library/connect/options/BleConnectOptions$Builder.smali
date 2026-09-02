.class public Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;
.super Ljava/lang/Object;
.source "BleConnectOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_CONNECT_RETRY:I = 0x0

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x7530

.field private static final DEFAULT_SERVICE_DISCOVER_RETRY:I = 0x0

.field private static final DEFAULT_SERVICE_DISCOVER_TIMEOUT:I = 0x7530


# instance fields
.field private connectRetry:I

.field private connectTimeout:I

.field private serviceDiscoverRetry:I

.field private serviceDiscoverTimeout:I


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectRetry(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->connectRetry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectTimeout(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->connectTimeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetserviceDiscoverRetry(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->serviceDiscoverRetry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetserviceDiscoverTimeout(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->serviceDiscoverTimeout:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->connectRetry:I

    .line 28
    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->serviceDiscoverRetry:I

    const/16 v0, 0x7530

    .line 30
    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->connectTimeout:I

    .line 32
    iput v0, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->serviceDiscoverTimeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;
    .registers 2

    .line 55
    new-instance v0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;-><init>(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;)V

    return-object v0
.end method

.method public setConnectRetry(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;
    .registers 2

    .line 35
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->connectRetry:I

    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;
    .registers 2

    .line 45
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->connectTimeout:I

    return-object p0
.end method

.method public setServiceDiscoverRetry(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;
    .registers 2

    .line 40
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->serviceDiscoverRetry:I

    return-object p0
.end method

.method public setServiceDiscoverTimeout(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;
    .registers 2

    .line 50
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->serviceDiscoverTimeout:I

    return-object p0
.end method
