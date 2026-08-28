.class synthetic Landroidx/camera/view/PreviewView$2;
.super Ljava/lang/Object;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$camera$view$PreviewView$ImplementationMode:[I

.field static final synthetic $SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 689
    invoke-static {}, Landroidx/camera/view/PreviewView$ImplementationMode;->values()[Landroidx/camera/view/PreviewView$ImplementationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ImplementationMode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroidx/camera/view/PreviewView$ImplementationMode;->COMPATIBLE:Landroidx/camera/view/PreviewView$ImplementationMode;

    invoke-virtual {v2}, Landroidx/camera/view/PreviewView$ImplementationMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ImplementationMode:[I

    sget-object v3, Landroidx/camera/view/PreviewView$ImplementationMode;->PERFORMANCE:Landroidx/camera/view/PreviewView$ImplementationMode;

    invoke-virtual {v3}, Landroidx/camera/view/PreviewView$ImplementationMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 632
    :catch_1d
    invoke-static {}, Landroidx/camera/view/PreviewView$ScaleType;->values()[Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    :try_start_26
    sget-object v3, Landroidx/camera/view/PreviewView$ScaleType;->FILL_END:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v3}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    sget-object v2, Landroidx/camera/view/PreviewView$ScaleType;->FILL_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v2}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FILL_START:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FIT_END:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    sget-object v1, Landroidx/camera/view/PreviewView$ScaleType;->FIT_START:Landroidx/camera/view/PreviewView$ScaleType;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_64} :catch_64

    :catch_64
    return-void
.end method
