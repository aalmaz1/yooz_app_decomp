.class Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

.field final synthetic val$wrapped:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->val$wrapped:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    invoke-static {p1}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->val$wrapped:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider$1;->val$wrapped:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method
