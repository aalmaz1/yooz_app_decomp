.class public Lcom/otaliastudios/transcoder/validator/DefaultValidator;
.super Ljava/lang/Object;
.source "DefaultValidator.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/validator/Validator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/otaliastudios/transcoder/common/TrackStatus;Lcom/otaliastudios/transcoder/common/TrackStatus;)Z
    .registers 5

    .line 15
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_15

    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-ne p2, v0, :cond_a

    goto :goto_15

    .line 22
    :cond_a
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->REMOVING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-eq p1, v0, :cond_15

    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackStatus;->REMOVING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-ne p2, p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    return v1
.end method
