.class Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
