.class Lcom/utils/Admob$4$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "Admob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/Admob$4;


# direct methods
.method constructor <init>(Lcom/utils/Admob$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/utils/Admob$4$1;->this$1:Lcom/utils/Admob$4;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/utils/Admob$4$1;->this$1:Lcom/utils/Admob$4;

    iget-object v0, v0, Lcom/utils/Admob$4;->this$0:Lcom/utils/Admob;

    invoke-virtual {v0}, Lcom/utils/Admob;->callAdFinished()V

    const-string v0, "The ad was dismissed."

    .line 279
    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 283
    iget-object p1, p0, Lcom/utils/Admob$4$1;->this$1:Lcom/utils/Admob$4;

    iget-object p1, p1, Lcom/utils/Admob$4;->this$0:Lcom/utils/Admob;

    invoke-virtual {p1}, Lcom/utils/Admob;->callAdFinished()V

    const-string p1, "The ad failed to show."

    .line 284
    invoke-static {p1}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    return-void
.end method
