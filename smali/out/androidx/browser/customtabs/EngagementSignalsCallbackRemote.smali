.class final Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;
.super Ljava/lang/Object;
.source "EngagementSignalsCallbackRemote.java"

# interfaces
.implements Landroidx/browser/customtabs/EngagementSignalsCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EngagementSigsCallbkRmt"


# instance fields
.field private final mCallbackBinder:Landroid/support/customtabs/IEngagementSignalsCallback;


# direct methods
.method private constructor <init>(Landroid/support/customtabs/IEngagementSignalsCallback;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;->mCallbackBinder:Landroid/support/customtabs/IEngagementSignalsCallback;

    return-void
.end method

.method static fromBinder(Landroid/os/IBinder;)Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;
    .registers 2

    .line 50
    invoke-static {p0}, Landroid/support/customtabs/IEngagementSignalsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/IEngagementSignalsCallback;

    move-result-object p0

    .line 51
    new-instance v0, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;-><init>(Landroid/support/customtabs/IEngagementSignalsCallback;)V

    return-object v0
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .registers 4

    .line 84
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;->mCallbackBinder:Landroid/support/customtabs/IEngagementSignalsCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IEngagementSignalsCallback;->onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p1, "EngagementSigsCallbkRmt"

    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .registers 4

    .line 101
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;->mCallbackBinder:Landroid/support/customtabs/IEngagementSignalsCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IEngagementSignalsCallback;->onSessionEnded(ZLandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p1, "EngagementSigsCallbkRmt"

    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;->mCallbackBinder:Landroid/support/customtabs/IEngagementSignalsCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/IEngagementSignalsCallback;->onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p1, "EngagementSigsCallbkRmt"

    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method
