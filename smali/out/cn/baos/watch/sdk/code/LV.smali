.class public Lcn/baos/watch/sdk/code/LV;
.super Ljava/lang/Object;
.source "LV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/code/LV$LogHandler;
    }
.end annotation


# static fields
.field public static PRINT_TO_SYSTEM_OUT:Z = false

.field private static final sHandler:Landroid/os/Handler;

.field private static sTextView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1
    const/4 v0, 0x0
    sput-object v0, Lcn/baos/watch/sdk/code/LV;->sHandler:Landroid/os/Handler;
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static logError(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method private static logText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method private static logText(Landroid/widget/TextView;Ljava/lang/String;I)V
    .registers 1
    return-void
.end method

.method public static logText(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static setLogView(Landroid/widget/TextView;)V
    .registers 1
    return-void
.end method
