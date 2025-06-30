.class Lcom/utils/Admob$9;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob;->SetBannerVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/Admob;

.field final synthetic val$fVisible:Z


# direct methods
.method constructor <init>(Lcom/utils/Admob;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fVisible"
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lcom/utils/Admob$9;->this$0:Lcom/utils/Admob;

    iput-boolean p2, p0, Lcom/utils/Admob$9;->val$fVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/utils/Admob$9;->this$0:Lcom/utils/Admob;

    invoke-static {v0}, Lcom/utils/Admob;->access$500(Lcom/utils/Admob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    iget-boolean v0, p0, Lcom/utils/Admob$9;->val$fVisible:Z

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/utils/Admob;->getBannerHeight()F

    move-result v0

    .line 520
    invoke-static {}, Lcom/utils/Admob;->getBannerHeightRatio()F

    move-result v1

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "admob banner height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "dp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/utils/Admob;->access$600()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/utils/Admob$9;->this$0:Lcom/utils/Admob;

    invoke-static {v0}, Lcom/utils/Admob;->access$500(Lcom/utils/Admob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/utils/Admob$9;->this$0:Lcom/utils/Admob;

    invoke-static {v0}, Lcom/utils/Admob;->access$500(Lcom/utils/Admob;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad::SetVisible ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
