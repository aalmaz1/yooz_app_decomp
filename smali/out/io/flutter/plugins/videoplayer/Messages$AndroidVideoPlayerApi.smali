.class public interface abstract Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AndroidVideoPlayerApi"
.end annotation


# direct methods
.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 684
    sget-object v0, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->INSTANCE:Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 4

    .line 699
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 701
    :try_start_5
    invoke-interface {p0}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->initialize()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 702
    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    .line 704
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 707
    :goto_13
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 721
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 722
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    .line 724
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->create(Lio/flutter/plugins/videoplayer/Messages$CreateMessage;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p0

    .line 725
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 727
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 730
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$10(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 932
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 933
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    .line 935
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->setMixWithOthers(Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;)V

    const/4 p0, 0x0

    .line 936
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 938
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 941
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$2(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 745
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 747
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->dispose(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V

    const/4 p0, 0x0

    .line 748
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 750
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 753
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$3(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 768
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    .line 770
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->setLooping(Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;)V

    const/4 p0, 0x0

    .line 771
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 773
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 776
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$4(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 791
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    .line 793
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->setVolume(Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;)V

    const/4 p0, 0x0

    .line 794
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 796
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 799
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$5(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 816
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    .line 818
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->setPlaybackSpeed(Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;)V

    const/4 p0, 0x0

    .line 819
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 821
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 824
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$6(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 839
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 841
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->play(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V

    const/4 p0, 0x0

    .line 842
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 844
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 847
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$7(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 862
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 864
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->position(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    move-result-object p0

    .line 865
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 867
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 870
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$8(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 884
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 885
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    .line 887
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->seekTo(Lio/flutter/plugins/videoplayer/Messages$PositionMessage;)V

    const/4 p0, 0x0

    .line 888
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 890
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 893
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$9(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 908
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    .line 910
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->pause(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V

    const/4 p0, 0x0

    .line 911
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 913
    invoke-static {p0}, Lio/flutter/plugins/videoplayer/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 916
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V
    .registers 6

    .line 693
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.AndroidVideoPlayerApi.initialize"

    .line 695
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 697
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    .line 710
    :cond_17
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 714
    :goto_1a
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.create"

    .line 716
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_30

    .line 718
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_33

    .line 733
    :cond_30
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 737
    :goto_33
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.dispose"

    .line 739
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_49

    .line 741
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_4c

    .line 756
    :cond_49
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 760
    :goto_4c
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.setLooping"

    .line 762
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_62

    .line 764
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_65

    .line 779
    :cond_62
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 783
    :goto_65
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.setVolume"

    .line 785
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_7b

    .line 787
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_7e

    .line 802
    :cond_7b
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 806
    :goto_7e
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.setPlaybackSpeed"

    .line 810
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_94

    .line 812
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda7;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_97

    .line 827
    :cond_94
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 831
    :goto_97
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.play"

    .line 833
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_ad

    .line 835
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda8;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_b0

    .line 850
    :cond_ad
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 854
    :goto_b0
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.position"

    .line 856
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_c6

    .line 858
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda9;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_c9

    .line 873
    :cond_c6
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 877
    :goto_c9
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.seekTo"

    .line 879
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_df

    .line 881
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda10;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_e2

    .line 896
    :cond_df
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 900
    :goto_e2
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.pause"

    .line 902
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_f8

    .line 904
    new-instance v2, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_fb

    .line 919
    :cond_f8
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 923
    :goto_fb
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.AndroidVideoPlayerApi.setMixWithOthers"

    .line 927
    invoke-static {}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_111

    .line 929
    new-instance p0, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_114

    .line 944
    :cond_111
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_114
    return-void
.end method


# virtual methods
.method public abstract create(Lio/flutter/plugins/videoplayer/Messages$CreateMessage;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
.end method

.method public abstract dispose(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
.end method

.method public abstract initialize()V
.end method

.method public abstract pause(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
.end method

.method public abstract play(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
.end method

.method public abstract position(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
.end method

.method public abstract seekTo(Lio/flutter/plugins/videoplayer/Messages$PositionMessage;)V
.end method

.method public abstract setLooping(Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;)V
.end method

.method public abstract setMixWithOthers(Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;)V
.end method

.method public abstract setPlaybackSpeed(Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;)V
.end method

.method public abstract setVolume(Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;)V
.end method
