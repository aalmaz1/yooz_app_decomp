.class public Lio/flutter/embedding/engine/FlutterJNI$Factory;
.super Ljava/lang/Object;
.source "FlutterJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;
    .registers 2

    .line 129
    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    return-object v0
.end method
