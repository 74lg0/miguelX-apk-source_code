.class Lcom/utils/Admob$6$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "Admob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/Admob$6;


# direct methods
.method constructor <init>(Lcom/utils/Admob$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/utils/Admob$6$1;->this$1:Lcom/utils/Admob$6;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    const-string v0, "ShowRewarded - onAdDismissedFullScreenContent"

    .line 373
    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/utils/Admob$6$1;->this$1:Lcom/utils/Admob$6;

    iget-object v0, v0, Lcom/utils/Admob$6;->this$0:Lcom/utils/Admob;

    invoke-virtual {v0}, Lcom/utils/Admob;->callAdFinished()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    const-string p1, "ShowRewarded - onAdFailedToShowFullScreenContent"

    .line 379
    invoke-static {p1}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/utils/Admob$6$1;->this$1:Lcom/utils/Admob$6;

    iget-object p1, p1, Lcom/utils/Admob$6;->this$0:Lcom/utils/Admob;

    invoke-virtual {p1}, Lcom/utils/Admob;->callAdFinished()V

    return-void
.end method
