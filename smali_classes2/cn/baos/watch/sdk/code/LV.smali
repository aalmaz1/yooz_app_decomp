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
.method static bridge synthetic -$$Nest$sfgetsTextView()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcn/baos/watch/sdk/code/LV;->sTextView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smlogError(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/baos/watch/sdk/code/LV;->logError(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/baos/watch/sdk/code/LV;->logText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcn/baos/watch/sdk/code/LV$LogHandler;

    invoke-direct {v0}, Lcn/baos/watch/sdk/code/LV$LogHandler;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/code/LV;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logError(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, -0x10000

    .line 49
    invoke-static {p0, p1, v0}, Lcn/baos/watch/sdk/code/LV;->logText(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2

    .line 82
    :try_start_0
    sget-boolean v0, Lcn/baos/watch/sdk/code/LV;->PRINT_TO_SYSTEM_OUT:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcn/baos/watch/sdk/code/LV;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static logText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 45
    invoke-static {p0, p1, v0}, Lcn/baos/watch/sdk/code/LV;->logText(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method private static logText(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x800

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "null\n"

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 63
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static logText(Ljava/lang/String;)V
    .locals 2

    .line 73
    sget-boolean v0, Lcn/baos/watch/sdk/code/LV;->PRINT_TO_SYSTEM_OUT:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcn/baos/watch/sdk/code/LV;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public static setLogView(Landroid/widget/TextView;)V
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/baos/watch/sdk/code/LV;->sTextView:Ljava/lang/ref/WeakReference;

    return-void
.end method
