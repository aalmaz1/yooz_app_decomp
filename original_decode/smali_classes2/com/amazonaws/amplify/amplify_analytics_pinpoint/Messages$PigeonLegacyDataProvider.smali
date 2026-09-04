.class public interface abstract Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PigeonLegacyDataProvider"
.end annotation


# direct methods
.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;

    invoke-direct {v1, v0, p2}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;-><init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 102
    invoke-interface {p0, p1, v1}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->getEndpointId(Ljava/lang/String;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V
    .locals 3

    .line 80
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.amplify_analytics_pinpoint.PigeonLegacyDataProvider.getEndpointId"

    .line 82
    invoke-static {}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_0

    .line 84
    new-instance p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$$ExternalSyntheticLambda0;-><init>(Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 105
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract getEndpointId(Ljava/lang/String;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
