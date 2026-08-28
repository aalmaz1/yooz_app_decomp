.class final Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannelFactory;
.super Ljava/lang/Object;
.source "UdpDataSourceRtpDataChannelFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;


# instance fields
.field private final socketTimeoutMs:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannelFactory;->socketTimeoutMs:J

    return-void
.end method


# virtual methods
.method public createAndOpenDataChannel(I)Landroidx/media3/exoplayer/rtsp/RtpDataChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance p1, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;

    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannelFactory;->socketTimeoutMs:J

    invoke-direct {p1, v0, v1}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;-><init>(J)V

    .line 39
    new-instance v0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;

    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannelFactory;->socketTimeoutMs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;-><init>(J)V

    const/4 v1, 0x0

    .line 49
    :try_start_f
    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->open(Landroidx/media3/datasource/DataSpec;)J

    .line 50
    invoke-virtual {p1}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->getLocalPort()I

    move-result v2

    .line 51
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_20

    move v1, v4

    :cond_20
    if-eqz v1, :cond_24

    add-int/2addr v2, v4

    goto :goto_25

    :cond_24
    sub-int/2addr v2, v4

    .line 53
    :goto_25
    invoke-static {v2}, Landroidx/media3/exoplayer/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->open(Landroidx/media3/datasource/DataSpec;)J

    if-eqz v1, :cond_32

    .line 56
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->setRtcpChannel(Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;)V

    return-object p1

    .line 59
    :cond_32
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->setRtcpChannel(Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_35} :catch_36

    return-object v0

    :catch_36
    move-exception v1

    .line 63
    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 64
    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 65
    throw v1
.end method

.method public createFallbackDataChannelFactory()Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;
    .registers 4

    .line 71
    new-instance v0, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;

    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannelFactory;->socketTimeoutMs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/rtsp/TransferRtpDataChannelFactory;-><init>(J)V

    return-object v0
.end method
