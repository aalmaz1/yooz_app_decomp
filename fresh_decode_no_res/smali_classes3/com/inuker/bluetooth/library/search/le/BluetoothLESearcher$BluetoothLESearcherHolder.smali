.class Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$BluetoothLESearcherHolder;
.super Ljava/lang/Object;
.source "BluetoothLESearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothLESearcherHolder"
.end annotation


# static fields
.field private static instance:Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinstance()Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;
    .locals 1

    sget-object v0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$BluetoothLESearcherHolder;->instance:Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;-><init>(Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher-IA;)V

    sput-object v0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$BluetoothLESearcherHolder;->instance:Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
