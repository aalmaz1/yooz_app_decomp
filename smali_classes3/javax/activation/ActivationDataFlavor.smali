.class public Ljavax/activation/ActivationDataFlavor;
.super Ljava/lang/Object;
.source "ActivationDataFlavor.java"


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeObject:Ljavax/activation/MimeType;

.field private mimeType:Ljava/lang/String;

.field private representationClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    const-string v0, "application/x-java-serialized-object"

    .line 123
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 125
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 97
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 72
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    .line 145
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    :try_start_0
    const-string p1, "java.io.InputStream"

    .line 147
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljavax/activation/ActivationDataFlavor;)Z
    .locals 1

    .line 199
    iget-object v0, p1, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/activation/ActivationDataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Ljavax/activation/ActivationDataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1

    .line 169
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljavax/activation/MimeType;

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    .line 220
    :cond_0
    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    iget-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    invoke-virtual {p1, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result p1

    return p1

    .line 223
    :catch_0
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method
