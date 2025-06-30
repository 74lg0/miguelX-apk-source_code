.class Lcom/utils/AppRater$2$2;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/AppRater$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/AppRater$2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/utils/AppRater$2;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/utils/AppRater$2$2;->this$1:Lcom/utils/AppRater$2;

    iput-object p2, p0, Lcom/utils/AppRater$2$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 214
    :try_start_0
    iget-object p1, p0, Lcom/utils/AppRater$2$2;->this$1:Lcom/utils/AppRater$2;

    iget-object p1, p1, Lcom/utils/AppRater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/utils/AppRater$2$2;->this$1:Lcom/utils/AppRater$2;

    iget-object p1, p1, Lcom/utils/AppRater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "dontshowagain"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    iget-object p1, p0, Lcom/utils/AppRater$2$2;->this$1:Lcom/utils/AppRater$2;

    iget-object p1, p1, Lcom/utils/AppRater$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/utils/AppRater$2$2;->this$1:Lcom/utils/AppRater$2;

    iget-object p1, p1, Lcom/utils/AppRater$2;->this$0:Lcom/utils/AppRater;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/utils/AppRater;->access$202(Lcom/utils/AppRater;Z)Z

    .line 219
    iget-object p1, p0, Lcom/utils/AppRater$2$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
