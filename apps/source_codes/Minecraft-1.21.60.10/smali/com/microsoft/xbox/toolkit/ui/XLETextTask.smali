.class public Lcom/microsoft/xbox/toolkit/ui/XLETextTask;
.super Landroid/os/AsyncTask;
.source "XLETextTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/microsoft/xbox/toolkit/ui/XLETextArg;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XLETextTask"


# instance fields
.field private final img:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final imgHeight:I

.field private final imgWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->img:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgWidth:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgHeight:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/microsoft/xbox/toolkit/ui/XLETextArg;)Landroid/graphics/Bitmap;
    .locals 11

    array-length v0, p1

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getParams()Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getText()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v4

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->isAdjustForImageSize()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgWidth:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->imgHeight:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    :cond_0
    move v5, v3

    move v6, v4

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->hasTextAspectRatio()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getTextAspectRatio()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    int-to-float v8, v6

    int-to-float v9, v5

    mul-float/2addr v9, v7

    cmpl-float v10, v8, v9

    if-lez v10, :cond_1

    div-float/2addr v8, v7

    float-to-int v5, v8

    goto :goto_1

    :cond_1
    float-to-int v6, v9

    :cond_2
    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->hasEraseColor()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;->getEraseColor()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    neg-float v5, v5

    sub-int/2addr v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-virtual {v1, p1, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->doInBackground([Lcom/microsoft/xbox/toolkit/ui/XLETextArg;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->img:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
