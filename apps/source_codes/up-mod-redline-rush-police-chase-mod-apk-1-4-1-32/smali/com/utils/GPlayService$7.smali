.class Lcom/utils/GPlayService$7;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->signIn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$signInOption:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field final synthetic val$useUIIfNeeded:Z


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;ZLcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$signInOption",
            "val$useUIIfNeeded"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/utils/GPlayService$7;->this$0:Lcom/utils/GPlayService;

    iput-boolean p2, p0, Lcom/utils/GPlayService$7;->val$useUIIfNeeded:Z

    iput-object p3, p0, Lcom/utils/GPlayService$7;->val$signInOption:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 431
    iget-object p1, p0, Lcom/utils/GPlayService$7;->this$0:Lcom/utils/GPlayService;

    invoke-static {p1}, Lcom/utils/GPlayService;->access$200(Lcom/utils/GPlayService;)V

    goto :goto_0

    .line 435
    :cond_0
    iget-boolean p1, p0, Lcom/utils/GPlayService$7;->val$useUIIfNeeded:Z

    if-eqz p1, :cond_1

    const-string p1, "signing in with UI..."

    .line 437
    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/utils/GPlayService$7;->this$0:Lcom/utils/GPlayService;

    iget-object p1, p1, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/utils/GPlayService$7;->val$signInOption:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 440
    iget-object v0, p0, Lcom/utils/GPlayService$7;->this$0:Lcom/utils/GPlayService;

    iget-object v0, v0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x2710

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/utils/GPlayService$7;->this$0:Lcom/utils/GPlayService;

    const/16 v0, 0x63

    invoke-static {p1, v0}, Lcom/utils/GPlayService;->access$302(Lcom/utils/GPlayService;I)I

    .line 445
    iget-object p1, p0, Lcom/utils/GPlayService$7;->this$0:Lcom/utils/GPlayService;

    invoke-static {p1}, Lcom/utils/GPlayService;->access$400(Lcom/utils/GPlayService;)V

    const-string p1, "silent sign in failed and UI signin is not allowed."

    .line 446
    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
