.class Lio/flutter/plugins/pathprovider/StorageDirectoryMapper;
.super Ljava/lang/Object;
.source "StorageDirectoryMapper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static androidType(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_20
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-object p0

    .line 41
    :pswitch_23
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    return-object p0

    .line 39
    :pswitch_26
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    return-object p0

    .line 37
    :pswitch_29
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    return-object p0

    .line 35
    :pswitch_2c
    sget-object p0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    return-object p0

    .line 33
    :pswitch_2f
    sget-object p0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    return-object p0

    .line 31
    :pswitch_32
    sget-object p0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    return-object p0

    .line 29
    :pswitch_35
    sget-object p0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object p0

    .line 27
    :pswitch_38
    sget-object p0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    return-object p0

    .line 25
    :pswitch_3b
    sget-object p0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method
