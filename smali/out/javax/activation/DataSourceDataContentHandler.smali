.class Ljavax/activation/DataSourceDataContentHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private ds:Ljavax/activation/DataSource;

.field private transferFlavors:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V
    .registers 4

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 761
    iput-object p2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 762
    iput-object p1, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_9

    .line 805
    invoke-interface {v0, p1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 807
    :cond_9
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_9

    .line 794
    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 795
    :cond_9
    invoke-virtual {p0}, Ljavax/activation/DataSourceDataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/activation/ActivationDataFlavor;->equals(Ljavax/activation/ActivationDataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 796
    invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 799
    :cond_1b
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported DataFlavor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .registers 5

    .line 771
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    if-nez v0, :cond_28

    .line 772
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_f

    .line 773
    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    goto :goto_28

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    .line 775
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 776
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    iget-object v2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 777
    invoke-interface {v2}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 778
    invoke-interface {v3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 781
    :cond_28
    :goto_28
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_8

    .line 816
    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void

    .line 818
    :cond_8
    new-instance p1, Ljavax/activation/UnsupportedDataTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "no DCH for content type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 819
    invoke-interface {p3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
