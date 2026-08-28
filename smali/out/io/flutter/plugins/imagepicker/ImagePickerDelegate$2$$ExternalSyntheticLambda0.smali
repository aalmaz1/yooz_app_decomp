.class public final synthetic Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/imagepicker/ImagePickerDelegate$2;->lambda$getFullImagePath$0(Lio/flutter/plugins/imagepicker/ImagePickerDelegate$OnPathReadyListener;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
