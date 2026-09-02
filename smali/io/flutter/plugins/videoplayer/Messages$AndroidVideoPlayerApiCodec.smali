.class Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidVideoPlayerApiCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 600
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;-><init>()V

    sput-object v0, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->INSTANCE:Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    packed-switch p1, :pswitch_data_56

    .line 622
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 620
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    move-result-object p1

    return-object p1

    .line 618
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    move-result-object p1

    return-object p1

    .line 616
    :pswitch_1e
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    move-result-object p1

    return-object p1

    .line 614
    :pswitch_29
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    move-result-object p1

    return-object p1

    .line 612
    :pswitch_34
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    move-result-object p1

    return-object p1

    .line 610
    :pswitch_3f
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    move-result-object p1

    return-object p1

    .line 608
    :pswitch_4a
    invoke-virtual {p0, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_56
    .packed-switch -0x80
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .registers 4

    .line 628
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    if-eqz v0, :cond_14

    const/16 v0, 0x80

    .line 629
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 630
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_89

    .line 631
    :cond_14
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    if-eqz v0, :cond_27

    const/16 v0, 0x81

    .line 632
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 633
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 634
    :cond_27
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    if-eqz v0, :cond_3a

    const/16 v0, 0x82

    .line 635
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 636
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 637
    :cond_3a
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    if-eqz v0, :cond_4d

    const/16 v0, 0x83

    .line 638
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 639
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 640
    :cond_4d
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    if-eqz v0, :cond_60

    const/16 v0, 0x84

    .line 641
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 643
    :cond_60
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    if-eqz v0, :cond_73

    const/16 v0, 0x85

    .line 644
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 645
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 646
    :cond_73
    instance-of v0, p2, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    if-eqz v0, :cond_86

    const/16 v0, 0x86

    .line 647
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 648
    check-cast p2, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/videoplayer/Messages$AndroidVideoPlayerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 650
    :cond_86
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_89
    return-void
.end method
