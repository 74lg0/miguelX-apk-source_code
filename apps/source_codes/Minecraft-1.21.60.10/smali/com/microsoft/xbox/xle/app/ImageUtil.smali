.class public Lcom/microsoft/xbox/xle/app/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    }
.end annotation


# static fields
.field public static final LARGE_PHONE:I = 0x280

.field public static final LARGE_TABLET:I = 0x320

.field public static final MEDIUM_PHONE:I = 0x12c

.field public static final MEDIUM_TABLET:I = 0x1a8

.field public static final SMALL:I = 0xc8

.field public static final TINY:I = 0x64

.field public static final resizeFormatter:Ljava/lang/String; = "&w=%d&h=%d&format=png"

.field public static final resizeFormatterSizeOnly:Ljava/lang/String; = "&w=%d&h=%d"

.field public static final resizeFormatterWithPadding:Ljava/lang/String; = "&mode=padding&w=%d&h=%d&format=png"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static formatString(Ljava/lang/String;II)Ljava/net/URI;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "images-eds"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "&w="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&h="

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "h="

    const-string v5, "h=[0-9]+"

    const-string v6, "w="

    const-string v7, "w=[0-9]+"

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v5, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "format="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "&w=%d&h=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "&w=%d&h=%d&format=png"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method

.method private static formatURI(Ljava/net/URI;II)Ljava/net/URI;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static getLarge(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x280

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getLarge(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x280

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getLarge3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x2d0

    const/16 v1, 0x438

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getLarge3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x2d0

    const/16 v1, 0x438

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a8

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getMedium(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a8

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x12c

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium2X1(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x1e0

    const/16 v1, 0x10e

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium2X1(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x1e0

    const/16 v1, 0x10e

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x1aa

    const/16 v1, 0x280

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x1aa

    const/16 v1, 0x280

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium4X3(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x232

    const/16 v1, 0x13c

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getMedium4X3(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x232

    const/16 v1, 0x13c

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    const/16 v0, 0xc8

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getSmall(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    const/16 v0, 0xc8

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall2X1(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0xf3

    const/16 v1, 0x89

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall2X1(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0xf3

    const/16 v1, 0x89

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0xd7

    const/16 v1, 0x126

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0xd7

    const/16 v1, 0x126

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall4X3(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x113

    const/16 v1, 0xd8

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getSmall4X3(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x113

    const/16 v1, 0xd8

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getTiny(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny2X1(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x96

    const/16 v1, 0x54

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny2X1(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x96

    const/16 v1, 0x54

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x55

    const/16 v1, 0x78

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x55

    const/16 v1, 0x78

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny4X3(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x78

    const/16 v1, 0x5a

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getTiny4X3(Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    const/16 v0, 0x78

    const/16 v1, 0x5a

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getURI(Ljava/lang/String;II)Ljava/net/URI;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getURI(Ljava/net/URI;II)Ljava/net/URI;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static getUri(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;)Ljava/net/URI;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$1;->$SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium4X3(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall4X3(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny4X3(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUri(Ljava/net/URI;Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;)Ljava/net/URI;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$1;->$SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium4X3(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall4X3(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny4X3(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
