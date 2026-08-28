.class public Lcom/otaliastudios/transcoder/validator/WriteAlwaysValidator;
.super Ljava/lang/Object;
.source "WriteAlwaysValidator.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/validator/Validator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/otaliastudios/transcoder/common/TrackStatus;Lcom/otaliastudios/transcoder/common/TrackStatus;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
