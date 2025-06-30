.class Lcom/utils/GPlayServiceImageLoader;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mBitmap:Landroid/graphics/Bitmap;

.field volatile mFinished:Z

.field mManager:Lcom/google/android/gms/common/images/ImageManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p1, p0, Lcom/utils/GPlayServiceImageLoader;->mActivity:Landroid/app/Activity;

    .line 1082
    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/utils/GPlayServiceImageLoader;->mManager:Lcom/google/android/gms/common/images/ImageManager;

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1124
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1125
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1128
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1130
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_2

    move v1, v2

    .line 1133
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1134
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1135
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1136
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method loadImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1089
    :try_start_0
    iput-boolean v0, p0, Lcom/utils/GPlayServiceImageLoader;->mFinished:Z

    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/utils/GPlayServiceImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 1092
    iget-object v0, p0, Lcom/utils/GPlayServiceImageLoader;->mManager:Lcom/google/android/gms/common/images/ImageManager;

    .line 1094
    iget-object v1, p0, Lcom/utils/GPlayServiceImageLoader;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/GPlayServiceImageLoader$1;

    invoke-direct {v2, p0, v0, p0, p1}, Lcom/utils/GPlayServiceImageLoader$1;-><init>(Lcom/utils/GPlayServiceImageLoader;Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1106
    :goto_0
    iget-boolean p1, p0, Lcom/utils/GPlayServiceImageLoader;->mFinished:Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 1107
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPlayService - loadImage exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xgame"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    iget-object p1, p0, Lcom/utils/GPlayServiceImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "drawable",
            "isRequestedDrawable"
        }
    .end annotation

    .line 1119
    invoke-static {p2}, Lcom/utils/GPlayServiceImageLoader;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/utils/GPlayServiceImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 1120
    iput-boolean p1, p0, Lcom/utils/GPlayServiceImageLoader;->mFinished:Z

    return-void
.end method
