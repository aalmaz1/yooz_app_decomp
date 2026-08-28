.class Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImagePickerApiCodec"
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 703
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;

    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;-><init>()V

    sput-object v0, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->INSTANCE:Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 705
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    packed-switch p1, :pswitch_data_56

    .line 725
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_8
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

    move-result-object p1

    return-object p1

    .line 721
    :pswitch_13
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    move-result-object p1

    return-object p1

    .line 719
    :pswitch_1e
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;

    move-result-object p1

    return-object p1

    .line 717
    :pswitch_29
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    move-result-object p1

    return-object p1

    .line 715
    :pswitch_34
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

    move-result-object p1

    return-object p1

    .line 713
    :pswitch_3f
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    move-result-object p1

    return-object p1

    .line 711
    :pswitch_4a
    invoke-virtual {p0, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;->fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

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

    .line 731
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    if-eqz v0, :cond_14

    const/16 v0, 0x80

    .line 732
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 733
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_89

    .line 734
    :cond_14
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    if-eqz v0, :cond_27

    const/16 v0, 0x81

    .line 735
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 736
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 737
    :cond_27
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

    if-eqz v0, :cond_3a

    const/16 v0, 0x82

    .line 738
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 739
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$GeneralOptions;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 740
    :cond_3a
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    if-eqz v0, :cond_4d

    const/16 v0, 0x83

    .line 741
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 742
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 743
    :cond_4d
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;

    if-eqz v0, :cond_60

    const/16 v0, 0x84

    .line 744
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 745
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$MediaSelectionOptions;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 746
    :cond_60
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    if-eqz v0, :cond_73

    const/16 v0, 0x85

    .line 747
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 748
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$SourceSpecification;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 749
    :cond_73
    instance-of v0, p2, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

    if-eqz v0, :cond_86

    const/16 v0, 0x86

    .line 750
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 751
    check-cast p2, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;

    invoke-virtual {p2}, Lio/flutter/plugins/imagepicker/Messages$VideoSelectionOptions;->toList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/imagepicker/Messages$ImagePickerApiCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_89

    .line 753
    :cond_86
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_89
    return-void
.end method
