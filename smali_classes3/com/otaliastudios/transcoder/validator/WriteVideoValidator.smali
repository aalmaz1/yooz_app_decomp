.class public Lcom/otaliastudios/transcoder/validator/WriteVideoValidator;
.super Ljava/lang/Object;
.source "WriteVideoValidator.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/otaliastudios/transcoder/common/TrackStatus;Lcom/otaliastudios/transcoder/common/TrackStatus;)Z
    .locals 2

    .line 17
    sget-object p2, Lcom/otaliastudios/transcoder/validator/WriteVideoValidator$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackStatus:[I

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return p2
.end method
