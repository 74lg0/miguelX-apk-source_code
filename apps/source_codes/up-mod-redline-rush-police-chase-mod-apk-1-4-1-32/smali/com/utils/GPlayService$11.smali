.class Lcom/utils/GPlayService$11;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->cloudLoadData(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$id"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/utils/GPlayService$11;->this$0:Lcom/utils/GPlayService;

    iput p2, p0, Lcom/utils/GPlayService$11;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/utils/GPlayService$11;->this$0:Lcom/utils/GPlayService;

    iget v1, p0, Lcom/utils/GPlayService$11;->val$id:I

    iput v1, v0, Lcom/utils/GPlayService;->mLastSavedGamesUILoadID:I

    .line 619
    iget-object v0, p0, Lcom/utils/GPlayService$11;->this$0:Lcom/utils/GPlayService;

    iget-object v0, v0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x2713

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings - excp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "intent"
        }
    .end annotation

    .line 613
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/utils/GPlayService$11;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
