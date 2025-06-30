.class Lcom/utils/GPlayServiceImageLoader$1;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayServiceImageLoader;->loadImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayServiceImageLoader;

.field final synthetic val$_manager:Lcom/google/android/gms/common/images/ImageManager;

.field final synthetic val$listener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/utils/GPlayServiceImageLoader;Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$uri",
            "val$listener",
            "val$_manager"
        }
    .end annotation

    .line 1094
    iput-object p1, p0, Lcom/utils/GPlayServiceImageLoader$1;->this$0:Lcom/utils/GPlayServiceImageLoader;

    iput-object p2, p0, Lcom/utils/GPlayServiceImageLoader$1;->val$_manager:Lcom/google/android/gms/common/images/ImageManager;

    iput-object p3, p0, Lcom/utils/GPlayServiceImageLoader$1;->val$listener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iput-object p4, p0, Lcom/utils/GPlayServiceImageLoader$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/utils/GPlayServiceImageLoader$1;->val$_manager:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v1, p0, Lcom/utils/GPlayServiceImageLoader$1;->val$listener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/utils/GPlayServiceImageLoader$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPlayService - loadImage exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xgame"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
