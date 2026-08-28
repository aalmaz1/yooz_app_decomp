.class public Lio/flutter/plugin/platform/PlatformPlugin;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;
    }
.end annotation


# static fields
.field public static final DEFAULT_SYSTEM_UI:I = 0x500

.field private static final TAG:Ljava/lang/String; = "PlatformPlugin"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

.field private mEnabledOverlays:I

.field final mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)V
    .registers 4

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V
    .registers 5

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lio/flutter/plugin/platform/PlatformPlugin$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/PlatformPlugin$1;-><init>(Lio/flutter/plugin/platform/PlatformPlugin;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 166
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 167
    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 168
    invoke-virtual {p2, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->setPlatformMessageHandler(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;)V

    .line 169
    iput-object p3, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    const/16 p1, 0x500

    .line 171
    iput p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugin/platform/PlatformPlugin;I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromePreferredOrientations(I)V

    return-void
.end method

.method static synthetic access$1000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setClipboardData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lio/flutter/plugin/platform/PlatformPlugin;)Z
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->clipboardHasStrings()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->share(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lio/flutter/plugin/platform/PlatformPlugin;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
    .registers 1

    .line 36
    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/util/List;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeEnabledSystemUIOverlays(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeEnabledSystemUIMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeChangeListener()V

    return-void
.end method

.method static synthetic access$600(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->restoreSystemChromeSystemUIOverlays()V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    return-void
.end method

.method static synthetic access$800(Lio/flutter/plugin/platform/PlatformPlugin;Z)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setFrameworkHandlesBack(Z)V

    return-void
.end method

.method static synthetic access$900(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->popSystemNavigator()V

    return-void
.end method

.method private clipboardHasStrings()Z
    .registers 4

    .line 579
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 580
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 584
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    .line 587
    :cond_12
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_19

    return v2

    :cond_19
    const-string v1, "text/*"

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .registers 9

    const-string v0, "PlatformPlugin"

    const-string v1, "Clipboard item contains a Uri with scheme \'"

    .line 506
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v3, "clipboard"

    .line 507
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 509
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_16

    return-object v4

    .line 513
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-nez v2, :cond_1d

    return-object v4

    :cond_1d
    if-eqz p1, :cond_25

    .line 515
    sget-object v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;->PLAIN_TEXT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;

    if-ne p1, v3, :cond_24

    goto :goto_25

    :cond_24
    return-object v4

    :cond_25
    :goto_25
    const/4 p1, 0x0

    .line 516
    invoke-virtual {v2, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 519
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_2e} :catch_88
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2e} :catch_82
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2e} :catch_7b

    if-nez v2, :cond_7a

    .line 523
    :try_start_30
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_3c

    const-string p1, "Clipboard item contained no textual content nor a URI to retrieve it from."

    .line 526
    invoke-static {v0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 532
    :cond_3c
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    .line 534
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'that is unhandled."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 541
    :cond_5f
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 542
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "text/*"

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 546
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_7a

    .line 547
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_76} :catch_88
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_76} :catch_82
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_76} :catch_77

    goto :goto_7a

    :catch_77
    move-exception p1

    move-object v4, v2

    goto :goto_7c

    :cond_7a
    :goto_7a
    return-object v2

    :catch_7b
    move-exception p1

    :goto_7c
    const-string v1, "Failed to close AssetFileDescriptor while trying to read text from URI."

    .line 564
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :catch_82
    const-string p1, "Clipboard text was unable to be received from content URI."

    .line 561
    invoke-static {v0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_88
    move-exception p1

    const-string v1, "Attempted to get clipboard data that requires additional permission(s).\nSee the exception details for which permission(s) are required, and consider adding them to your Android Manifest as described in:\nhttps://developer.android.com/guide/topics/permissions/overview"

    .line 553
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .registers 3

    .line 184
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->CLICK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    if-ne p1, v0, :cond_12

    .line 185
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_12
    return-void
.end method

.method private popSystemNavigator()V
    .registers 3

    .line 493
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;->popSystemNavigator()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 498
    :cond_b
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v1, :cond_1b

    .line 499
    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    goto :goto_1e

    .line 501
    :cond_1b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1e
    return-void
.end method

.method private restoreSystemChromeSystemUIOverlays()V
    .registers 1

    .line 380
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method

.method private setClipboardData(Ljava/lang/String;)V
    .registers 4

    .line 572
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 573
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "text label?"

    .line 574
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 575
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private setFrameworkHandlesBack(Z)V
    .registers 3

    .line 487
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    if-eqz v0, :cond_7

    .line 488
    invoke-interface {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;->setFrameworkHandlesBack(Z)V

    :cond_7
    return-void
.end method

.method private setSystemChromeApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .registers 5

    .line 226
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->label:Ljava/lang/String;

    const/4 v2, 0x0

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->color:I

    invoke-direct {v0, v1, v2, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;II)V

    .line 228
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method private setSystemChromeChangeListener()V
    .registers 3

    .line 234
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 235
    new-instance v1, Lio/flutter/plugin/platform/PlatformPlugin$2;

    invoke-direct {v1, p0, v0}, Lio/flutter/plugin/platform/PlatformPlugin$2;-><init>(Lio/flutter/plugin/platform/PlatformPlugin;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private setSystemChromeEnabledSystemUIMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .registers 3

    .line 269
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->LEAN_BACK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x706

    goto :goto_21

    .line 283
    :cond_7
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_e

    const/16 p1, 0xf06

    goto :goto_21

    .line 298
    :cond_e
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE_STICKY:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_15

    const/16 p1, 0x1706

    goto :goto_21

    .line 312
    :cond_15
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->EDGE_TO_EDGE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_26

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_26

    const/16 p1, 0x700

    .line 328
    :goto_21
    iput p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    .line 329
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    :cond_26
    return-void
.end method

.method private setSystemChromeEnabledSystemUIOverlays(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;",
            ">;)V"
        }
    .end annotation

    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x1706

    goto :goto_b

    :cond_9
    const/16 v0, 0x706

    :goto_b
    const/4 v1, 0x0

    .line 347
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 348
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;

    .line 349
    sget-object v3, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay:[I

    invoke-virtual {v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    goto :goto_2e

    :cond_27
    and-int/lit16 v0, v0, -0x201

    and-int/lit8 v0, v0, -0x3

    goto :goto_2e

    :cond_2c
    and-int/lit8 v0, v0, -0x5

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 360
    :cond_31
    iput v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    .line 361
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method

.method private setSystemChromePreferredOrientations(I)V
    .registers 3

    .line 216
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .registers 10

    .line 386
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 388
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 391
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_1f

    const/high16 v1, -0x80000000

    .line 395
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0xc000000

    .line 400
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 413
    :cond_1f
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3c

    .line 414
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness:[I

    iget-object v6, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    invoke-virtual {v6}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_39

    if-eq v1, v4, :cond_35

    goto :goto_3c

    .line 423
    :cond_35
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    goto :goto_3c

    .line 418
    :cond_39
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 428
    :cond_3c
    :goto_3c
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_49

    .line 429
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 435
    :cond_49
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemStatusBarContrastEnforced:Ljava/lang/Boolean;

    const/16 v6, 0x1d

    if-eqz v1, :cond_5c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_5c

    .line 437
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemStatusBarContrastEnforced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 448
    :cond_5c
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    if-eqz v1, :cond_76

    .line 449
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness:[I

    iget-object v7, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    invoke-virtual {v7}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v5, :cond_73

    if-eq v1, v4, :cond_6f

    goto :goto_76

    .line 458
    :cond_6f
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    goto :goto_76

    .line 453
    :cond_73
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 463
    :cond_76
    :goto_76
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_83

    .line 464
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 468
    :cond_83
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarDividerColor:Ljava/lang/Integer;

    if-eqz v1, :cond_90

    .line 470
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarDividerColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 477
    :cond_90
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarContrastEnforced:Ljava/lang/Boolean;

    if-eqz v1, :cond_a1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_a1

    .line 479
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarContrastEnforced:Ljava/lang/Boolean;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 483
    :cond_a1
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    return-void
.end method

.method private share(Ljava/lang/String;)V
    .registers 4

    .line 595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 597
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 598
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 180
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->setPlatformMessageHandler(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;)V

    return-void
.end method

.method public updateSystemUiOverlays()V
    .registers 3

    .line 373
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 374
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    if-eqz v0, :cond_16

    .line 375
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    :cond_16
    return-void
.end method

.method vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .registers 5

    .line 193
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 194
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType:[I

    invoke-virtual {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_33

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x4

    if-eq p1, v1, :cond_26

    const/4 v2, 0x5

    if-eq p1, v2, :cond_22

    goto :goto_37

    .line 210
    :cond_22
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_37

    :cond_26
    const/4 p1, 0x6

    .line 206
    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_37

    .line 202
    :cond_2b
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_37

    .line 199
    :cond_2f
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_37

    :cond_33
    const/4 p1, 0x0

    .line 196
    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_37
    return-void
.end method
