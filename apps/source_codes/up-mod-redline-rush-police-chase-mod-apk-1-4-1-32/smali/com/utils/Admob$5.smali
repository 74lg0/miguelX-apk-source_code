.class Lcom/utils/Admob$5;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob;->CacheRewarded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/Admob;

.field final synthetic val$adID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/Admob;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adID"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/utils/Admob$5;->this$0:Lcom/utils/Admob;

    iput-object p2, p0, Lcom/utils/Admob$5;->val$adID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "loadAd"

    const/4 v1, 0x0

    .line 322
    :try_start_0
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    .line 324
    sget-object v3, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/utils/Admob$5;->val$adID:Ljava/lang/String;

    new-instance v5, Lcom/utils/Admob$5$1;

    invoke-direct {v5, p0}, Lcom/utils/Admob$5$1;-><init>(Lcom/utils/Admob$5;)V

    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 347
    iget-object v3, p0, Lcom/utils/Admob$5;->this$0:Lcom/utils/Admob;

    invoke-static {v3, v1}, Lcom/utils/Admob;->access$302(Lcom/utils/Admob;Z)Z

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 342
    iget-object v3, p0, Lcom/utils/Admob$5;->this$0:Lcom/utils/Admob;

    invoke-static {v3, v1}, Lcom/utils/Admob;->access$302(Lcom/utils/Admob;Z)Z

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
