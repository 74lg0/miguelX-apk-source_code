.class synthetic Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;
.super Ljava/lang/Object;
.source "XLEUniversalImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->values()[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->NORMAL:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SANS:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SERIF:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->MONOSPACE:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
