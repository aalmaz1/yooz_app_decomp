.class Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;
.super Ljava/lang/Object;
.source "CbtLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagHead"
.end annotation


# instance fields
.field consoleHead:[Ljava/lang/String;

.field fileHead:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->tag:Ljava/lang/String;

    .line 720
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->consoleHead:[Ljava/lang/String;

    .line 721
    iput-object p3, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$TagHead;->fileHead:Ljava/lang/String;

    return-void
.end method
