.class Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;
.super Ljava/lang/Object;
.source "MusicControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicInfo"
.end annotation


# instance fields
.field private musicName:Ljava/lang/String;

.field private singerName:Ljava/lang/String;

.field final synthetic this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;


# direct methods
.method private constructor <init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;->this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;-><init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V

    return-void
.end method


# virtual methods
.method public getMusicName()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getSingerName()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;->singerName:Ljava/lang/String;

    return-object v0
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setSingerName(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;->singerName:Ljava/lang/String;

    return-void
.end method
