.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

.field final synthetic val$finalAlpha:F


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;F)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->val$finalAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setFinal(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-static {p1, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->this$1:Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;->val$finalAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
