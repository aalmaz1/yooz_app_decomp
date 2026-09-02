.class public Lfr/w3blog/zpl/model/element/ZebraNativeZpl;
.super Lfr/w3blog/zpl/model/ZebraElement;
.source "ZebraNativeZpl.java"


# instance fields
.field private zplCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 18
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;->zplCode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;->defaultDrawGraphic:Z

    return-void
.end method


# virtual methods
.method public getZplCode(Lfr/w3blog/zpl/model/PrinterOptions;)Ljava/lang/String;
    .registers 2

    .line 27
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;->zplCode:Ljava/lang/String;

    return-object p1
.end method
