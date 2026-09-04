.class public Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
.super Ljava/lang/Object;
.source "CbtLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private mConsoleFilter:I

.field private mDefaultDir:Ljava/lang/String;

.field private mDir:Ljava/lang/String;

.field private mFileFilter:I

.field private mFilePrefix:Ljava/lang/String;

.field private mGlobalTag:Ljava/lang/String;

.field private mLog2ConsoleSwitch:Z

.field private mLog2FileSwitch:Z

.field private mLogBorderSwitch:Z

.field private mLogHeadSwitch:Z

.field private mLogSwitch:Z

.field private mSingleTagSwitch:Z

.field private mStackDeep:I

.field private mStackOffset:I

.field private mTagIsSpace:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsoleFilter(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I
    .locals 0

    iget p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mConsoleFilter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultDir(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDefaultDir:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDir(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDir:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFileFilter(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I
    .locals 0

    iget p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFileFilter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePrefix(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFilePrefix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalTag(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mGlobalTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog2ConsoleSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2ConsoleSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog2FileSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2FileSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogBorderSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogBorderSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogHeadSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogHeadSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSingleTagSwitch(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mSingleTagSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStackDeep(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I
    .locals 0

    iget p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackDeep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStackOffset(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)I
    .locals 0

    iget p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTagIsSpace(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mTagIsSpace:Z

    return p0
.end method

.method private constructor <init>()V
    .locals 3

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "util"

    .line 587
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFilePrefix:Ljava/lang/String;

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogSwitch:Z

    .line 589
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2ConsoleSwitch:Z

    const/4 v1, 0x0

    .line 590
    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mGlobalTag:Ljava/lang/String;

    .line 591
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mTagIsSpace:Z

    .line 592
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogHeadSwitch:Z

    const/4 v1, 0x0

    .line 593
    iput-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2FileSwitch:Z

    .line 594
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogBorderSwitch:Z

    .line 595
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mSingleTagSwitch:Z

    const/4 v2, 0x2

    .line 596
    iput v2, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mConsoleFilter:I

    .line 597
    iput v2, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFileFilter:I

    .line 598
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackDeep:I

    .line 599
    iput v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackOffset:I

    .line 602
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDefaultDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "mounted"

    .line 603
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "log"

    if-eqz v0, :cond_1

    .line 604
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDefaultDir:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDefaultDir:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;-><init>()V

    return-void
.end method


# virtual methods
.method public setBorderSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 666
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogBorderSwitch:Z

    return-object p0
.end method

.method public setConsoleFilter(I)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 676
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mConsoleFilter:I

    return-object p0
.end method

.method public setConsoleSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 617
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2ConsoleSwitch:Z

    return-object p0
.end method

.method public setDir(Ljava/io/File;)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDir:Ljava/lang/String;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 1

    .line 643
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$smisSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 644
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDir:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetFILE_SEP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDir:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setFileFilter(I)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 681
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFileFilter:I

    return-object p0
.end method

.method public setFilePrefix(Ljava/lang/String;)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 1

    .line 657
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$smisSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "util"

    .line 658
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFilePrefix:Ljava/lang/String;

    goto :goto_0

    .line 660
    :cond_0
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFilePrefix:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 1

    .line 622
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$smisSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 623
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mGlobalTag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 624
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mTagIsSpace:Z

    goto :goto_0

    .line 626
    :cond_0
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mGlobalTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 627
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mTagIsSpace:Z

    :goto_0
    return-object p0
.end method

.method public setLog2FileSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 638
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2FileSwitch:Z

    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 633
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogHeadSwitch:Z

    return-object p0
.end method

.method public setLogSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 612
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogSwitch:Z

    return-object p0
.end method

.method public setSingleTagSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 671
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mSingleTagSwitch:Z

    return-object p0
.end method

.method public setStackDeep(I)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 686
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackDeep:I

    return-object p0
.end method

.method public setStackOffset(I)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;
    .locals 0

    .line 691
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackOffset:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "console: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2ConsoleSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 699
    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mTagIsSpace:Z

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mGlobalTag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogHeadSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLog2FileSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDir:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mDefaultDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filePrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "border: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mLogBorderSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "singleTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mSingleTagSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetT()[C

    move-result-object v1

    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mConsoleFilter:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetT()[C

    move-result-object v1

    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mFileFilter:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stackDeep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackDeep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->-$$Nest$sfgetLINE_SEP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStackOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->mStackOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
