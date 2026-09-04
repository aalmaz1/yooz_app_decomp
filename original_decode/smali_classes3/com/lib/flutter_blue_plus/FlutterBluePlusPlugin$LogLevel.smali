.class final enum Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;
.super Ljava/lang/Enum;
.source "FlutterBluePlusPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field public static final enum DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field public static final enum ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field public static final enum INFO:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field public static final enum NONE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field public static final enum VERBOSE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

.field public static final enum WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;


# direct methods
.method private static synthetic $values()[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const/4 v1, 0x0

    .line 3019
    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->NONE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->INFO:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->VERBOSE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3021
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->NONE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 3022
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 3023
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->WARNING:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 3024
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->INFO:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 3025
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 3026
    new-instance v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->VERBOSE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 3019
    invoke-static {}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->$values()[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->$VALUES:[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3019
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;
    .locals 1

    .line 3019
    const-class v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;
    .locals 1

    .line 3019
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->$VALUES:[Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    invoke-virtual {v0}, [Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    return-object v0
.end method
