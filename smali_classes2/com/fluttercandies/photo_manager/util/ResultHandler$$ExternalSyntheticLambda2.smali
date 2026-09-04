.class public final synthetic Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->$r8$lambda$eAqeP9NPKjNS4wgyUlNKQ4U64nk(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
