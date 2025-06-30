.class Lcom/utils/DeviceAndSystem$1;
.super Ljava/lang/Object;
.source "DeviceAndSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/DeviceAndSystem;->OpenURL(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/DeviceAndSystem;


# direct methods
.method constructor <init>(Lcom/utils/DeviceAndSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/utils/DeviceAndSystem$1;->this$0:Lcom/utils/DeviceAndSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v1, "Unfortunately, the requested url is not available. Please, check your internet connection!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
