.class Ljavax/activation/ObjectDataContentHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private mimeType:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private transferFlavors:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 831
    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 841
    iput-object p2, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    .line 842
    iput-object p3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    .line 843
    iput-object p1, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 0

    .line 891
    iget-object p1, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object p1
.end method

.method public getDCH()Ljavax/activation/DataContentHandler;
    .locals 1

    .line 851
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    return-object v0
.end method

.method public getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 881
    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 882
    :cond_0
    invoke-virtual {p0}, Ljavax/activation/ObjectDataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljavax/activation/ActivationDataFlavor;->equals(Ljavax/activation/ActivationDataFlavor;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 883
    iget-object p1, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object p1

    .line 886
    :cond_1
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

.method public declared-synchronized getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .locals 4

    monitor-enter p0

    .line 859
    :try_start_0
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    if-nez v0, :cond_1

    .line 860
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 861
    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    .line 863
    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 864
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    iget-object v2, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 868
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 900
    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 901
    :cond_0
    instance-of p2, p1, [B

    if-eqz p2, :cond_1

    .line 902
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 903
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 904
    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 905
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    :goto_0
    return-void

    .line 908
    :cond_2
    new-instance p1, Ljavax/activation/UnsupportedDataTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "no object DCH for MIME type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
