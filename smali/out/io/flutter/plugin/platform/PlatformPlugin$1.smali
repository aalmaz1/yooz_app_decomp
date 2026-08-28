.class Lio/flutter/plugin/platform/PlatformPlugin$1;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clipboardHasStrings()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1200(Lio/flutter/plugin/platform/PlatformPlugin;)Z

    move-result v0

    return v0
.end method

.method public getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .registers 3

    .line 139
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    return-void
.end method

.method public popSystemNavigator()V
    .registers 2

    .line 133
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$900(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public restoreSystemUiOverlays()V
    .registers 2

    .line 117
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$600(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public setApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$200(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    return-void
.end method

.method public setClipboardData(Ljava/lang/String;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1100(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V

    return-void
.end method

.method public setFrameworkHandlesBack(Z)V
    .registers 3

    .line 128
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$800(Lio/flutter/plugin/platform/PlatformPlugin;Z)V

    return-void
.end method

.method public setPreferredOrientations(I)V
    .registers 3

    .line 91
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$100(Lio/flutter/plugin/platform/PlatformPlugin;I)V

    return-void
.end method

.method public setSystemUiChangeListener()V
    .registers 2

    .line 112
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$500(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public setSystemUiOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$700(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    return-void
.end method

.method public share(Ljava/lang/String;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V

    return-void
.end method

.method public showSystemOverlays(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/util/List;)V

    return-void
.end method

.method public showSystemUiMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$400(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V

    return-void
.end method

.method public vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V

    return-void
.end method
